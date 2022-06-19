package com.huawei.secure.android.common.ssl;

import android.content.Context;
import com.huawei.secure.android.common.ssl.util.C2487a;
import com.huawei.secure.android.common.ssl.util.C2489c;
import com.huawei.secure.android.common.ssl.util.C2493g;
import java.io.IOException;
import java.io.InputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.security.KeyManagementException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import org.apache.http.conn.ssl.BrowserCompatHostnameVerifier;
import org.apache.http.conn.ssl.StrictHostnameVerifier;
import org.apache.http.conn.ssl.X509HostnameVerifier;
import p193e.p1432d.p1439c.p1440a.C22128a;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/ssl/SecureSSLSocketFactory.class */
public class SecureSSLSocketFactory extends SSLSocketFactory {
    @Deprecated
    public static final X509HostnameVerifier BROWSER_COMPATIBLE_HOSTNAME_VERIFIER = new BrowserCompatHostnameVerifier();
    @Deprecated
    public static final X509HostnameVerifier STRICT_HOSTNAME_VERIFIER = new StrictHostnameVerifier();

    /* renamed from: i */
    private static final String f8018i = SecureSSLSocketFactory.class.getSimpleName();

    /* renamed from: j */
    private static volatile SecureSSLSocketFactory f8019j = null;

    /* renamed from: a */
    private SSLContext f8020a;

    /* renamed from: b */
    private SSLSocket f8021b;

    /* renamed from: c */
    private Context f8022c;

    /* renamed from: d */
    private String[] f8023d;

    /* renamed from: e */
    private X509TrustManager f8024e;

    /* renamed from: f */
    private String[] f8025f;

    /* renamed from: g */
    private String[] f8026g;

    /* renamed from: h */
    private String[] f8027h;

    private SecureSSLSocketFactory(Context context) throws NoSuchAlgorithmException, CertificateException, KeyStoreException, IOException, KeyManagementException {
        this.f8020a = null;
        this.f8021b = null;
        if (context == null) {
            C2493g.m36956b(f8018i, "SecureSSLSocketFactory: context is null");
            return;
        }
        setContext(context);
        setSslContext(SSLUtil.setSSLContext());
        SecureX509TrustManager secureX509SingleInstance = SecureX509SingleInstance.getInstance(context);
        this.f8024e = secureX509SingleInstance;
        this.f8020a.init(null, new X509TrustManager[]{secureX509SingleInstance}, null);
    }

    public SecureSSLSocketFactory(InputStream inputStream, String str) throws IOException, NoSuchAlgorithmException, CertificateException, KeyStoreException, KeyManagementException, IllegalArgumentException {
        this.f8020a = null;
        this.f8021b = null;
        this.f8020a = SSLUtil.setSSLContext();
        X509TrustManager hiCloudX509TrustManager = new HiCloudX509TrustManager(inputStream, str);
        setX509TrustManager(hiCloudX509TrustManager);
        this.f8020a.init(null, new X509TrustManager[]{hiCloudX509TrustManager}, null);
    }

    public SecureSSLSocketFactory(X509TrustManager x509TrustManager) throws NoSuchAlgorithmException, KeyManagementException, IllegalArgumentException {
        this.f8020a = null;
        this.f8021b = null;
        this.f8020a = SSLUtil.setSSLContext();
        setX509TrustManager(x509TrustManager);
        this.f8020a.init(null, new X509TrustManager[]{x509TrustManager}, null);
    }

    /* renamed from: a */
    private void m37029a(Socket socket) {
        boolean z;
        boolean z2 = true;
        if (!C2487a.m36990a(this.f8027h)) {
            C2493g.m36955c(f8018i, "set protocols");
            SSLUtil.setEnabledProtocols((SSLSocket) socket, this.f8027h);
            z = true;
        } else {
            z = false;
        }
        if (!C2487a.m36990a(this.f8026g) || !C2487a.m36990a(this.f8025f)) {
            C2493g.m36955c(f8018i, "set white cipher or black cipher");
            SSLSocket sSLSocket = (SSLSocket) socket;
            SSLUtil.setEnabledProtocols(sSLSocket);
            if (!C2487a.m36990a(this.f8026g)) {
                SSLUtil.setWhiteListCipherSuites(sSLSocket, this.f8026g);
            } else {
                SSLUtil.setBlackListCipherSuites(sSLSocket, this.f8025f);
            }
        } else {
            z2 = false;
        }
        if (!z) {
            C2493g.m36955c(f8018i, "set default protocols");
            SSLUtil.setEnabledProtocols((SSLSocket) socket);
        }
        if (!z2) {
            C2493g.m36955c(f8018i, "set default cipher suites");
            SSLUtil.setEnableSafeCipherSuites((SSLSocket) socket);
        }
    }

