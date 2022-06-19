package com.google.android.gms.internal.ads;

import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/um0.class */
public final class um0 extends SSLSocketFactory {

    /* renamed from: a */
    final SSLSocketFactory f30669a = (SSLSocketFactory) SSLSocketFactory.getDefault();

    /* renamed from: b */
    final /* synthetic */ vm0 f30670b;

    public um0(vm0 vm0Var) {
        this.f30670b = vm0Var;
    }

    /* renamed from: a */
    private final Socket m10303a(Socket socket) {
        int i;
        int i2;
        i = this.f30670b.f31257v;
        if (i > 0) {
            i2 = this.f30670b.f31257v;
            socket.setReceiveBufferSize(i2);
        }
        this.f30670b.f31258w.add(socket);
        return socket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) {
        Socket createSocket = this.f30669a.createSocket(str, i);
        m10303a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        Socket createSocket = this.f30669a.createSocket(str, i, inetAddress, i2);
        m10303a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) {
        Socket createSocket = this.f30669a.createSocket(inetAddress, i);
        m10303a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        Socket createSocket = this.f30669a.createSocket(inetAddress, i, inetAddress2, i2);
        m10303a(createSocket);
        return createSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i, boolean z) {
        Socket createSocket = this.f30669a.createSocket(socket, str, i, z);
        m10303a(createSocket);
        return createSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.f30669a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.f30669a.getSupportedCipherSuites();
    }
}
