package com.google.android.gms.internal.ads;

import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aax.class */
public final class aax extends SSLSocketFactory {

    /* renamed from: a */
    private SSLSocketFactory f7710a = (SSLSocketFactory) SSLSocketFactory.getDefault();

    /* renamed from: b */
    private final /* synthetic */ aau f7711b;

    public aax(aau aauVar) {
        this.f7711b = aauVar;
    }

    /* renamed from: a */
    private final Socket m13697a(Socket socket) {
        int i;
        int i2;
        i = this.f7711b.f7698q;
        if (i > 0) {
            i2 = this.f7711b.f7698q;
            socket.setReceiveBufferSize(i2);
        }
        this.f7711b.m13699a(socket);
        return socket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) {
        return m13697a(this.f7710a.createSocket(str, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        return m13697a(this.f7710a.createSocket(str, i, inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) {
        return m13697a(this.f7710a.createSocket(inetAddress, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        return m13697a(this.f7710a.createSocket(inetAddress, i, inetAddress2, i2));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i, boolean z) {
        return m13697a(this.f7710a.createSocket(socket, str, i, z));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.f7710a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.f7710a.getSupportedCipherSuites();
    }
}