    /* renamed from: a */
    public static void m37028a(X509TrustManager x509TrustManager) {
        C2493g.m36955c(f8018i, "ssf update socket factory trust manager");
        long currentTimeMillis = System.currentTimeMillis();
        try {
            f8019j = new SecureSSLSocketFactory(x509TrustManager);
        } catch (KeyManagementException e) {
            C2493g.m36956b(f8018i, "KeyManagementException");
        } catch (NoSuchAlgorithmException e2) {
            C2493g.m36956b(f8018i, "NoSuchAlgorithmException");
        }
        String str = f8018i;
        StringBuilder m8728C = C22128a.m8728C("update: cost : ");
        m8728C.append(System.currentTimeMillis() - currentTimeMillis);
        m8728C.append(" ms");
        C2493g.m36958a(str, m8728C.toString());
    }

    public static SecureSSLSocketFactory getInstance(Context context) throws IOException, NoSuchAlgorithmException, CertificateException, KeyStoreException, IllegalAccessException, KeyManagementException, IllegalArgumentException {
        long currentTimeMillis = System.currentTimeMillis();
        C2489c.m36978a(context);
        if (f8019j == null) {
            synchronized (SecureSSLSocketFactory.class) {
                try {
                    if (f8019j == null) {
                        f8019j = new SecureSSLSocketFactory(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (f8019j.f8022c == null && context != null) {
            f8019j.setContext(context);
        }
        String str = f8018i;
        StringBuilder m8728C = C22128a.m8728C("getInstance: cost : ");
        m8728C.append(System.currentTimeMillis() - currentTimeMillis);
        m8728C.append(" ms");
        C2493g.m36958a(str, m8728C.toString());
        return f8019j;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) throws IOException {
        C2493g.m36955c(f8018i, "createSocket: host , port");
        Socket createSocket = this.f8020a.getSocketFactory().createSocket(str, i);
        if (createSocket instanceof SSLSocket) {
            m37029a(createSocket);
            SSLSocket sSLSocket = (SSLSocket) createSocket;
            this.f8021b = sSLSocket;
            this.f8023d = (String[]) sSLSocket.getEnabledCipherSuites().clone();
        }
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException, UnknownHostException {
        return createSocket(str, i);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        return createSocket(inetAddress.getHostAddress(), i);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        return createSocket(inetAddress.getHostAddress(), i);
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        C2493g.m36955c(f8018i, "createSocket s host port autoClose");
        Socket createSocket = this.f8020a.getSocketFactory().createSocket(socket, str, i, z);
        if (createSocket instanceof SSLSocket) {
            m37029a(createSocket);
            SSLSocket sSLSocket = (SSLSocket) createSocket;
            this.f8021b = sSLSocket;
            this.f8023d = (String[]) sSLSocket.getEnabledCipherSuites().clone();
        }
        return createSocket;
    }

    public String[] getBlackCiphers() {
        return this.f8025f;
    }

    public X509Certificate[] getChain() {
        X509TrustManager x509TrustManager = this.f8024e;
        return x509TrustManager instanceof SecureX509TrustManager ? ((SecureX509TrustManager) x509TrustManager).getChain() : new X509Certificate[0];
    }

    public Context getContext() {
        return this.f8022c;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return new String[0];
    }

    public String[] getProtocols() {
        return this.f8027h;
    }

    public SSLContext getSslContext() {
        return this.f8020a;
    }

    public SSLSocket getSslSocket() {
        return this.f8021b;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        String[] strArr = this.f8023d;
        return strArr != null ? strArr : new String[0];
    }

    public String[] getWhiteCiphers() {
        return this.f8026g;
    }

    public X509TrustManager getX509TrustManager() {
        return this.f8024e;
    }

    public void setBlackCiphers(String[] strArr) {
        this.f8025f = strArr;
    }

    public void setContext(Context context) {
        this.f8022c = context.getApplicationContext();
    }

    public void setProtocols(String[] strArr) {
        this.f8027h = strArr;
    }

    public void setSslContext(SSLContext sSLContext) {
        this.f8020a = sSLContext;
    }

    public void setWhiteCiphers(String[] strArr) {
        this.f8026g = strArr;
    }

    public void setX509TrustManager(X509TrustManager x509TrustManager) {
        this.f8024e = x509TrustManager;
    }
}
