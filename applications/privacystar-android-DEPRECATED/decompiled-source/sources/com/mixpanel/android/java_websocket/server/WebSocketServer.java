package com.mixpanel.android.java_websocket.server;

import android.annotation.SuppressLint;
import com.mixpanel.android.java_websocket.SocketChannelIOHelper;
import com.mixpanel.android.java_websocket.WebSocket;
import com.mixpanel.android.java_websocket.WebSocketAdapter;
import com.mixpanel.android.java_websocket.WebSocketFactory;
import com.mixpanel.android.java_websocket.WebSocketImpl;
import com.mixpanel.android.java_websocket.WrappedByteChannel;
import com.mixpanel.android.java_websocket.drafts.Draft;
import com.mixpanel.android.java_websocket.exceptions.InvalidDataException;
import com.mixpanel.android.java_websocket.framing.Framedata;
import com.mixpanel.android.java_websocket.handshake.ClientHandshake;
import com.mixpanel.android.java_websocket.handshake.Handshakedata;
import com.mixpanel.android.java_websocket.handshake.ServerHandshakeBuilder;
import java.io.IOException;
import java.io.PrintStream;
import java.lang.Thread;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.ClosedByInterruptException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
@SuppressLint({"Assert"})
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/java_websocket/server/WebSocketServer.class */
public abstract class WebSocketServer extends WebSocketAdapter implements Runnable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static int DECODERS = Runtime.getRuntime().availableProcessors();
    private final InetSocketAddress address;
    private BlockingQueue<ByteBuffer> buffers;
    private final Collection<WebSocket> connections;
    private List<WebSocketWorker> decoders;
    private List<Draft> drafts;
    private List<WebSocketImpl> iqueue;
    private volatile AtomicBoolean isclosed;
    private int queueinvokes;
    private AtomicInteger queuesize;
    private Selector selector;
    private Thread selectorthread;
    private ServerSocketChannel server;
    private WebSocketServerFactory wsf;

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/java_websocket/server/WebSocketServer$WebSocketServerFactory.class */
    public interface WebSocketServerFactory extends WebSocketFactory {
        @Override // com.mixpanel.android.java_websocket.WebSocketFactory
        WebSocketImpl createWebSocket(WebSocketAdapter webSocketAdapter, Draft draft, Socket socket);

        @Override // com.mixpanel.android.java_websocket.WebSocketFactory
        WebSocketImpl createWebSocket(WebSocketAdapter webSocketAdapter, List<Draft> list, Socket socket);

        ByteChannel wrapChannel(SocketChannel socketChannel, SelectionKey selectionKey) throws IOException;
    }

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/java_websocket/server/WebSocketServer$WebSocketWorker.class */
    public class WebSocketWorker extends Thread {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private BlockingQueue<WebSocketImpl> iqueue = new LinkedBlockingQueue();

        public WebSocketWorker() {
            setName("WebSocketWorker-" + getId());
            setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.mixpanel.android.java_websocket.server.WebSocketServer.WebSocketWorker.1
                @Override // java.lang.Thread.UncaughtExceptionHandler
                public void uncaughtException(Thread thread, Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(thread, th);
                }
            });
        }

        public void put(WebSocketImpl webSocketImpl) throws InterruptedException {
            this.iqueue.put(webSocketImpl);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            RuntimeException e;
            WebSocketImpl webSocketImpl = null;
            while (true) {
                try {
                    try {
                        webSocketImpl = this.iqueue.take();
                    } catch (RuntimeException e2) {
                        e = e2;
                    }
                    try {
                        ByteBuffer poll = webSocketImpl.inQueue.poll();
                        try {
                            webSocketImpl.decode(poll);
                            WebSocketServer.this.pushBuffer(poll);
                            webSocketImpl = webSocketImpl;
                        } catch (Throwable th) {
                            WebSocketServer.this.pushBuffer(poll);
                            throw th;
                        }
                    } catch (RuntimeException e3) {
                        e = e3;
                        WebSocketServer.this.handleFatal(webSocketImpl, e);
                        return;
                    }
                } catch (InterruptedException e4) {
                    return;
                }
            }
        }
    }

    public WebSocketServer() throws UnknownHostException {
        this(new InetSocketAddress(80), DECODERS, null);
    }

    public WebSocketServer(InetSocketAddress inetSocketAddress) {
        this(inetSocketAddress, DECODERS, null);
    }

    public WebSocketServer(InetSocketAddress inetSocketAddress, int i) {
        this(inetSocketAddress, i, null);
    }

    public WebSocketServer(InetSocketAddress inetSocketAddress, int i, List<Draft> list) {
        this(inetSocketAddress, i, list, new HashSet());
    }

    public WebSocketServer(InetSocketAddress inetSocketAddress, int i, List<Draft> list, Collection<WebSocket> collection) {
        this.isclosed = new AtomicBoolean(false);
        this.queueinvokes = 0;
        this.queuesize = new AtomicInteger(0);
        this.wsf = new DefaultWebSocketServerFactory();
        if (inetSocketAddress == null || i < 1 || collection == null) {
            throw new IllegalArgumentException("address and connectionscontainer must not be null and you need at least 1 decoder");
        }
        if (list == null) {
            this.drafts = Collections.emptyList();
        } else {
            this.drafts = list;
        }
        this.address = inetSocketAddress;
        this.connections = collection;
        this.iqueue = new LinkedList();
        this.decoders = new ArrayList(i);
        this.buffers = new LinkedBlockingQueue();
        for (int i2 = 0; i2 < i; i2++) {
            WebSocketWorker webSocketWorker = new WebSocketWorker();
            this.decoders.add(webSocketWorker);
            webSocketWorker.start();
        }
    }

    public WebSocketServer(InetSocketAddress inetSocketAddress, List<Draft> list) {
        this(inetSocketAddress, DECODERS, list);
    }

    private Socket getSocket(WebSocket webSocket) {
        return ((SocketChannel) ((WebSocketImpl) webSocket).key.channel()).socket();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleFatal(WebSocket webSocket, Exception exc) {
        onError(webSocket, exc);
        try {
            stop();
        } catch (IOException e) {
            onError(null, e);
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            onError(null, e2);
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0054 -> B:12:0x002c). Please submit an issue!!! */
    private void handleIOException(SelectionKey selectionKey, WebSocket webSocket, IOException iOException) {
        SelectableChannel channel;
        if (webSocket != null) {
            webSocket.closeConnection(1006, iOException.getMessage());
        } else if (selectionKey != null && (channel = selectionKey.channel()) != null && channel.isOpen()) {
            try {
                channel.close();
            } catch (IOException e) {
            }
            if (WebSocketImpl.DEBUG) {
                PrintStream printStream = System.out;
                printStream.println("Connection closed because of" + iOException);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pushBuffer(ByteBuffer byteBuffer) throws InterruptedException {
        if (this.buffers.size() <= this.queuesize.intValue()) {
            this.buffers.put(byteBuffer);
        }
    }

    private void queue(WebSocketImpl webSocketImpl) throws InterruptedException {
        if (webSocketImpl.workerThread == null) {
            webSocketImpl.workerThread = this.decoders.get(this.queueinvokes % this.decoders.size());
            this.queueinvokes++;
        }
        webSocketImpl.workerThread.put(webSocketImpl);
    }

    private ByteBuffer takeBuffer() throws InterruptedException {
        return this.buffers.take();
    }

    protected boolean addConnection(WebSocket webSocket) {
        boolean add;
        if (!this.isclosed.get()) {
            synchronized (this.connections) {
                add = this.connections.add(webSocket);
            }
            return add;
        }
        webSocket.close(1001);
        return true;
    }

    protected void allocateBuffers(WebSocket webSocket) throws InterruptedException {
        if (this.queuesize.get() < (this.decoders.size() * 2) + 1) {
            this.queuesize.incrementAndGet();
            this.buffers.put(createBuffer());
        }
    }

    public Collection<WebSocket> connections() {
        return this.connections;
    }

    public ByteBuffer createBuffer() {
        return ByteBuffer.allocate(WebSocketImpl.RCVBUF);
    }

    public InetSocketAddress getAddress() {
        return this.address;
    }

    public List<Draft> getDraft() {
        return Collections.unmodifiableList(this.drafts);
    }

    protected String getFlashSecurityPolicy() {
        return "<cross-domain-policy><allow-access-from domain=\"*\" to-ports=\"" + getPort() + "\" /></cross-domain-policy>";
    }

    @Override // com.mixpanel.android.java_websocket.WebSocketListener
    public InetSocketAddress getLocalSocketAddress(WebSocket webSocket) {
        return (InetSocketAddress) getSocket(webSocket).getLocalSocketAddress();
    }

    public int getPort() {
        int port = getAddress().getPort();
        int i = port;
        if (port == 0) {
            i = port;
            if (this.server != null) {
                i = this.server.socket().getLocalPort();
            }
        }
        return i;
    }

    @Override // com.mixpanel.android.java_websocket.WebSocketListener
    public InetSocketAddress getRemoteSocketAddress(WebSocket webSocket) {
        return (InetSocketAddress) getSocket(webSocket).getRemoteSocketAddress();
    }

    public final WebSocketFactory getWebSocketFactory() {
        return this.wsf;
    }

    public abstract void onClose(WebSocket webSocket, int i, String str, boolean z);

    public void onCloseInitiated(WebSocket webSocket, int i, String str) {
    }

    public void onClosing(WebSocket webSocket, int i, String str, boolean z) {
    }

    protected boolean onConnect(SelectionKey selectionKey) {
        return true;
    }

    public abstract void onError(WebSocket webSocket, Exception exc);

    public void onFragment(WebSocket webSocket, Framedata framedata) {
    }

    public abstract void onMessage(WebSocket webSocket, String str);

    public void onMessage(WebSocket webSocket, ByteBuffer byteBuffer) {
    }

    public abstract void onOpen(WebSocket webSocket, ClientHandshake clientHandshake);

    @Override // com.mixpanel.android.java_websocket.WebSocketListener
    public final void onWebsocketClose(WebSocket webSocket, int i, String str, boolean z) {
        this.selector.wakeup();
        try {
            if (removeConnection(webSocket)) {
                onClose(webSocket, i, str, z);
            }
            try {
                releaseBuffers(webSocket);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        } catch (Throwable th) {
            try {
                releaseBuffers(webSocket);
            } catch (InterruptedException e2) {
                Thread.currentThread().interrupt();
            }
            throw th;
        }
    }

    @Override // com.mixpanel.android.java_websocket.WebSocketListener
    public void onWebsocketCloseInitiated(WebSocket webSocket, int i, String str) {
        onCloseInitiated(webSocket, i, str);
    }

    @Override // com.mixpanel.android.java_websocket.WebSocketListener
    public void onWebsocketClosing(WebSocket webSocket, int i, String str, boolean z) {
        onClosing(webSocket, i, str, z);
    }

    @Override // com.mixpanel.android.java_websocket.WebSocketListener
    public final void onWebsocketError(WebSocket webSocket, Exception exc) {
        onError(webSocket, exc);
    }

    @Override // com.mixpanel.android.java_websocket.WebSocketAdapter, com.mixpanel.android.java_websocket.WebSocketListener
    public ServerHandshakeBuilder onWebsocketHandshakeReceivedAsServer(WebSocket webSocket, Draft draft, ClientHandshake clientHandshake) throws InvalidDataException {
        return super.onWebsocketHandshakeReceivedAsServer(webSocket, draft, clientHandshake);
    }

    @Override // com.mixpanel.android.java_websocket.WebSocketListener
    public final void onWebsocketMessage(WebSocket webSocket, String str) {
        onMessage(webSocket, str);
    }

    @Override // com.mixpanel.android.java_websocket.WebSocketListener
    public final void onWebsocketMessage(WebSocket webSocket, ByteBuffer byteBuffer) {
        onMessage(webSocket, byteBuffer);
    }

    @Override // com.mixpanel.android.java_websocket.WebSocketAdapter, com.mixpanel.android.java_websocket.WebSocketListener
    @Deprecated
    public void onWebsocketMessageFragment(WebSocket webSocket, Framedata framedata) {
        onFragment(webSocket, framedata);
    }

    @Override // com.mixpanel.android.java_websocket.WebSocketListener
    public final void onWebsocketOpen(WebSocket webSocket, Handshakedata handshakedata) {
        if (addConnection(webSocket)) {
            onOpen(webSocket, (ClientHandshake) handshakedata);
        }
    }

    @Override // com.mixpanel.android.java_websocket.WebSocketListener
    public final void onWriteDemand(WebSocket webSocket) {
        WebSocketImpl webSocketImpl = (WebSocketImpl) webSocket;
        try {
            webSocketImpl.key.interestOps(5);
        } catch (CancelledKeyException e) {
            webSocketImpl.outQueue.clear();
        }
        this.selector.wakeup();
    }

    protected void releaseBuffers(WebSocket webSocket) throws InterruptedException {
    }

    protected boolean removeConnection(WebSocket webSocket) {
        boolean remove;
        synchronized (this.connections) {
            remove = this.connections.remove(webSocket);
        }
        if (this.isclosed.get() && this.connections.size() == 0) {
            this.selectorthread.interrupt();
        }
        return remove;
    }

    @Override // java.lang.Runnable
    public void run() {
        SelectionKey selectionKey;
        WebSocketImpl webSocketImpl;
        IOException e;
        Iterator<SelectionKey> it;
        SelectionKey selectionKey2;
        WebSocketImpl webSocketImpl2;
        WebSocketImpl webSocketImpl3;
        synchronized (this) {
            if (this.selectorthread != null) {
                throw new IllegalStateException(getClass().getName() + " can only be started once.");
            }
            this.selectorthread = Thread.currentThread();
            if (!this.isclosed.get()) {
                this.selectorthread.setName("WebsocketSelector" + this.selectorthread.getId());
                try {
                    this.server = ServerSocketChannel.open();
                    this.server.configureBlocking(false);
                    ServerSocket socket = this.server.socket();
                    socket.setReceiveBufferSize(WebSocketImpl.RCVBUF);
                    socket.bind(this.address);
                    this.selector = Selector.open();
                    this.server.register(this.selector, this.server.validOps());
                    while (!this.selectorthread.isInterrupted()) {
                        try {
                            try {
                                try {
                                    try {
                                        try {
                                            try {
                                                this.selector.select();
                                                it = this.selector.selectedKeys().iterator();
                                                selectionKey2 = null;
                                                webSocketImpl2 = null;
                                            } catch (IOException e2) {
                                                e = e2;
                                                webSocketImpl = null;
                                                selectionKey = null;
                                            }
                                        } catch (ClosedByInterruptException e3) {
                                            if (this.decoders != null) {
                                                for (WebSocketWorker webSocketWorker : this.decoders) {
                                                    webSocketWorker.interrupt();
                                                }
                                            }
                                            if (this.server != null) {
                                                try {
                                                    this.server.close();
                                                    return;
                                                } catch (IOException e4) {
                                                    onError(null, e4);
                                                    return;
                                                }
                                            } else {
                                                return;
                                            }
                                        }
                                    } catch (InterruptedException e5) {
                                        if (this.decoders != null) {
                                            for (WebSocketWorker webSocketWorker2 : this.decoders) {
                                                webSocketWorker2.interrupt();
                                            }
                                        }
                                        if (this.server != null) {
                                            try {
                                                this.server.close();
                                                return;
                                            } catch (IOException e6) {
                                                onError(null, e6);
                                                return;
                                            }
                                        } else {
                                            return;
                                        }
                                    } catch (CancelledKeyException e7) {
                                    }
                                    while (true) {
                                        webSocketImpl3 = webSocketImpl2;
                                        try {
                                            if (it.hasNext()) {
                                                SelectionKey next = it.next();
                                                try {
                                                    if (next.isValid()) {
                                                        if (!next.isAcceptable()) {
                                                            webSocketImpl2 = webSocketImpl2;
                                                            if (next.isReadable()) {
                                                                webSocketImpl2 = (WebSocketImpl) next.attachment();
                                                                webSocketImpl = webSocketImpl2;
                                                                try {
                                                                    ByteBuffer takeBuffer = takeBuffer();
                                                                    try {
                                                                        if (!SocketChannelIOHelper.read(takeBuffer, webSocketImpl2, webSocketImpl2.channel)) {
                                                                            pushBuffer(takeBuffer);
                                                                        } else if (takeBuffer.hasRemaining()) {
                                                                            webSocketImpl2.inQueue.put(takeBuffer);
                                                                            queue(webSocketImpl2);
                                                                            it.remove();
                                                                            if ((webSocketImpl2.channel instanceof WrappedByteChannel) && ((WrappedByteChannel) webSocketImpl2.channel).isNeedRead()) {
                                                                                this.iqueue.add(webSocketImpl2);
                                                                            }
                                                                        } else {
                                                                            pushBuffer(takeBuffer);
                                                                        }
                                                                    } catch (IOException e8) {
                                                                        pushBuffer(takeBuffer);
                                                                        webSocketImpl = webSocketImpl2;
                                                                        throw e8;
                                                                        break;
                                                                    }
                                                                } catch (IOException e9) {
                                                                    e = e9;
                                                                    selectionKey = next;
                                                                }
                                                            }
                                                            if (next.isWritable()) {
                                                                WebSocketImpl webSocketImpl4 = (WebSocketImpl) next.attachment();
                                                                if (SocketChannelIOHelper.batch(webSocketImpl4, webSocketImpl4.channel) && next.isValid()) {
                                                                    next.interestOps(1);
                                                                }
                                                                webSocketImpl2 = webSocketImpl4;
                                                            }
                                                        } else if (!onConnect(next)) {
                                                            next.cancel();
                                                        } else {
                                                            SocketChannel accept = this.server.accept();
                                                            accept.configureBlocking(false);
                                                            WebSocketImpl createWebSocket = this.wsf.createWebSocket((WebSocketAdapter) this, this.drafts, accept.socket());
                                                            createWebSocket.key = accept.register(this.selector, 1, createWebSocket);
                                                            createWebSocket.channel = this.wsf.wrapChannel(accept, createWebSocket.key);
                                                            it.remove();
                                                            allocateBuffers(createWebSocket);
                                                        }
                                                    }
                                                    selectionKey2 = next;
                                                } catch (IOException e10) {
                                                    e = e10;
                                                    webSocketImpl = webSocketImpl2;
                                                    selectionKey = next;
                                                }
                                            }
                                        } catch (IOException e11) {
                                            e = e11;
                                            webSocketImpl = webSocketImpl2;
                                            selectionKey = selectionKey2;
                                        }
                                        if (selectionKey != null) {
                                            selectionKey.cancel();
                                        }
                                        handleIOException(selectionKey, webSocketImpl, e);
                                    }
                                    while (!this.iqueue.isEmpty()) {
                                        WebSocketImpl remove = this.iqueue.remove(0);
                                        try {
                                            WrappedByteChannel wrappedByteChannel = (WrappedByteChannel) remove.channel;
                                            ByteBuffer takeBuffer2 = takeBuffer();
                                            try {
                                                if (SocketChannelIOHelper.readMore(takeBuffer2, remove, wrappedByteChannel)) {
                                                    this.iqueue.add(remove);
                                                }
                                                if (takeBuffer2.hasRemaining()) {
                                                    remove.inQueue.put(takeBuffer2);
                                                    queue(remove);
                                                } else {
                                                    pushBuffer(takeBuffer2);
                                                }
                                                webSocketImpl3 = remove;
                                            } catch (IOException e12) {
                                                pushBuffer(takeBuffer2);
                                                throw e12;
                                                break;
                                            }
                                        } catch (IOException e13) {
                                            e = e13;
                                            selectionKey = selectionKey2;
                                            webSocketImpl = remove;
                                        }
                                    }
                                    continue;
                                } catch (IOException e14) {
                                    onError(null, e14);
                                    return;
                                }
                            } catch (RuntimeException e15) {
                                handleFatal(null, e15);
                                if (this.decoders != null) {
                                    for (WebSocketWorker webSocketWorker3 : this.decoders) {
                                        webSocketWorker3.interrupt();
                                    }
                                }
                                if (this.server != null) {
                                    this.server.close();
                                    return;
                                }
                                return;
                            }
                        } catch (Throwable th) {
                            if (this.decoders != null) {
                                for (WebSocketWorker webSocketWorker4 : this.decoders) {
                                    webSocketWorker4.interrupt();
                                }
                            }
                            if (this.server != null) {
                                try {
                                    this.server.close();
                                } catch (IOException e16) {
                                    onError(null, e16);
                                }
                            }
                            throw th;
                        }
                    }
                    if (this.decoders != null) {
                        for (WebSocketWorker webSocketWorker5 : this.decoders) {
                            webSocketWorker5.interrupt();
                        }
                    }
                    if (this.server != null) {
                        this.server.close();
                    }
                } catch (IOException e17) {
                    handleFatal(null, e17);
                }
            }
        }
    }

    public final void setWebSocketFactory(WebSocketServerFactory webSocketServerFactory) {
        this.wsf = webSocketServerFactory;
    }

    public void start() {
        if (this.selectorthread != null) {
            throw new IllegalStateException(getClass().getName() + " can only be started once.");
        }
        new Thread(this).start();
    }

    public void stop() throws IOException, InterruptedException {
        stop(0);
    }

    public void stop(int i) throws InterruptedException {
        ArrayList<WebSocket> arrayList;
        if (this.isclosed.compareAndSet(false, true)) {
            synchronized (this.connections) {
                arrayList = new ArrayList(this.connections);
            }
            for (WebSocket webSocket : arrayList) {
                webSocket.close(1001);
            }
            synchronized (this) {
                if (this.selectorthread != null) {
                    Thread.currentThread();
                    Thread thread = this.selectorthread;
                    if (this.selectorthread != Thread.currentThread()) {
                        if (arrayList.size() > 0) {
                            this.selectorthread.join(i);
                        }
                        this.selectorthread.interrupt();
                        this.selectorthread.join();
                    }
                }
            }
        }
    }
}
