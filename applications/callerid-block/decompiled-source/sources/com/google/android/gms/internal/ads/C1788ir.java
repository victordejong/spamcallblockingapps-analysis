package com.google.android.gms.internal.ads;

import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: com.google.android.gms.internal.ads.ir */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ir.class */
final class C1788ir extends SSLSocketFactory {

    /* renamed from: a */
    final SSLSocketFactory f6835a = (SSLSocketFactory) SSLSocketFactory.getDefault();

    /* renamed from: b */
    final /* synthetic */ jr f6836b;

    C1788ir(jr jrVar) {
        this.f6836b = jrVar;
    }

    /* renamed from: a */
    private final Socket m7107a(Socket socket) {
        if (jr.g(this.f6836b) > 0) {
            socket.setReceiveBufferSize(jr.g(this.f6836b));
        }
        jr.h(this.f6836b, socket);
        return socket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) {
        Socket createSocket = this.f6835a.createSocket(str, i);
        m7107a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        Socket createSocket = this.f6835a.createSocket(str, i, inetAddress, i2);
        m7107a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) {
        Socket createSocket = this.f6835a.createSocket(inetAddress, i);
        m7107a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        Socket createSocket = this.f6835a.createSocket(inetAddress, i, inetAddress2, i2);
        m7107a(createSocket);
        return createSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i, boolean z) {
        Socket createSocket = this.f6835a.createSocket(socket, str, i, z);
        m7107a(createSocket);
        return createSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.f6835a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.f6835a.getSupportedCipherSuites();
    }
}
