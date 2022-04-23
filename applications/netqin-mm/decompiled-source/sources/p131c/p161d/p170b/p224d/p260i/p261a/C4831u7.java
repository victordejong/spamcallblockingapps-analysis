package p131c.p161d.p170b.p224d.p260i.p261a;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: c.d.b.d.i.a.u7 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/u7.class */
public final class C4831u7 extends SSLSocketFactory {

    /* renamed from: a */
    public final SSLSocketFactory f17420a;

    public C4831u7() {
        this(HttpsURLConnection.getDefaultSSLSocketFactory());
    }

    public C4831u7(SSLSocketFactory sSLSocketFactory) {
        this.f17420a = sSLSocketFactory;
    }

    /* renamed from: a */
    public final SSLSocket m24873a(SSLSocket sSLSocket) {
        return new C4849w7(this, sSLSocket);
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket() throws IOException {
        return m24873a((SSLSocket) this.f17420a.createSocket());
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) throws IOException {
        return m24873a((SSLSocket) this.f17420a.createSocket(str, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        return m24873a((SSLSocket) this.f17420a.createSocket(str, i, inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        return m24873a((SSLSocket) this.f17420a.createSocket(inetAddress, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        return m24873a((SSLSocket) this.f17420a.createSocket(inetAddress, i, inetAddress2, i2));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        return m24873a((SSLSocket) this.f17420a.createSocket(socket, str, i, z));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.f17420a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.f17420a.getSupportedCipherSuites();
    }
}
