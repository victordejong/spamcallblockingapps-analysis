package com.google.android.gms.measurement.internal;

import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: com.google.android.gms.measurement.internal.jz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/jz.class */
final class C4427jz extends SSLSocketFactory {

    /* renamed from: a */
    private final SSLSocketFactory f19292a;

    public C4427jz() {
        this(HttpsURLConnection.getDefaultSSLSocketFactory());
    }

    private C4427jz(SSLSocketFactory sSLSocketFactory) {
        this.f19292a = sSLSocketFactory;
    }

    /* renamed from: a */
    private final SSLSocket m4075a(SSLSocket sSLSocket) {
        return new C4426jy(this, sSLSocket);
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket() {
        return m4075a((SSLSocket) this.f19292a.createSocket());
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) {
        return m4075a((SSLSocket) this.f19292a.createSocket(str, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        return m4075a((SSLSocket) this.f19292a.createSocket(str, i, inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) {
        return m4075a((SSLSocket) this.f19292a.createSocket(inetAddress, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        return m4075a((SSLSocket) this.f19292a.createSocket(inetAddress, i, inetAddress2, i2));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i, boolean z) {
        return m4075a((SSLSocket) this.f19292a.createSocket(socket, str, i, z));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.f19292a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.f19292a.getSupportedCipherSuites();
    }
}
