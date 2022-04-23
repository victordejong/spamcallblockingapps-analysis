package com.google.android.gms.measurement.internal;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfl.class */
final class zzfl extends SSLSocketFactory {
    private final SSLSocketFactory zzaum;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfl() {
        this(HttpsURLConnection.getDefaultSSLSocketFactory());
    }

    private zzfl(SSLSocketFactory sSLSocketFactory) {
        this.zzaum = sSLSocketFactory;
    }

    private final SSLSocket zza(SSLSocket sSLSocket) {
        return new zzfm(this, sSLSocket);
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket() throws IOException {
        return zza((SSLSocket) this.zzaum.createSocket());
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) throws IOException {
        return zza((SSLSocket) this.zzaum.createSocket(str, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        return zza((SSLSocket) this.zzaum.createSocket(str, i, inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        return zza((SSLSocket) this.zzaum.createSocket(inetAddress, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        return zza((SSLSocket) this.zzaum.createSocket(inetAddress, i, inetAddress2, i2));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        return zza((SSLSocket) this.zzaum.createSocket(socket, str, i, z));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.zzaum.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.zzaum.getSupportedCipherSuites();
    }
}
