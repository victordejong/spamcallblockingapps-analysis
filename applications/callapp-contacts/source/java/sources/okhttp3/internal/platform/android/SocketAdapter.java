package okhttp3.internal.platform.android;

import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import okhttp3.Protocol;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH&J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\f\u001a\u00020\rH&J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0010\u001a\u00020\u0011H\u0016¨\u0006\u0014"}, m4298d2 = {"Lokhttp3/internal/platform/android/SocketAdapter;", "", "configureTlsExtensions", "", "sslSocket", "Ljavax/net/ssl/SSLSocket;", "hostname", "", "protocols", "", "Lokhttp3/Protocol;", "getSelectedProtocol", "isSupported", "", "matchesSocket", "matchesSocketFactory", "sslSocketFactory", "Ljavax/net/ssl/SSLSocketFactory;", "trustManager", "Ljavax/net/ssl/X509TrustManager;", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/platform/android/SocketAdapter.class */
public interface SocketAdapter {

    @Metadata(m4300bv = {1, 0, 3}, m4297k = 3, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/platform/android/SocketAdapter$DefaultImpls.class */
    public static final class DefaultImpls {
        public static boolean matchesSocketFactory(SocketAdapter socketAdapter, SSLSocketFactory sslSocketFactory) {
            C18524p.m3840d(sslSocketFactory, "sslSocketFactory");
            return false;
        }

        public static X509TrustManager trustManager(SocketAdapter socketAdapter, SSLSocketFactory sslSocketFactory) {
            C18524p.m3840d(sslSocketFactory, "sslSocketFactory");
            return null;
        }
    }

    void configureTlsExtensions(SSLSocket sSLSocket, String str, List<? extends Protocol> list);

    String getSelectedProtocol(SSLSocket sSLSocket);

    boolean isSupported();

    boolean matchesSocket(SSLSocket sSLSocket);

    boolean matchesSocketFactory(SSLSocketFactory sSLSocketFactory);

    X509TrustManager trustManager(SSLSocketFactory sSLSocketFactory);
}
