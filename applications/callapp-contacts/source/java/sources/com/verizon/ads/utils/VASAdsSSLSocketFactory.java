package com.verizon.ads.utils;

import com.verizon.ads.Logger;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashSet;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/utils/VASAdsSSLSocketFactory.class */
public class VASAdsSSLSocketFactory extends SSLSocketFactory {

    /* renamed from: a */
    private static final Logger f61758a = Logger.getInstance(VASAdsSSLSocketFactory.class);

    /* renamed from: b */
    private static final String[] f61759b = {"TLSv1.1", "TLSv1.2"};

    /* renamed from: c */
    private static final String[] f61760c = {"TLS_RSA_WITH_AES_128_CBC_SHA", "TLS_RSA_WITH_AES_128_GCM_SHA256", "TLS_RSA_WITH_AES_256_CBC_SHA", "TLS_RSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"};

    /* renamed from: d */
    private static String f61761d = null;

    /* renamed from: h */
    private static volatile VASAdsSSLSocketFactory f61762h = new VASAdsSSLSocketFactory().m5301a();

    /* renamed from: e */
    private SSLSocketFactory f61763e;

    /* renamed from: f */
    private String[] f61764f = null;

    /* renamed from: g */
    private String[] f61765g = null;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/utils/VASAdsSSLSocketFactory$DefaultSSLContextFactory.class */
    public class DefaultSSLContextFactory implements SSLContextFactory {
        private DefaultSSLContextFactory() {
            VASAdsSSLSocketFactory.this = r4;
        }

        @Override // com.verizon.ads.utils.VASAdsSSLSocketFactory.SSLContextFactory
        public SSLContext getInstance(String str) throws NoSuchAlgorithmException, KeyManagementException {
            SSLContext sSLContext = SSLContext.getInstance(str);
            sSLContext.init(null, null, null);
            return sSLContext;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/utils/VASAdsSSLSocketFactory$SSLContextFactory.class */
    public interface SSLContextFactory {
        SSLContext getInstance(String str) throws NoSuchAlgorithmException, KeyManagementException;
    }

    private VASAdsSSLSocketFactory() {
    }

    /* renamed from: a */
    private VASAdsSSLSocketFactory m5301a() {
        if (Logger.isLogLevelEnabled(3)) {
            f61758a.m5567d("Initializing SSLSocketFactory");
        }
        try {
            SSLContext m5298b = m5298b();
            if (m5298b == null) {
                f61758a.m5565e("Failed to instantiate a valid SSLContext.");
                return null;
            }
            SSLSocketFactory socketFactory = m5298b.getSocketFactory();
            this.f61763e = socketFactory;
            SSLSocket sSLSocket = (SSLSocket) socketFactory.createSocket();
            this.f61765g = m5299a(sSLSocket.getSupportedProtocols(), f61759b);
            this.f61764f = m5299a(sSLSocket.getSupportedCipherSuites(), f61760c);
            sSLSocket.close();
            if (Logger.isLogLevelEnabled(3)) {
                Logger logger = f61758a;
                logger.m5567d("Protocols enabled: " + Arrays.toString(this.f61765g));
                logger.m5567d("Cipher suites enabled: " + Arrays.toString(this.f61764f));
            }
            return this;
        } catch (Exception e) {
            f61758a.m5564e("Failed to initialize SSLSocketFactory", e);
            return null;
        }
    }

    /* renamed from: a */
    private Socket m5300a(Socket socket) {
        if (socket instanceof SSLSocket) {
            if (Logger.isLogLevelEnabled(3)) {
                f61758a.m5567d("Setting enabled protocols and cipher suites on secure socket");
            }
            try {
                ((SSLSocket) socket).setEnabledProtocols(this.f61765g);
                ((SSLSocket) socket).setEnabledCipherSuites(this.f61764f);
            } catch (Exception e) {
                Logger logger = f61758a;
                logger.m5565e("Failed to set secure socket properties - " + e.getMessage());
            }
        }
        return socket;
    }

    /* renamed from: a */
    private static String[] m5299a(String[] strArr, String[] strArr2) {
        HashSet hashSet = new HashSet(Arrays.asList(strArr));
        HashSet hashSet2 = new HashSet(Arrays.asList(strArr2));
        hashSet2.retainAll(hashSet);
        return (String[]) hashSet2.toArray(new String[0]);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private javax.net.ssl.SSLContext m5298b() throws java.security.NoSuchAlgorithmException, java.security.KeyManagementException {
        /*
            r5 = this;
            java.lang.String r0 = com.verizon.ads.utils.VASAdsSSLSocketFactory.f61761d
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L3c
            r0 = r6
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.Exception -> L16
            java.lang.Object r0 = r0.newInstance()     // Catch: java.lang.Exception -> L16
            com.verizon.ads.utils.VASAdsSSLSocketFactory$SSLContextFactory r0 = (com.verizon.ads.utils.VASAdsSSLSocketFactory.SSLContextFactory) r0     // Catch: java.lang.Exception -> L16
            r6 = r0
            goto L3e
        L16:
            r6 = move-exception
            com.verizon.ads.Logger r0 = com.verizon.ads.utils.VASAdsSSLSocketFactory.f61758a
            r7 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "Could not instantiate custom SSLContextFactory using class = "
            r1.<init>(r2)
            r6 = r0
            r0 = r6
            java.lang.String r1 = com.verizon.ads.utils.VASAdsSSLSocketFactory.f61761d
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = ", reverting to default."
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r6
            java.lang.String r1 = r1.toString()
            r0.m5565e(r1)
        L3c:
            r0 = 0
            r6 = r0
        L3e:
            r0 = r6
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L4e
            com.verizon.ads.utils.VASAdsSSLSocketFactory$DefaultSSLContextFactory r0 = new com.verizon.ads.utils.VASAdsSSLSocketFactory$DefaultSSLContextFactory
            r1 = r0
            r2 = r5
            r3 = 0
            r1.<init>()
            r7 = r0
        L4e:
            r0 = r7
            java.lang.String r1 = "TLS"
            javax.net.ssl.SSLContext r0 = r0.getInstance(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.utils.VASAdsSSLSocketFactory.m5298b():javax.net.ssl.SSLContext");
    }

    public static VASAdsSSLSocketFactory getInstance() {
        return f61762h;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) throws IOException {
        return m5300a(this.f61763e.createSocket(str, i));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        return m5300a(this.f61763e.createSocket(str, i, inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        return m5300a(this.f61763e.createSocket(inetAddress, i));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        return m5300a(this.f61763e.createSocket(inetAddress, i, inetAddress2, i2));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        return m5300a(this.f61763e.createSocket(socket, str, i, z));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return this.f61764f;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        return this.f61764f;
    }
}
