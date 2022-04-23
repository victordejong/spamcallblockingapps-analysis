package com.mixpanel.android.java_websocket.server;

import com.mixpanel.android.java_websocket.SSLSocketChannel2;
import com.mixpanel.android.java_websocket.WebSocketAdapter;
import com.mixpanel.android.java_websocket.WebSocketImpl;
import com.mixpanel.android.java_websocket.drafts.Draft;
import com.mixpanel.android.java_websocket.server.WebSocketServer;
import java.io.IOException;
import java.net.Socket;
import java.nio.channels.ByteChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/java_websocket/server/DefaultSSLWebSocketServerFactory.class */
public class DefaultSSLWebSocketServerFactory implements WebSocketServer.WebSocketServerFactory {
    protected ExecutorService exec;
    protected SSLContext sslcontext;

    public DefaultSSLWebSocketServerFactory(SSLContext sSLContext) {
        this(sSLContext, Executors.newSingleThreadScheduledExecutor());
    }

    public DefaultSSLWebSocketServerFactory(SSLContext sSLContext, ExecutorService executorService) {
        if (sSLContext == null || executorService == null) {
            throw new IllegalArgumentException();
        }
        this.sslcontext = sSLContext;
        this.exec = executorService;
    }

    @Override // com.mixpanel.android.java_websocket.server.WebSocketServer.WebSocketServerFactory, com.mixpanel.android.java_websocket.WebSocketFactory
    public WebSocketImpl createWebSocket(WebSocketAdapter webSocketAdapter, Draft draft, Socket socket) {
        return new WebSocketImpl(webSocketAdapter, draft);
    }

    @Override // com.mixpanel.android.java_websocket.server.WebSocketServer.WebSocketServerFactory, com.mixpanel.android.java_websocket.WebSocketFactory
    public WebSocketImpl createWebSocket(WebSocketAdapter webSocketAdapter, List<Draft> list, Socket socket) {
        return new WebSocketImpl(webSocketAdapter, list);
    }

    @Override // com.mixpanel.android.java_websocket.server.WebSocketServer.WebSocketServerFactory
    public ByteChannel wrapChannel(SocketChannel socketChannel, SelectionKey selectionKey) throws IOException {
        SSLEngine createSSLEngine = this.sslcontext.createSSLEngine();
        createSSLEngine.setUseClientMode(false);
        return new SSLSocketChannel2(socketChannel, createSSLEngine, this.exec, selectionKey);
    }
}
