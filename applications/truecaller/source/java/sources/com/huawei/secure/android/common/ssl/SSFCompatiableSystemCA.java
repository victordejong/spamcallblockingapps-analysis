package com.huawei.secure.android.common.ssl;

import android.content.Context;
import com.huawei.secure.android.common.ssl.util.C2487a;
import com.huawei.secure.android.common.ssl.util.C2489c;
import com.huawei.secure.android.common.ssl.util.C2493g;
import java.io.IOException;
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
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/ssl/SSFCompatiableSystemCA.class */
public class SSFCompatiableSystemCA extends SSLSocketFactory {

    /* renamed from: i */
    private static final String f7998i = SSFCompatiableSystemCA.class.getSimpleName();

    /* renamed from: j */
    private static volatile SSFCompatiableSystemCA f7999j = null;

    /* renamed from: a */
    private SSLContext f8000a;

    /* renamed from: b */
    private SSLSocket f8001b;

    /* renamed from: c */
    private Context f8002c;

    /* renamed from: d */
    private String[] f8003d;

    /* renamed from: e */
    private X509TrustManager f8004e;

    /* renamed from: f */
    private String[] f8005f;

    /* renamed from: g */
    private String[] f8006g;

    /* renamed from: h */
    private String[] f8007h;

    private SSFCompatiableSystemCA(Context context) throws NoSuchAlgorithmException, CertificateException, KeyStoreException, IOException, KeyManagementException {
        this.f8000a = null;
        this.f8001b = null;
        if (context == null) {
            C2493g.m36956b(f7998i, "SecureSSLSocketFactory: context is null");
            return;
        }
        setContext(context);
        setSslContext(SSLUtil.setSSLContext());
        SecureX509TrustManager sSFSecureX509SingleInstance = SSFSecureX509SingleInstance.getInstance(context);
        this.f8004e = sSFSecureX509SingleInstance;
        this.f8000a.init(null, new X509TrustManager[]{sSFSecureX509SingleInstance}, null);
    }

    public SSFCompatiableSystemCA(X509TrustManager x509TrustManager) throws NoSuchAlgorithmException, KeyManagementException, IllegalArgumentException {
        this.f8000a = null;
        this.f8001b = null;
        this.f8000a = SSLUtil.setSSLContext();
        setX509TrustManager(x509TrustManager);
        this.f8000a.init(null, new X509TrustManager[]{x509TrustManager}, null);
    }

    /* renamed from: a */
    private void m37031a(Socket socket) {
        boolean z;
        boolean z2 = true;
        if (!C2487a.m36990a(this.f8007h)) {
            C2493g.m36955c(f7998i, "set protocols");
            SSLUtil.setEnabledProtocols((SSLSocket) socket, this.f8007h);
            z = true;
        } else {
            z = false;
        }
        if (!C2487a.m36990a(this.f8006g) || !C2487a.m36990a(this.f8005f)) {
            C2493g.m36955c(f7998i, "set white cipher or black cipher");
            SSLSocket sSLSocket = (SSLSocket) socket;
            SSLUtil.setEnabledProtocols(sSLSocket);
            if (!C2487a.m36990a(this.f8006g)) {
                SSLUtil.setWhiteListCipherSuites(sSLSocket, this.f8006g);
            } else {
                SSLUtil.setBlackListCipherSuites(sSLSocket, this.f8005f);
            }
        } else {
            z2 = false;
        }
        if (!z) {
            C2493g.m36955c(f7998i, "set default protocols");
            SSLUtil.setEnabledProtocols((SSLSocket) socket);
        }
        if (!z2) {
            C2493g.m36955c(f7998i, "set default cipher suites");
            SSLUtil.setEnableSafeCipherSuites((SSLSocket) socket);
        }
    }

    /* renamed from: a */
    public static void m37030a(X509TrustManager x509TrustManager) {
        C2493g.m36955c(f7998i, "ssfc update socket factory trust manager");
        long currentTimeMillis = System.currentTimeMillis();
        try {
            f7999j = new SSFCompatiableSystemCA(x509TrustManager);
        } catch (KeyManagementException e) {
            C2493g.m36956b(f7998i, "KeyManagementException");
        } catch (NoSuchAlgorithmException e2) {
            C2493g.m36956b(f7998i, "NoSuchAlgorithmException");
        }
        String str = f7998i;
        StringBuilder m8728C = C22128a.m8728C("SSF system ca update: cost : ");
        m8728C.append(System.currentTimeMillis() - currentTimeMillis);
        m8728C.append(" ms");
        C2493g.m36958a(str, m8728C.toString());
    }

    public static SSFCompatiableSystemCA getInstance(Context context) throws IOException, NoSuchAlgorithmException, CertificateException, KeyStoreException, KeyManagementException, IllegalArgumentException {
        C2489c.m36978a(context);
        if (f7999j == null) {
            synchronized (SSFCompatiableSystemCA.class) {
                try {
                    if (f7999j == null) {
                        f7999j = new SSFCompatiableSystemCA(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (f7999j.f8002c == null && context != null) {
            f7999j.setContext(context);
        }
        return f7999j;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) throws IOException {
        C2493g.m36955c(f7998i, "createSocket: host , port");
        Socket createSocket = this.f8000a.getSocketFactory().createSocket(str, i);
        if (createSocket instanceof SSLSocket) {
            m37031a(createSocket);
            SSLSocket sSLSocket = (SSLSocket) createSocket;
            this.f8001b = sSLSocket;
            this.f8003d = (String[]) sSLSocket.getEnabledCipherSuites().clone();
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
        C2493g.m36955c(f7998i, "createSocket: s , host , port , autoClose");
        Socket createSocket = this.f8000a.getSocketFactory().createSocket(socket, str, i, z);
        if (createSocket instanceof SSLSocket) {
            m37031a(createSocket);
            SSLSocket sSLSocket = (SSLSocket) createSocket;
            this.f8001b = sSLSocket;
            this.f8003d = (String[]) sSLSocket.getEnabledCipherSuites().clone();
        }
        return createSocket;
    }

    public String[] getBlackCiphers() {
        return this.f8005f;
    }

    public X509Certificate[] getChain() {
        X509TrustManager x509TrustManager = this.f8004e;
        return x509TrustManager instanceof SecureX509TrustManager ? ((SecureX509TrustManager) x509TrustManager).getChain() : new X509Certificate[0];
    }

    public Context getContext() {
        return this.f8002c;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return new String[0];
    }

    public String[] getProtocols() {
        return this.f8007h;
    }

    public SSLContext getSslContext() {
        return this.f8000a;
    }

    public SSLSocket getSslSocket() {
        return this.f8001b;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        String[] strArr = this.f8003d;
        return strArr != null ? strArr : new String[0];
    }

    public String[] getWhiteCiphers() {
        return this.f8006g;
    }

    public X509TrustManager getX509TrustManager() {
        return this.f8004e;
    }

    public void setBlackCiphers(String[] strArr) {
        this.f8005f = strArr;
    }

    public void setContext(Context context) {
        this.f8002c = context.getApplicationContext();
    }

    public void setProtocols(String[] strArr) {
        this.f8007h = strArr;
    }

    public void setSslContext(SSLContext sSLContext) {
        this.f8000a = sSLContext;
    }

    public void setWhiteCiphers(String[] strArr) {
        this.f8006g = strArr;
    }

    public void setX509TrustManager(X509TrustManager x509TrustManager) {
        this.f8004e = x509TrustManager;
    }
}
