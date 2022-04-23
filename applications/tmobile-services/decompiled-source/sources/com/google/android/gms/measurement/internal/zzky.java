package com.google.android.gms.measurement.internal;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzky.class */
final class zzky extends SSLSocketFactory {

    /* renamed from: a */
    private final SSLSocketFactory f9718a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzky() {
        this(HttpsURLConnection.getDefaultSSLSocketFactory());
    }

    private zzky(SSLSocketFactory sSLSocketFactory) {
        this.f9718a = sSLSocketFactory;
    }

    /* renamed from: a */
    private final SSLSocket m10929a(SSLSocket sSLSocket) {
        return new zzkx(this, sSLSocket);
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket() throws IOException {
        return m10929a((SSLSocket) this.f9718a.createSocket());
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) throws IOException {
        return m10929a((SSLSocket) this.f9718a.createSocket(str, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        return m10929a((SSLSocket) this.f9718a.createSocket(str, i, inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        return m10929a((SSLSocket) this.f9718a.createSocket(inetAddress, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        return m10929a((SSLSocket) this.f9718a.createSocket(inetAddress, i, inetAddress2, i2));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        return m10929a((SSLSocket) this.f9718a.createSocket(socket, str, i, z));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.f9718a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.f9718a.getSupportedCipherSuites();
    }
}
