package io.bidmachine.nativead.utils;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.Arrays;
import javax.net.ssl.HandshakeCompletedListener;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/utils/NoSSLv3SocketFactory.class */
public class NoSSLv3SocketFactory extends SSLSocketFactory {
    private final SSLSocketFactory delegate;

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/utils/NoSSLv3SocketFactory$DelegateSSLSocket.class */
    public class DelegateSSLSocket extends SSLSocket {
        final SSLSocket delegate;

        DelegateSSLSocket(SSLSocket sSLSocket) {
            NoSSLv3SocketFactory.this = r4;
            this.delegate = sSLSocket;
        }

        @Override // javax.net.ssl.SSLSocket
        public void addHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
            this.delegate.addHandshakeCompletedListener(handshakeCompletedListener);
        }

        @Override // java.net.Socket
        public void bind(SocketAddress socketAddress) throws IOException {
            this.delegate.bind(socketAddress);
        }

        @Override // java.net.Socket, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (this) {
                this.delegate.close();
            }
        }

        @Override // java.net.Socket
        public void connect(SocketAddress socketAddress) throws IOException {
            this.delegate.connect(socketAddress);
        }

        @Override // java.net.Socket
        public void connect(SocketAddress socketAddress, int i) throws IOException {
            this.delegate.connect(socketAddress, i);
        }

        public boolean equals(Object obj) {
            return this.delegate.equals(obj);
        }

        @Override // java.net.Socket
        public SocketChannel getChannel() {
            return this.delegate.getChannel();
        }

        @Override // javax.net.ssl.SSLSocket
        public boolean getEnableSessionCreation() {
            return this.delegate.getEnableSessionCreation();
        }

        @Override // javax.net.ssl.SSLSocket
        public String[] getEnabledCipherSuites() {
            return this.delegate.getEnabledCipherSuites();
        }

        @Override // javax.net.ssl.SSLSocket
        public String[] getEnabledProtocols() {
            return this.delegate.getEnabledProtocols();
        }

        @Override // java.net.Socket
        public InetAddress getInetAddress() {
            return this.delegate.getInetAddress();
        }

        @Override // java.net.Socket
        public InputStream getInputStream() throws IOException {
            return this.delegate.getInputStream();
        }

        @Override // java.net.Socket
        public boolean getKeepAlive() throws SocketException {
            return this.delegate.getKeepAlive();
        }

        @Override // java.net.Socket
        public InetAddress getLocalAddress() {
            return this.delegate.getLocalAddress();
        }

        @Override // java.net.Socket
        public int getLocalPort() {
            return this.delegate.getLocalPort();
        }

        @Override // java.net.Socket
        public SocketAddress getLocalSocketAddress() {
            return this.delegate.getLocalSocketAddress();
        }

        @Override // javax.net.ssl.SSLSocket
        public boolean getNeedClientAuth() {
            return this.delegate.getNeedClientAuth();
        }

        @Override // java.net.Socket
        public boolean getOOBInline() throws SocketException {
            return this.delegate.getOOBInline();
        }

        @Override // java.net.Socket
        public OutputStream getOutputStream() throws IOException {
            return this.delegate.getOutputStream();
        }

        @Override // java.net.Socket
        public int getPort() {
            return this.delegate.getPort();
        }

        @Override // java.net.Socket
        public int getReceiveBufferSize() throws SocketException {
            int receiveBufferSize;
            synchronized (this) {
                receiveBufferSize = this.delegate.getReceiveBufferSize();
            }
            return receiveBufferSize;
        }

        @Override // java.net.Socket
        public SocketAddress getRemoteSocketAddress() {
            return this.delegate.getRemoteSocketAddress();
        }

        @Override // java.net.Socket
        public boolean getReuseAddress() throws SocketException {
            return this.delegate.getReuseAddress();
        }

        @Override // java.net.Socket
        public int getSendBufferSize() throws SocketException {
            int sendBufferSize;
            synchronized (this) {
                sendBufferSize = this.delegate.getSendBufferSize();
            }
            return sendBufferSize;
        }

        @Override // javax.net.ssl.SSLSocket
        public SSLSession getSession() {
            return this.delegate.getSession();
        }

        @Override // java.net.Socket
        public int getSoLinger() throws SocketException {
            return this.delegate.getSoLinger();
        }

        @Override // java.net.Socket
        public int getSoTimeout() throws SocketException {
            int soTimeout;
            synchronized (this) {
                soTimeout = this.delegate.getSoTimeout();
            }
            return soTimeout;
        }

        @Override // javax.net.ssl.SSLSocket
        public String[] getSupportedCipherSuites() {
            return this.delegate.getSupportedCipherSuites();
        }

        @Override // javax.net.ssl.SSLSocket
        public String[] getSupportedProtocols() {
            return this.delegate.getSupportedProtocols();
        }

        @Override // java.net.Socket
        public boolean getTcpNoDelay() throws SocketException {
            return this.delegate.getTcpNoDelay();
        }

        @Override // java.net.Socket
        public int getTrafficClass() throws SocketException {
            return this.delegate.getTrafficClass();
        }

        @Override // javax.net.ssl.SSLSocket
        public boolean getUseClientMode() {
            return this.delegate.getUseClientMode();
        }

        @Override // javax.net.ssl.SSLSocket
        public boolean getWantClientAuth() {
            return this.delegate.getWantClientAuth();
        }

        @Override // java.net.Socket
        public boolean isBound() {
            return this.delegate.isBound();
        }

        @Override // java.net.Socket
        public boolean isClosed() {
            return this.delegate.isClosed();
        }

        @Override // java.net.Socket
        public boolean isConnected() {
            return this.delegate.isConnected();
        }

        @Override // java.net.Socket
        public boolean isInputShutdown() {
            return this.delegate.isInputShutdown();
        }

        @Override // java.net.Socket
        public boolean isOutputShutdown() {
            return this.delegate.isOutputShutdown();
        }

        @Override // javax.net.ssl.SSLSocket
        public void removeHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
            this.delegate.removeHandshakeCompletedListener(handshakeCompletedListener);
        }

        @Override // java.net.Socket
        public void sendUrgentData(int i) throws IOException {
            this.delegate.sendUrgentData(i);
        }

        @Override // javax.net.ssl.SSLSocket
        public void setEnableSessionCreation(boolean z) {
            this.delegate.setEnableSessionCreation(z);
        }

        @Override // javax.net.ssl.SSLSocket
        public void setEnabledCipherSuites(String[] strArr) {
            this.delegate.setEnabledCipherSuites(strArr);
        }

        @Override // javax.net.ssl.SSLSocket
        public void setEnabledProtocols(String[] strArr) {
            this.delegate.setEnabledProtocols(strArr);
        }

        @Override // java.net.Socket
        public void setKeepAlive(boolean z) throws SocketException {
            this.delegate.setKeepAlive(z);
        }

        @Override // javax.net.ssl.SSLSocket
        public void setNeedClientAuth(boolean z) {
            this.delegate.setNeedClientAuth(z);
        }

        @Override // java.net.Socket
        public void setOOBInline(boolean z) throws SocketException {
            this.delegate.setOOBInline(z);
        }

        @Override // java.net.Socket
        public void setPerformancePreferences(int i, int i2, int i3) {
            this.delegate.setPerformancePreferences(i, i2, i3);
        }

        @Override // java.net.Socket
        public void setReceiveBufferSize(int i) throws SocketException {
            synchronized (this) {
                this.delegate.setReceiveBufferSize(i);
            }
        }

        @Override // java.net.Socket
        public void setReuseAddress(boolean z) throws SocketException {
            this.delegate.setReuseAddress(z);
        }

        @Override // java.net.Socket
        public void setSendBufferSize(int i) throws SocketException {
            synchronized (this) {
                this.delegate.setSendBufferSize(i);
            }
        }

        @Override // java.net.Socket
        public void setSoLinger(boolean z, int i) throws SocketException {
            this.delegate.setSoLinger(z, i);
        }

        @Override // java.net.Socket
        public void setSoTimeout(int i) throws SocketException {
            synchronized (this) {
                this.delegate.setSoTimeout(i);
            }
        }

        @Override // java.net.Socket
        public void setTcpNoDelay(boolean z) throws SocketException {
            this.delegate.setTcpNoDelay(z);
        }

        @Override // java.net.Socket
        public void setTrafficClass(int i) throws SocketException {
            this.delegate.setTrafficClass(i);
        }

        @Override // javax.net.ssl.SSLSocket
        public void setUseClientMode(boolean z) {
            this.delegate.setUseClientMode(z);
        }

        @Override // javax.net.ssl.SSLSocket
        public void setWantClientAuth(boolean z) {
            this.delegate.setWantClientAuth(z);
        }

        @Override // java.net.Socket
        public void shutdownInput() throws IOException {
            this.delegate.shutdownInput();
        }

        @Override // java.net.Socket
        public void shutdownOutput() throws IOException {
            this.delegate.shutdownOutput();
        }

        @Override // javax.net.ssl.SSLSocket
        public void startHandshake() throws IOException {
            this.delegate.startHandshake();
        }

        @Override // javax.net.ssl.SSLSocket, java.net.Socket
        public String toString() {
            return this.delegate.toString();
        }
    }

    /* renamed from: io.bidmachine.nativead.utils.NoSSLv3SocketFactory$a */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/utils/NoSSLv3SocketFactory$a.class */
    public final class C17904a extends DelegateSSLSocket {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private C17904a(SSLSocket sSLSocket) {
            super(sSLSocket);
            NoSSLv3SocketFactory.this = r5;
        }

        @Override // io.bidmachine.nativead.utils.NoSSLv3SocketFactory.DelegateSSLSocket, javax.net.ssl.SSLSocket
        public final void setEnabledProtocols(String[] strArr) {
            String[] strArr2 = strArr;
            if (strArr != null) {
                strArr2 = strArr;
                if (strArr.length == 1) {
                    strArr2 = strArr;
                    if ("SSLv3".equals(strArr[0])) {
                        ArrayList arrayList = new ArrayList(Arrays.asList(this.delegate.getEnabledProtocols()));
                        if (arrayList.size() > 1) {
                            arrayList.remove("SSLv3");
                            System.out.println("Removed SSLv3 from enabled protocols");
                        } else {
                            PrintStream printStream = System.out;
                            printStream.println("SSL stuck with protocol available for " + String.valueOf(arrayList));
                        }
                        strArr2 = (String[]) arrayList.toArray(new String[arrayList.size()]);
                    }
                }
            }
            super.setEnabledProtocols(strArr2);
        }
    }

    public NoSSLv3SocketFactory() {
        this.delegate = HttpsURLConnection.getDefaultSSLSocketFactory();
    }

    public NoSSLv3SocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.delegate = sSLSocketFactory;
    }

    private Socket makeSocketSafe(Socket socket) {
        C17904a c17904a = socket;
        if (socket instanceof SSLSocket) {
            c17904a = new C17904a((SSLSocket) socket);
        }
        return c17904a;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) throws IOException {
        return makeSocketSafe(this.delegate.createSocket(str, i));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        return makeSocketSafe(this.delegate.createSocket(str, i, inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        return makeSocketSafe(this.delegate.createSocket(inetAddress, i));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        return makeSocketSafe(this.delegate.createSocket(inetAddress, i, inetAddress2, i2));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        return makeSocketSafe(this.delegate.createSocket(socket, str, i, z));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return this.delegate.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        return this.delegate.getSupportedCipherSuites();
    }
}
