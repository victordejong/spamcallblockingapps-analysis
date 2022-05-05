package zendesk.core;

import android.os.Build;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.util.Collections;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.ConnectionSpec;
import okhttp3.OkHttpClient;
import okhttp3.TlsVersion;
import p081h.p451q.p453b.C10845a;
/* loaded from: classes3-dex2jar.jar:zendesk/core/Tls12SocketFactory.class */
public class Tls12SocketFactory extends SSLSocketFactory {
    public static final String[] TLS_V12_ONLY = {TlsVersion.TLS_1_2.javaName()};
    public final SSLSocketFactory delegate;

    public Tls12SocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.delegate = sSLSocketFactory;
    }

    public static OkHttpClient.Builder enableTls12OnPreLollipop(OkHttpClient.Builder builder) {
        int i = Build.VERSION.SDK_INT;
        if (i < 16 || i >= 21) {
            C10845a.m10422a("Tls12SocketFactory", "Skipping TLS 1.2 patch", new Object[0]);
            ConnectionSpec.Builder builder2 = new ConnectionSpec.Builder(ConnectionSpec.MODERN_TLS);
            builder2.tlsVersions(TlsVersion.TLS_1_2, TlsVersion.TLS_1_3);
            builder.connectionSpecs(Collections.singletonList(builder2.build()));
        } else {
            try {
                SSLContext instance = SSLContext.getInstance("TLSv1.2");
                instance.init(null, null, null);
                builder.sslSocketFactory(new Tls12SocketFactory(instance.getSocketFactory()));
                ConnectionSpec.Builder builder3 = new ConnectionSpec.Builder(ConnectionSpec.MODERN_TLS);
                builder3.tlsVersions(TlsVersion.TLS_1_2);
                builder.connectionSpecs(Collections.singletonList(builder3.build()));
                C10845a.m10422a("Tls12SocketFactory", "Applied TLS 1.2 patch", new Object[0]);
            } catch (Exception e) {
                C10845a.m10423a("Tls12SocketFactory", "Error while setting TLS 1.2", e, new Object[0]);
            }
        }
        return builder;
    }

    public static Socket patch(Socket socket) {
        if (socket instanceof SSLSocket) {
            ((SSLSocket) socket).setEnabledProtocols(TLS_V12_ONLY);
        }
        return socket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) throws IOException {
        Socket createSocket = this.delegate.createSocket(str, i);
        patch(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        Socket createSocket = this.delegate.createSocket(str, i, inetAddress, i2);
        patch(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        Socket createSocket = this.delegate.createSocket(inetAddress, i);
        patch(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        Socket createSocket = this.delegate.createSocket(inetAddress, i, inetAddress2, i2);
        patch(createSocket);
        return createSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        Socket createSocket = this.delegate.createSocket(socket, str, i, z);
        patch(createSocket);
        return createSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return this.delegate.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        return this.delegate.getSupportedCipherSuites();
    }
}
