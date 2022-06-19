package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: com.google.android.gms.internal.ads.abt */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/abt.class */
public final class C12167abt extends SSLSocketFactory {

    /* renamed from: a */
    private SSLSocketFactory f39856a = (SSLSocketFactory) SSLSocketFactory.getDefault();

    /* renamed from: b */
    private final /* synthetic */ abq f39857b;

    public C12167abt(abq abqVar) {
        this.f39857b = abqVar;
    }

    /* renamed from: a */
    private final Socket m18900a(Socket socket) throws SocketException {
        int i;
        int i2;
        i = this.f39857b.f39819a;
        if (i > 0) {
            i2 = this.f39857b.f39819a;
            socket.setReceiveBufferSize(i2);
        }
        this.f39857b.f39820b.add(socket);
        return socket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) throws IOException {
        return m18900a(this.f39856a.createSocket(str, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        return m18900a(this.f39856a.createSocket(str, i, inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        return m18900a(this.f39856a.createSocket(inetAddress, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        return m18900a(this.f39856a.createSocket(inetAddress, i, inetAddress2, i2));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        return m18900a(this.f39856a.createSocket(socket, str, i, z));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.f39856a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.f39856a.getSupportedCipherSuites();
    }
}
