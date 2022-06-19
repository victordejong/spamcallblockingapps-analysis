package com.google.android.gms.measurement.internal;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzkm.class */
final class zzkm extends SSLSocketFactory {
    private final SSLSocketFactory zza;

    zzkm() {
        this.zza = HttpsURLConnection.getDefaultSSLSocketFactory();
    }

    public zzkm(SSLSocketFactory sSLSocketFactory) {
        this.zza = sSLSocketFactory;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket() throws IOException {
        return new zzkl(this, (SSLSocket) this.zza.createSocket());
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) throws IOException {
        return new zzkl(this, (SSLSocket) this.zza.createSocket(str, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        return new zzkl(this, (SSLSocket) this.zza.createSocket(str, i, inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        return new zzkl(this, (SSLSocket) this.zza.createSocket(inetAddress, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        return new zzkl(this, (SSLSocket) this.zza.createSocket(inetAddress, i, inetAddress2, i2));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        return new zzkl(this, (SSLSocket) this.zza.createSocket(socket, str, i, z));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.zza.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.zza.getSupportedCipherSuites();
    }
}
