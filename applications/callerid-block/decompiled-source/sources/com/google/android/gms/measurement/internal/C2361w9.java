package com.google.android.gms.measurement.internal;

import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: com.google.android.gms.measurement.internal.w9 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/w9.class */
final class C2361w9 extends SSLSocketFactory {

    /* renamed from: a */
    private final SSLSocketFactory f10464a;

    C2361w9(SSLSocketFactory sSLSocketFactory) {
        this.f10464a = sSLSocketFactory;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket() {
        return new C2355v9(this, (SSLSocket) this.f10464a.createSocket());
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) {
        return new C2355v9(this, (SSLSocket) this.f10464a.createSocket(str, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        return new C2355v9(this, (SSLSocket) this.f10464a.createSocket(str, i, inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) {
        return new C2355v9(this, (SSLSocket) this.f10464a.createSocket(inetAddress, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        return new C2355v9(this, (SSLSocket) this.f10464a.createSocket(inetAddress, i, inetAddress2, i2));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i, boolean z) {
        return new C2355v9(this, (SSLSocket) this.f10464a.createSocket(socket, str, i, z));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.f10464a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.f10464a.getSupportedCipherSuites();
    }
}
