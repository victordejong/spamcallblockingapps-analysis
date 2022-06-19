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
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.jy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/jy.class */
public final class C4426jy extends SSLSocket {

    /* renamed from: a */
    private final SSLSocket f19291a;

    public C4426jy(C4427jz c4427jz, SSLSocket sSLSocket) {
        this.f19291a = sSLSocket;
    }

    @Override // javax.net.ssl.SSLSocket
    public final void addHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
        this.f19291a.addHandshakeCompletedListener(handshakeCompletedListener);
    }

    @Override // java.net.Socket
    public final void bind(SocketAddress socketAddress) {
        this.f19291a.bind(socketAddress);
    }

    @Override // java.net.Socket, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            this.f19291a.close();
        }
    }

    @Override // java.net.Socket
    public final void connect(SocketAddress socketAddress) {
        this.f19291a.connect(socketAddress);
    }

    @Override // java.net.Socket
    public final void connect(SocketAddress socketAddress, int i) {
        this.f19291a.connect(socketAddress, i);
    }

    public final boolean equals(Object obj) {
        return this.f19291a.equals(obj);
    }

    @Override // java.net.Socket
    public final SocketChannel getChannel() {
        return this.f19291a.getChannel();
    }

    @Override // javax.net.ssl.SSLSocket
    public final boolean getEnableSessionCreation() {
        return this.f19291a.getEnableSessionCreation();
    }

    @Override // javax.net.ssl.SSLSocket
    public final String[] getEnabledCipherSuites() {
        return this.f19291a.getEnabledCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocket
    public final String[] getEnabledProtocols() {
        return this.f19291a.getEnabledProtocols();
    }

    @Override // java.net.Socket
    public final InetAddress getInetAddress() {
        return this.f19291a.getInetAddress();
    }

    @Override // java.net.Socket
    public final InputStream getInputStream() {
        return this.f19291a.getInputStream();
    }

    @Override // java.net.Socket
    public final boolean getKeepAlive() {
        return this.f19291a.getKeepAlive();
    }

    @Override // java.net.Socket
    public final InetAddress getLocalAddress() {
        return this.f19291a.getLocalAddress();
    }

    @Override // java.net.Socket
    public final int getLocalPort() {
        return this.f19291a.getLocalPort();
    }

    @Override // java.net.Socket
    public final SocketAddress getLocalSocketAddress() {
        return this.f19291a.getLocalSocketAddress();
    }

    @Override // javax.net.ssl.SSLSocket
    public final boolean getNeedClientAuth() {
        return this.f19291a.getNeedClientAuth();
    }

    @Override // java.net.Socket
    public final boolean getOOBInline() {
        return this.f19291a.getOOBInline();
    }

    @Override // java.net.Socket
    public final OutputStream getOutputStream() {
        return this.f19291a.getOutputStream();
    }

    @Override // java.net.Socket
    public final int getPort() {
        return this.f19291a.getPort();
    }

    @Override // java.net.Socket
    public final int getReceiveBufferSize() {
        int receiveBufferSize;
        synchronized (this) {
            receiveBufferSize = this.f19291a.getReceiveBufferSize();
        }
        return receiveBufferSize;
    }

    @Override // java.net.Socket
    public final SocketAddress getRemoteSocketAddress() {
        return this.f19291a.getRemoteSocketAddress();
    }

    @Override // java.net.Socket
    public final boolean getReuseAddress() {
        return this.f19291a.getReuseAddress();
    }

    @Override // java.net.Socket
    public final int getSendBufferSize() {
        int sendBufferSize;
        synchronized (this) {
            sendBufferSize = this.f19291a.getSendBufferSize();
        }
        return sendBufferSize;
    }

    @Override // javax.net.ssl.SSLSocket
    public final SSLSession getSession() {
        return this.f19291a.getSession();
    }

    @Override // java.net.Socket
    public final int getSoLinger() {
        return this.f19291a.getSoLinger();
    }

    @Override // java.net.Socket
    public final int getSoTimeout() {
        int soTimeout;
        synchronized (this) {
            soTimeout = this.f19291a.getSoTimeout();
        }
        return soTimeout;
    }

    @Override // javax.net.ssl.SSLSocket
    public final String[] getSupportedCipherSuites() {
        return this.f19291a.getSupportedCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocket
    public final String[] getSupportedProtocols() {
        return this.f19291a.getSupportedProtocols();
    }

    @Override // java.net.Socket
    public final boolean getTcpNoDelay() {
        return this.f19291a.getTcpNoDelay();
    }

    @Override // java.net.Socket
    public final int getTrafficClass() {
        return this.f19291a.getTrafficClass();
    }

    @Override // javax.net.ssl.SSLSocket
    public final boolean getUseClientMode() {
        return this.f19291a.getUseClientMode();
    }

    @Override // javax.net.ssl.SSLSocket
    public final boolean getWantClientAuth() {
        return this.f19291a.getWantClientAuth();
    }

    @Override // java.net.Socket
    public final boolean isBound() {
        return this.f19291a.isBound();
    }

    @Override // java.net.Socket
    public final boolean isClosed() {
        return this.f19291a.isClosed();
    }

    @Override // java.net.Socket
    public final boolean isConnected() {
        return this.f19291a.isConnected();
    }

    @Override // java.net.Socket
    public final boolean isInputShutdown() {
        return this.f19291a.isInputShutdown();
    }

    @Override // java.net.Socket
    public final boolean isOutputShutdown() {
        return this.f19291a.isOutputShutdown();
    }

    @Override // javax.net.ssl.SSLSocket
    public final void removeHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
        this.f19291a.removeHandshakeCompletedListener(handshakeCompletedListener);
    }

    @Override // java.net.Socket
    public final void sendUrgentData(int i) {
        this.f19291a.sendUrgentData(i);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setEnableSessionCreation(boolean z) {
        this.f19291a.setEnableSessionCreation(z);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setEnabledCipherSuites(String[] strArr) {
        this.f19291a.setEnabledCipherSuites(strArr);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setEnabledProtocols(String[] strArr) {
        String[] strArr2 = strArr;
        if (strArr != null) {
            strArr2 = strArr;
            if (Arrays.asList(strArr).contains("SSLv3")) {
                ArrayList arrayList = new ArrayList(Arrays.asList(this.f19291a.getEnabledProtocols()));
                if (arrayList.size() > 1) {
                    arrayList.remove("SSLv3");
                }
                strArr2 = (String[]) arrayList.toArray(new String[arrayList.size()]);
            }
        }
        this.f19291a.setEnabledProtocols(strArr2);
    }

    @Override // java.net.Socket
    public final void setKeepAlive(boolean z) {
        this.f19291a.setKeepAlive(z);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setNeedClientAuth(boolean z) {
        this.f19291a.setNeedClientAuth(z);
    }

    @Override // java.net.Socket
    public final void setOOBInline(boolean z) {
        this.f19291a.setOOBInline(z);
    }

    @Override // java.net.Socket
    public final void setPerformancePreferences(int i, int i2, int i3) {
        this.f19291a.setPerformancePreferences(i, i2, i3);
    }

    @Override // java.net.Socket
    public final void setReceiveBufferSize(int i) {
        synchronized (this) {
            this.f19291a.setReceiveBufferSize(i);
        }
    }

    @Override // java.net.Socket
    public final void setReuseAddress(boolean z) {
        this.f19291a.setReuseAddress(z);
    }

    @Override // java.net.Socket
    public final void setSendBufferSize(int i) {
        synchronized (this) {
            this.f19291a.setSendBufferSize(i);
        }
    }

    @Override // java.net.Socket
    public final void setSoLinger(boolean z, int i) {
        this.f19291a.setSoLinger(z, i);
    }

    @Override // java.net.Socket
    public final void setSoTimeout(int i) {
        synchronized (this) {
            this.f19291a.setSoTimeout(i);
        }
    }

    @Override // java.net.Socket
    public final void setTcpNoDelay(boolean z) {
        this.f19291a.setTcpNoDelay(z);
    }

    @Override // java.net.Socket
    public final void setTrafficClass(int i) {
        this.f19291a.setTrafficClass(i);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setUseClientMode(boolean z) {
        this.f19291a.setUseClientMode(z);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setWantClientAuth(boolean z) {
        this.f19291a.setWantClientAuth(z);
    }

    @Override // java.net.Socket
    public final void shutdownInput() {
        this.f19291a.shutdownInput();
    }

    @Override // java.net.Socket
    public final void shutdownOutput() {
        this.f19291a.shutdownOutput();
    }

    @Override // javax.net.ssl.SSLSocket
    public final void startHandshake() {
        this.f19291a.startHandshake();
    }

    @Override // javax.net.ssl.SSLSocket, java.net.Socket
    public final String toString() {
        return this.f19291a.toString();
    }
}
