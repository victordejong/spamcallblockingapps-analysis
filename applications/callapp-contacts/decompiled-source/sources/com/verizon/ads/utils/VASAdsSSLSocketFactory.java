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

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35662a = Logger.getInstance(VASAdsSSLSocketFactory.class);

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f35663b = {"TLSv1.1", "TLSv1.2"};

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f35664c = {"TLS_RSA_WITH_AES_128_CBC_SHA", "TLS_RSA_WITH_AES_128_GCM_SHA256", "TLS_RSA_WITH_AES_256_CBC_SHA", "TLS_RSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"};

    /* renamed from: d  reason: collision with root package name */
    private static String f35665d = null;
    private static volatile VASAdsSSLSocketFactory h = new VASAdsSSLSocketFactory().a();
    private SSLSocketFactory e;
    private String[] f = null;
    private String[] g = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/utils/VASAdsSSLSocketFactory$DefaultSSLContextFactory.class */
    public class DefaultSSLContextFactory implements SSLContextFactory {
        private DefaultSSLContextFactory() {
        }

        @Override // com.verizon.ads.utils.VASAdsSSLSocketFactory.SSLContextFactory
        public SSLContext getInstance(String str) throws NoSuchAlgorithmException, KeyManagementException {
            SSLContext instance = SSLContext.getInstance(str);
            instance.init(null, null, null);
            return instance;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/utils/VASAdsSSLSocketFactory$SSLContextFactory.class */
    public interface SSLContextFactory {
        SSLContext getInstance(String str) throws NoSuchAlgorithmException, KeyManagementException;
    }

    private VASAdsSSLSocketFactory() {
    }

    private VASAdsSSLSocketFactory a() {
        if (Logger.isLogLevelEnabled(3)) {
            f35662a.d("Initializing SSLSocketFactory");
        }
        try {
            SSLContext b2 = b();
            if (b2 != null) {
                SSLSocketFactory socketFactory = b2.getSocketFactory();
                this.e = socketFactory;
                SSLSocket sSLSocket = (SSLSocket) socketFactory.createSocket();
                this.g = a(sSLSocket.getSupportedProtocols(), f35663b);
                this.f = a(sSLSocket.getSupportedCipherSuites(), f35664c);
                sSLSocket.close();
                if (Logger.isLogLevelEnabled(3)) {
                    Logger logger = f35662a;
                    logger.d("Protocols enabled: " + Arrays.toString(this.g));
                    logger.d("Cipher suites enabled: " + Arrays.toString(this.f));
                }
                return this;
            }
            f35662a.e("Failed to instantiate a valid SSLContext.");
            return null;
        } catch (Exception e) {
            f35662a.e("Failed to initialize SSLSocketFactory", e);
            return null;
        }
    }

    private Socket a(Socket socket) {
        if (socket instanceof SSLSocket) {
            if (Logger.isLogLevelEnabled(3)) {
                f35662a.d("Setting enabled protocols and cipher suites on secure socket");
            }
            try {
                ((SSLSocket) socket).setEnabledProtocols(this.g);
                ((SSLSocket) socket).setEnabledCipherSuites(this.f);
            } catch (Exception e) {
                Logger logger = f35662a;
                logger.e("Failed to set secure socket properties - " + e.getMessage());
            }
        }
        return socket;
    }

    private static String[] a(String[] strArr, String[] strArr2) {
        HashSet hashSet = new HashSet(Arrays.asList(strArr));
        HashSet hashSet2 = new HashSet(Arrays.asList(strArr2));
        hashSet2.retainAll(hashSet);
        return (String[]) hashSet2.toArray(new String[0]);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private javax.net.ssl.SSLContext b() throws java.security.NoSuchAlgorithmException, java.security.KeyManagementException {
        /*
            r5 = this;
            java.lang.String r0 = com.verizon.ads.utils.VASAdsSSLSocketFactory.f35665d
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x003c
            r0 = r6
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: Exception -> 0x0016
            java.lang.Object r0 = r0.newInstance()     // Catch: Exception -> 0x0016
            com.verizon.ads.utils.VASAdsSSLSocketFactory$SSLContextFactory r0 = (com.verizon.ads.utils.VASAdsSSLSocketFactory.SSLContextFactory) r0     // Catch: Exception -> 0x0016
            r6 = r0
            goto L_0x003e
        L_0x0016:
            r6 = move-exception
            com.verizon.ads.Logger r0 = com.verizon.ads.utils.VASAdsSSLSocketFactory.f35662a
            r7 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "Could not instantiate custom SSLContextFactory using class = "
            r1.<init>(r2)
            r6 = r0
            r0 = r6
            java.lang.String r1 = com.verizon.ads.utils.VASAdsSSLSocketFactory.f35665d
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = ", reverting to default."
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r6
            java.lang.String r1 = r1.toString()
            r0.e(r1)
        L_0x003c:
            r0 = 0
            r6 = r0
        L_0x003e:
            r0 = r6
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L_0x004e
            com.verizon.ads.utils.VASAdsSSLSocketFactory$DefaultSSLContextFactory r0 = new com.verizon.ads.utils.VASAdsSSLSocketFactory$DefaultSSLContextFactory
            r1 = r0
            r2 = r5
            r3 = 0
            r1.<init>()
            r7 = r0
        L_0x004e:
            r0 = r7
            java.lang.String r1 = "TLS"
            javax.net.ssl.SSLContext r0 = r0.getInstance(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.utils.VASAdsSSLSocketFactory.b():javax.net.ssl.SSLContext");
    }

    public static VASAdsSSLSocketFactory getInstance() {
        return h;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) throws IOException {
        return a(this.e.createSocket(str, i));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        return a(this.e.createSocket(str, i, inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        return a(this.e.createSocket(inetAddress, i));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        return a(this.e.createSocket(inetAddress, i, inetAddress2, i2));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        return a(this.e.createSocket(socket, str, i, z));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return this.f;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        return this.f;
    }
}
