package com.google.android.gms.measurement.internal;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.SocketAddress;
import java.net.SocketException;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.Arrays;
import javax.net.ssl.HandshakeCompletedListener;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/jv.class */
final class jv extends SSLSocket {

    /* renamed from: a  reason: collision with root package name */
    private final SSLSocket f29917a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jv(jw jwVar, SSLSocket sSLSocket) {
        this.f29917a = sSLSocket;
    }

    @Override // javax.net.ssl.SSLSocket
    public final void addHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
        this.f29917a.addHandshakeCompletedListener(handshakeCompletedListener);
    }

    @Override // java.net.Socket
    public final void bind(SocketAddress socketAddress) throws IOException {
        this.f29917a.bind(socketAddress);
    }

    @Override // java.net.Socket, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this) {
            this.f29917a.close();
        }
    }

    @Override // java.net.Socket
    public final void connect(SocketAddress socketAddress) throws IOException {
        this.f29917a.connect(socketAddress);
    }

    @Override // java.net.Socket
    public final void connect(SocketAddress socketAddress, int i) throws IOException {
        this.f29917a.connect(socketAddress, i);
    }

    public final boolean equals(Object obj) {
        return this.f29917a.equals(obj);
    }

    @Override // java.net.Socket
    public final SocketChannel getChannel() {
        return this.f29917a.getChannel();
    }

    @Override // javax.net.ssl.SSLSocket
    public final boolean getEnableSessionCreation() {
        return this.f29917a.getEnableSessionCreation();
    }

    @Override // javax.net.ssl.SSLSocket
    public final String[] getEnabledCipherSuites() {
        return this.f29917a.getEnabledCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocket
    public final String[] getEnabledProtocols() {
        return this.f29917a.getEnabledProtocols();
    }

    @Override // java.net.Socket
    public final InetAddress getInetAddress() {
        return this.f29917a.getInetAddress();
    }

    @Override // java.net.Socket
    public final InputStream getInputStream() throws IOException {
        return this.f29917a.getInputStream();
    }

    @Override // java.net.Socket
    public final boolean getKeepAlive() throws SocketException {
        return this.f29917a.getKeepAlive();
    }

    @Override // java.net.Socket
    public final InetAddress getLocalAddress() {
        return this.f29917a.getLocalAddress();
    }

    @Override // java.net.Socket
    public final int getLocalPort() {
        return this.f29917a.getLocalPort();
    }

    @Override // java.net.Socket
    public final SocketAddress getLocalSocketAddress() {
        return this.f29917a.getLocalSocketAddress();
    }

    @Override // javax.net.ssl.SSLSocket
    public final boolean getNeedClientAuth() {
        return this.f29917a.getNeedClientAuth();
    }

    @Override // java.net.Socket
    public final boolean getOOBInline() throws SocketException {
        return this.f29917a.getOOBInline();
    }

    @Override // java.net.Socket
    public final OutputStream getOutputStream() throws IOException {
        return this.f29917a.getOutputStream();
    }

    @Override // java.net.Socket
    public final int getPort() {
        return this.f29917a.getPort();
    }

    @Override // java.net.Socket
    public final int getReceiveBufferSize() throws SocketException {
        int receiveBufferSize;
        synchronized (this) {
            receiveBufferSize = this.f29917a.getReceiveBufferSize();
        }
        return receiveBufferSize;
    }

    @Override // java.net.Socket
    public final SocketAddress getRemoteSocketAddress() {
        return this.f29917a.getRemoteSocketAddress();
    }

    @Override // java.net.Socket
    public final boolean getReuseAddress() throws SocketException {
        return this.f29917a.getReuseAddress();
    }

    @Override // java.net.Socket
    public final int getSendBufferSize() throws SocketException {
        int sendBufferSize;
        synchronized (this) {
            sendBufferSize = this.f29917a.getSendBufferSize();
        }
        return sendBufferSize;
    }

    @Override // javax.net.ssl.SSLSocket
    public final SSLSession getSession() {
        return this.f29917a.getSession();
    }

    @Override // java.net.Socket
    public final int getSoLinger() throws SocketException {
        return this.f29917a.getSoLinger();
    }

    @Override // java.net.Socket
    public final int getSoTimeout() throws SocketException {
        int soTimeout;
        synchronized (this) {
            soTimeout = this.f29917a.getSoTimeout();
        }
        return soTimeout;
    }

    @Override // javax.net.ssl.SSLSocket
    public final String[] getSupportedCipherSuites() {
        return this.f29917a.getSupportedCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocket
    public final String[] getSupportedProtocols() {
        return this.f29917a.getSupportedProtocols();
    }

    @Override // java.net.Socket
    public final boolean getTcpNoDelay() throws SocketException {
        return this.f29917a.getTcpNoDelay();
    }

    @Override // java.net.Socket
    public final int getTrafficClass() throws SocketException {
        return this.f29917a.getTrafficClass();
    }

    @Override // javax.net.ssl.SSLSocket
    public final boolean getUseClientMode() {
        return this.f29917a.getUseClientMode();
    }

    @Override // javax.net.ssl.SSLSocket
    public final boolean getWantClientAuth() {
        return this.f29917a.getWantClientAuth();
    }

    @Override // java.net.Socket
    public final boolean isBound() {
        return this.f29917a.isBound();
    }

    @Override // java.net.Socket
    public final boolean isClosed() {
        return this.f29917a.isClosed();
    }

    @Override // java.net.Socket
    public final boolean isConnected() {
        return this.f29917a.isConnected();
    }

    @Override // java.net.Socket
    public final boolean isInputShutdown() {
        return this.f29917a.isInputShutdown();
    }

    @Override // java.net.Socket
    public final boolean isOutputShutdown() {
        return this.f29917a.isOutputShutdown();
    }

    @Override // javax.net.ssl.SSLSocket
    public final void removeHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
        this.f29917a.removeHandshakeCompletedListener(handshakeCompletedListener);
    }

    @Override // java.net.Socket
    public final void sendUrgentData(int i) throws IOException {
        this.f29917a.sendUrgentData(i);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setEnableSessionCreation(boolean z) {
        this.f29917a.setEnableSessionCreation(z);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setEnabledCipherSuites(String[] strArr) {
        this.f29917a.setEnabledCipherSuites(strArr);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setEnabledProtocols(String[] strArr) {
        String[] strArr2 = strArr;
        if (strArr != null) {
            strArr2 = strArr;
            if (Arrays.asList(strArr).contains("SSLv3")) {
                ArrayList arrayList = new ArrayList(Arrays.asList(this.f29917a.getEnabledProtocols()));
                if (arrayList.size() > 1) {
                    arrayList.remove("SSLv3");
                }
                strArr2 = (String[]) arrayList.toArray(new String[arrayList.size()]);
            }
        }
        this.f29917a.setEnabledProtocols(strArr2);
    }

    @Override // java.net.Socket
    public final void setKeepAlive(boolean z) throws SocketException {
        this.f29917a.setKeepAlive(z);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setNeedClientAuth(boolean z) {
        this.f29917a.setNeedClientAuth(z);
    }

    @Override // java.net.Socket
    public final void setOOBInline(boolean z) throws SocketException {
        this.f29917a.setOOBInline(z);
    }

    @Override // java.net.Socket
    public final void setPerformancePreferences(int i, int i2, int i3) {
        this.f29917a.setPerformancePreferences(i, i2, i3);
    }

    @Override // java.net.Socket
    public final void setReceiveBufferSize(int i) throws SocketException {
        synchronized (this) {
            this.f29917a.setReceiveBufferSize(i);
        }
    }

    @Override // java.net.Socket
    public final void setReuseAddress(boolean z) throws SocketException {
        this.f29917a.setReuseAddress(z);
    }

    @Override // java.net.Socket
    public final void setSendBufferSize(int i) throws SocketException {
        synchronized (this) {
            this.f29917a.setSendBufferSize(i);
        }
    }

    @Override // java.net.Socket
    public final void setSoLinger(boolean z, int i) throws SocketException {
        this.f29917a.setSoLinger(z, i);
    }

    @Override // java.net.Socket
    public final void setSoTimeout(int i) throws SocketException {
        synchronized (this) {
            this.f29917a.setSoTimeout(i);
        }
    }

    @Override // java.net.Socket
    public final void setTcpNoDelay(boolean z) throws SocketException {
        this.f29917a.setTcpNoDelay(z);
    }

    @Override // java.net.Socket
    public final void setTrafficClass(int i) throws SocketException {
        this.f29917a.setTrafficClass(i);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setUseClientMode(boolean z) {
        this.f29917a.setUseClientMode(z);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setWantClientAuth(boolean z) {
        this.f29917a.setWantClientAuth(z);
    }

    @Override // java.net.Socket
    public final void shutdownInput() throws IOException {
        this.f29917a.shutdownInput();
    }

    @Override // java.net.Socket
    public final void shutdownOutput() throws IOException {
        this.f29917a.shutdownOutput();
    }

    @Override // javax.net.ssl.SSLSocket
    public final void startHandshake() throws IOException {
        this.f29917a.startHandshake();
    }

    @Override // javax.net.ssl.SSLSocket, java.net.Socket
    public final String toString() {
        return this.f29917a.toString();
    }
}
