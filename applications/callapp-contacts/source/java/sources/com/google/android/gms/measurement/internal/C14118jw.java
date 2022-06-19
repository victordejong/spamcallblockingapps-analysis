package com.google.android.gms.measurement.internal;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: com.google.android.gms.measurement.internal.jw */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/jw.class */
final class C14118jw extends SSLSocketFactory {

    /* renamed from: a */
    private final SSLSocketFactory f52003a;

    C14118jw() {
        this.f52003a = HttpsURLConnection.getDefaultSSLSocketFactory();
    }

    public C14118jw(SSLSocketFactory sSLSocketFactory) {
        this.f52003a = sSLSocketFactory;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket() throws IOException {
        return new C14117jv(this, (SSLSocket) this.f52003a.createSocket());
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) throws IOException {
        return new C14117jv(this, (SSLSocket) this.f52003a.createSocket(str, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        return new C14117jv(this, (SSLSocket) this.f52003a.createSocket(str, i, inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        return new C14117jv(this, (SSLSocket) this.f52003a.createSocket(inetAddress, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        return new C14117jv(this, (SSLSocket) this.f52003a.createSocket(inetAddress, i, inetAddress2, i2));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        return new C14117jv(this, (SSLSocket) this.f52003a.createSocket(socket, str, i, z));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.f52003a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.f52003a.getSupportedCipherSuites();
    }
}
