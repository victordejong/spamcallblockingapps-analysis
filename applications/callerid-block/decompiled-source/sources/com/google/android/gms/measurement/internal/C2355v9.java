package com.google.android.gms.measurement.internal;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.SocketAddress;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.Arrays;
import javax.net.ssl.HandshakeCompletedListener;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
/* renamed from: com.google.android.gms.measurement.internal.v9 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/v9.class */
final class C2355v9 extends SSLSocket {

    /* renamed from: b */
    private final SSLSocket f10452b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2355v9(C2361w9 w9Var, SSLSocket sSLSocket) {
        this.f10452b = sSLSocket;
    }

    @Override // javax.net.ssl.SSLSocket
    public final void addHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
        this.f10452b.addHandshakeCompletedListener(handshakeCompletedListener);
    }

    @Override // java.net.Socket
    public final void bind(SocketAddress socketAddress) {
        this.f10452b.bind(socketAddress);
    }

    @Override // java.net.Socket, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            this.f10452b.close();
        }
    }

    @Override // java.net.Socket
    public final void connect(SocketAddress socketAddress) {
        this.f10452b.connect(socketAddress);
    }

    @Override // java.net.Socket
    public final void connect(SocketAddress socketAddress, int i) {
        this.f10452b.connect(socketAddress, i);
    }

    public final boolean equals(Object obj) {
        return this.f10452b.equals(obj);
    }

    @Override // java.net.Socket
    public final SocketChannel getChannel() {
        return this.f10452b.getChannel();
    }

    @Override // javax.net.ssl.SSLSocket
    public final boolean getEnableSessionCreation() {
        return this.f10452b.getEnableSessionCreation();
    }

    @Override // javax.net.ssl.SSLSocket
    public final String[] getEnabledCipherSuites() {
        return this.f10452b.getEnabledCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocket
    public final String[] getEnabledProtocols() {
        return this.f10452b.getEnabledProtocols();
    }

    @Override // java.net.Socket
    public final InetAddress getInetAddress() {
        return this.f10452b.getInetAddress();
    }

    @Override // java.net.Socket
    public final InputStream getInputStream() {
        return this.f10452b.getInputStream();
    }

    @Override // java.net.Socket
    public final boolean getKeepAlive() {
        return this.f10452b.getKeepAlive();
    }

    @Override // java.net.Socket
    public final InetAddress getLocalAddress() {
        return this.f10452b.getLocalAddress();
    }

    @Override // java.net.Socket
    public final int getLocalPort() {
        return this.f10452b.getLocalPort();
    }

    @Override // java.net.Socket
    public final SocketAddress getLocalSocketAddress() {
        return this.f10452b.getLocalSocketAddress();
    }

    @Override // javax.net.ssl.SSLSocket
    public final boolean getNeedClientAuth() {
        return this.f10452b.getNeedClientAuth();
    }

    @Override // java.net.Socket
    public final boolean getOOBInline() {
        return this.f10452b.getOOBInline();
    }

    @Override // java.net.Socket
    public final OutputStream getOutputStream() {
        return this.f10452b.getOutputStream();
    }

    @Override // java.net.Socket
    public final int getPort() {
        return this.f10452b.getPort();
    }

    @Override // java.net.Socket
    public final int getReceiveBufferSize() {
        int receiveBufferSize;
        synchronized (this) {
            receiveBufferSize = this.f10452b.getReceiveBufferSize();
        }
        return receiveBufferSize;
    }

    @Override // java.net.Socket
    public final SocketAddress getRemoteSocketAddress() {
        return this.f10452b.getRemoteSocketAddress();
    }

    @Override // java.net.Socket
    public final boolean getReuseAddress() {
        return this.f10452b.getReuseAddress();
    }

    @Override // java.net.Socket
    public final int getSendBufferSize() {
        int sendBufferSize;
        synchronized (this) {
            sendBufferSize = this.f10452b.getSendBufferSize();
        }
        return sendBufferSize;
    }

    @Override // javax.net.ssl.SSLSocket
    public final SSLSession getSession() {
        return this.f10452b.getSession();
    }

    @Override // java.net.Socket
    public final int getSoLinger() {
        return this.f10452b.getSoLinger();
    }

    @Override // java.net.Socket
    public final int getSoTimeout() {
        int soTimeout;
        synchronized (this) {
            soTimeout = this.f10452b.getSoTimeout();
        }
        return soTimeout;
    }

    @Override // javax.net.ssl.SSLSocket
    public final String[] getSupportedCipherSuites() {
        return this.f10452b.getSupportedCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocket
    public final String[] getSupportedProtocols() {
        return this.f10452b.getSupportedProtocols();
    }

    @Override // java.net.Socket
    public final boolean getTcpNoDelay() {
        return this.f10452b.getTcpNoDelay();
    }

    @Override // java.net.Socket
    public final int getTrafficClass() {
        return this.f10452b.getTrafficClass();
    }

    @Override // javax.net.ssl.SSLSocket
    public final boolean getUseClientMode() {
        return this.f10452b.getUseClientMode();
    }

    @Override // javax.net.ssl.SSLSocket
    public final boolean getWantClientAuth() {
        return this.f10452b.getWantClientAuth();
    }

    @Override // java.net.Socket
    public final boolean isBound() {
        return this.f10452b.isBound();
    }

    @Override // java.net.Socket
    public final boolean isClosed() {
        return this.f10452b.isClosed();
    }

    @Override // java.net.Socket
    public final boolean isConnected() {
        return this.f10452b.isConnected();
    }

    @Override // java.net.Socket
    public final boolean isInputShutdown() {
        return this.f10452b.isInputShutdown();
    }

    @Override // java.net.Socket
    public final boolean isOutputShutdown() {
        return this.f10452b.isOutputShutdown();
    }

    @Override // javax.net.ssl.SSLSocket
    public final void removeHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
        this.f10452b.removeHandshakeCompletedListener(handshakeCompletedListener);
    }

    @Override // java.net.Socket
    public final void sendUrgentData(int i) {
        this.f10452b.sendUrgentData(i);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setEnableSessionCreation(boolean z) {
        this.f10452b.setEnableSessionCreation(z);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setEnabledCipherSuites(String[] strArr) {
        this.f10452b.setEnabledCipherSuites(strArr);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setEnabledProtocols(String[] strArr) {
        String[] strArr2 = strArr;
        if (strArr != null) {
            strArr2 = strArr;
            if (Arrays.asList(strArr).contains("SSLv3")) {
                ArrayList arrayList = new ArrayList(Arrays.asList(this.f10452b.getEnabledProtocols()));
                if (arrayList.size() > 1) {
                    arrayList.remove("SSLv3");
                }
                strArr2 = (String[]) arrayList.toArray(new String[arrayList.size()]);
            }
        }
        this.f10452b.setEnabledProtocols(strArr2);
    }

    @Override // java.net.Socket
    public final void setKeepAlive(boolean z) {
        this.f10452b.setKeepAlive(z);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setNeedClientAuth(boolean z) {
        this.f10452b.setNeedClientAuth(z);
    }

    @Override // java.net.Socket
    public final void setOOBInline(boolean z) {
        this.f10452b.setOOBInline(z);
    }

    @Override // java.net.Socket
    public final void setPerformancePreferences(int i, int i2, int i3) {
        this.f10452b.setPerformancePreferences(i, i2, i3);
    }

    @Override // java.net.Socket
    public final void setReceiveBufferSize(int i) {
        synchronized (this) {
            this.f10452b.setReceiveBufferSize(i);
        }
    }

    @Override // java.net.Socket
    public final void setReuseAddress(boolean z) {
        this.f10452b.setReuseAddress(z);
    }

    @Override // java.net.Socket
    public final void setSendBufferSize(int i) {
        synchronized (this) {
            this.f10452b.setSendBufferSize(i);
        }
    }

    @Override // java.net.Socket
    public final void setSoLinger(boolean z, int i) {
        this.f10452b.setSoLinger(z, i);
    }

    @Override // java.net.Socket
    public final void setSoTimeout(int i) {
        synchronized (this) {
            this.f10452b.setSoTimeout(i);
        }
    }

    @Override // java.net.Socket
    public final void setTcpNoDelay(boolean z) {
        this.f10452b.setTcpNoDelay(z);
    }

    @Override // java.net.Socket
    public final void setTrafficClass(int i) {
        this.f10452b.setTrafficClass(i);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setUseClientMode(boolean z) {
        this.f10452b.setUseClientMode(z);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setWantClientAuth(boolean z) {
        this.f10452b.setWantClientAuth(z);
    }

    @Override // java.net.Socket
    public final void shutdownInput() {
        this.f10452b.shutdownInput();
    }

    @Override // java.net.Socket
    public final void shutdownOutput() {
        this.f10452b.shutdownOutput();
    }

    @Override // javax.net.ssl.SSLSocket
    public final void startHandshake() {
        this.f10452b.startHandshake();
    }

    @Override // javax.net.ssl.SSLSocket, java.net.Socket
    public final String toString() {
        return this.f10452b.toString();
    }
}
