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
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/ssl/SecureSSLSocketFactoryNew.class */
public class SecureSSLSocketFactoryNew extends SSLSocketFactory {

    /* renamed from: i */
    private static final String f8028i = SecureSSLSocketFactoryNew.class.getSimpleName();

    /* renamed from: j */
    private static volatile SecureSSLSocketFactoryNew f8029j = null;

    /* renamed from: a */
    public SSLContext f8030a;

    /* renamed from: b */
    public SSLSocket f8031b;

    /* renamed from: c */
    public Context f8032c;

    /* renamed from: d */
    public String[] f8033d;

    /* renamed from: e */
    public X509TrustManager f8034e;

    /* renamed from: f */
    public String[] f8035f;

    /* renamed from: g */
    public String[] f8036g;

    /* renamed from: h */
    public String[] f8037h;

    private SecureSSLSocketFactoryNew(Context context) throws NoSuchAlgorithmException, CertificateException, KeyStoreException, IOException, KeyManagementException {
        this.f8030a = null;
        this.f8031b = null;
        if (context == null) {
            C2493g.m36956b(f8028i, "SecureSSLSocketFactory: context is null");
            return;
        }
        setContext(context);
        setSslContext(SSLUtil.setSSLContext());
        SecureX509TrustManager secureX509SingleInstance = SecureX509SingleInstance.getInstance(context);
        this.f8034e = secureX509SingleInstance;
        this.f8030a.init(null, new X509TrustManager[]{secureX509SingleInstance}, null);
    }

    public SecureSSLSocketFactoryNew(InputStream inputStream, String str) throws IOException, NoSuchAlgorithmException, CertificateException, KeyStoreException, KeyManagementException, IllegalArgumentException {
        this.f8030a = null;
        this.f8031b = null;
        this.f8030a = SSLUtil.setSSLContext();
        X509TrustManager hiCloudX509TrustManager = new HiCloudX509TrustManager(inputStream, str);
        setX509TrustManager(hiCloudX509TrustManager);
        this.f8030a.init(null, new X509TrustManager[]{hiCloudX509TrustManager}, null);
    }

    public SecureSSLSocketFactoryNew(X509TrustManager x509TrustManager) throws NoSuchAlgorithmException, KeyManagementException, IllegalArgumentException {
        this.f8030a = null;
        this.f8031b = null;
        this.f8030a = SSLUtil.setSSLContext();
        setX509TrustManager(x509TrustManager);
        this.f8030a.init(null, new X509TrustManager[]{x509TrustManager}, null);
    }

    /* renamed from: a */
    private void m37027a(Socket socket) {
        boolean z;
        boolean z2 = true;
        if (!C2487a.m36990a(this.f8037h)) {
            C2493g.m36955c(f8028i, "set protocols");
            SSLUtil.setEnabledProtocols((SSLSocket) socket, this.f8037h);
            z = true;
        } else {
            z = false;
        }
        if (!C2487a.m36990a(this.f8036g) || !C2487a.m36990a(this.f8035f)) {
            C2493g.m36955c(f8028i, "set white cipher or black cipher");
            SSLSocket sSLSocket = (SSLSocket) socket;
            SSLUtil.setEnabledProtocols(sSLSocket);
            if (!C2487a.m36990a(this.f8036g)) {
                SSLUtil.setWhiteListCipherSuites(sSLSocket, this.f8036g);
            } else {
                SSLUtil.setBlackListCipherSuites(sSLSocket, this.f8035f);
            }
        } else {
            z2 = false;
        }
        if (!z) {
            C2493g.m36955c(f8028i, "set default protocols");
            SSLUtil.setEnabledProtocols((SSLSocket) socket);
        }
        if (!z2) {
            C2493g.m36955c(f8028i, "set default cipher suites");
            SSLUtil.setEnableSafeCipherSuites((SSLSocket) socket);
        }
    }

    public static SecureSSLSocketFactoryNew getInstance(Context context) throws IOException, NoSuchAlgorithmException, CertificateException, KeyStoreException, IllegalAccessException, KeyManagementException, IllegalArgumentException {
        long currentTimeMillis = System.currentTimeMillis();
        C2489c.m36978a(context);
        if (f8029j == null) {
            synchronized (SecureSSLSocketFactoryNew.class) {
                try {
                    if (f8029j == null) {
                        f8029j = new SecureSSLSocketFactoryNew(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (f8029j.f8032c == null && context != null) {
            f8029j.setContext(context);
        }
        String str = f8028i;
        StringBuilder m8728C = C22128a.m8728C("getInstance: cost : ");
        m8728C.append(System.currentTimeMillis() - currentTimeMillis);
        m8728C.append(" ms");
        C2493g.m36958a(str, m8728C.toString());
        return f8029j;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) throws IOException {
        C2493g.m36955c(f8028i, "createSocket: host , port");
        Socket createSocket = this.f8030a.getSocketFactory().createSocket(str, i);
        if (createSocket instanceof SSLSocket) {
            m37027a(createSocket);
            SSLSocket sSLSocket = (SSLSocket) createSocket;
            this.f8031b = sSLSocket;
            this.f8033d = (String[]) sSLSocket.getEnabledCipherSuites().clone();
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
        C2493g.m36955c(f8028i, "createSocket s host port autoClose");
        Socket createSocket = this.f8030a.getSocketFactory().createSocket(socket, str, i, z);
        if (createSocket instanceof SSLSocket) {
            m37027a(createSocket);
            SSLSocket sSLSocket = (SSLSocket) createSocket;
            this.f8031b = sSLSocket;
            this.f8033d = (String[]) sSLSocket.getEnabledCipherSuites().clone();
        }
        return createSocket;
    }

    public String[] getBlackCiphers() {
        return this.f8035f;
    }

    public X509Certificate[] getChain() {
        X509TrustManager x509TrustManager = this.f8034e;
        return x509TrustManager instanceof SecureX509TrustManager ? ((SecureX509TrustManager) x509TrustManager).getChain() : new X509Certificate[0];
    }

    public Context getContext() {
        return this.f8032c;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return new String[0];
    }

    public String[] getProtocols() {
        return this.f8037h;
    }

    public SSLContext getSslContext() {
        return this.f8030a;
    }

    public SSLSocket getSslSocket() {
        return this.f8031b;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        String[] strArr = this.f8033d;
        return strArr != null ? strArr : new String[0];
    }

    public String[] getWhiteCiphers() {
        return this.f8036g;
    }

    public X509TrustManager getX509TrustManager() {
        return this.f8034e;
    }

    public void setBlackCiphers(String[] strArr) {
        this.f8035f = strArr;
    }

    public void setContext(Context context) {
        this.f8032c = context.getApplicationContext();
    }

    public void setProtocols(String[] strArr) {
        this.f8037h = strArr;
    }

    public void setSslContext(SSLContext sSLContext) {
        this.f8030a = sSLContext;
    }

    public void setWhiteCiphers(String[] strArr) {
        this.f8036g = strArr;
    }

    public void setX509TrustManager(X509TrustManager x509TrustManager) {
        this.f8034e = x509TrustManager;
    }
}
