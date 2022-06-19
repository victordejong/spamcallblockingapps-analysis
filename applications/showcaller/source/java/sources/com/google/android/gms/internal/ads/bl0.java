package com.google.android.gms.internal.ads;

import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bl0.class */
public final class bl0 extends SSLSocketFactory {

    /* renamed from: a */
    final SSLSocketFactory f20502a = (SSLSocketFactory) SSLSocketFactory.getDefault();

    /* renamed from: b */
    final /* synthetic */ cl0 f20503b;

    public bl0(cl0 cl0Var) {
        this.f20503b = cl0Var;
    }

    /* renamed from: a */
    private final Socket m16324a(Socket socket) {
        int i;
        int i2;
        i = this.f20503b.f21298r;
        if (i > 0) {
            i2 = this.f20503b.f21298r;
            socket.setReceiveBufferSize(i2);
        }
        this.f20503b.f21299s.add(socket);
        return socket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) {
        Socket createSocket = this.f20502a.createSocket(str, i);
        m16324a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        Socket createSocket = this.f20502a.createSocket(str, i, inetAddress, i2);
        m16324a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) {
        Socket createSocket = this.f20502a.createSocket(inetAddress, i);
        m16324a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        Socket createSocket = this.f20502a.createSocket(inetAddress, i, inetAddress2, i2);
        m16324a(createSocket);
        return createSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i, boolean z) {
        Socket createSocket = this.f20502a.createSocket(socket, str, i, z);
        m16324a(createSocket);
        return createSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.f20502a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.f20502a.getSupportedCipherSuites();
    }
}
