package zendesk.core;

import android.os.Build;
import com.zendesk.logger.Logger;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/core/Tls12SocketFactory.class */
public class Tls12SocketFactory extends SSLSocketFactory {
    private static final String[] TLS_V12_ONLY = {TlsVersion.TLS_1_2.javaName()};
    final SSLSocketFactory delegate;

    public Tls12SocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.delegate = sSLSocketFactory;
    }

    public static OkHttpClient.Builder enableTls12OnPreLollipop(OkHttpClient.Builder builder) {
        if (Build.VERSION.SDK_INT < 16 || Build.VERSION.SDK_INT >= 21) {
            Logger.m298d("Tls12SocketFactory", "Skipping TLS 1.2 patch", new Object[0]);
            builder.connectionSpecs(Collections.singletonList(new ConnectionSpec.Builder(ConnectionSpec.MODERN_TLS).tlsVersions(TlsVersion.TLS_1_2, TlsVersion.TLS_1_3).build()));
        } else {
            try {
                SSLContext instance = SSLContext.getInstance("TLSv1.2");
                instance.init(null, null, null);
                builder.sslSocketFactory(new Tls12SocketFactory(instance.getSocketFactory()));
                builder.connectionSpecs(Collections.singletonList(new ConnectionSpec.Builder(ConnectionSpec.MODERN_TLS).tlsVersions(TlsVersion.TLS_1_2).build()));
                Logger.m298d("Tls12SocketFactory", "Applied TLS 1.2 patch", new Object[0]);
            } catch (Exception e) {
                Logger.m296e("Tls12SocketFactory", "Error while setting TLS 1.2", e, new Object[0]);
            }
        }
        return builder;
    }

    private static Socket patch(Socket socket) {
        if (socket instanceof SSLSocket) {
            ((SSLSocket) socket).setEnabledProtocols(TLS_V12_ONLY);
        }
        return socket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) throws IOException {
        return patch(this.delegate.createSocket(str, i));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        return patch(this.delegate.createSocket(str, i, inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        return patch(this.delegate.createSocket(inetAddress, i));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        return patch(this.delegate.createSocket(inetAddress, i, inetAddress2, i2));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        return patch(this.delegate.createSocket(socket, str, i, z));
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
