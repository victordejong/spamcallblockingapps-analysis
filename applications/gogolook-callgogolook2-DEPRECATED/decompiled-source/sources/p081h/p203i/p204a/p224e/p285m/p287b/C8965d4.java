package p081h.p203i.p204a.p224e.p285m.p287b;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: h.i.a.e.m.b.d4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/d4.class */
public final class C8965d4 extends SSLSocketFactory {

    /* renamed from: a */
    public final SSLSocketFactory f20274a;

    public C8965d4() {
        this(HttpsURLConnection.getDefaultSSLSocketFactory());
    }

    public C8965d4(SSLSocketFactory sSLSocketFactory) {
        this.f20274a = sSLSocketFactory;
    }

    /* renamed from: a */
    public final SSLSocket m16683a(SSLSocket sSLSocket) {
        return new C8972e4(this, sSLSocket);
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket() throws IOException {
        return m16683a((SSLSocket) this.f20274a.createSocket());
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) throws IOException {
        return m16683a((SSLSocket) this.f20274a.createSocket(str, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        return m16683a((SSLSocket) this.f20274a.createSocket(str, i, inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        return m16683a((SSLSocket) this.f20274a.createSocket(inetAddress, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        return m16683a((SSLSocket) this.f20274a.createSocket(inetAddress, i, inetAddress2, i2));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        return m16683a((SSLSocket) this.f20274a.createSocket(socket, str, i, z));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.f20274a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.f20274a.getSupportedCipherSuites();
    }
}
