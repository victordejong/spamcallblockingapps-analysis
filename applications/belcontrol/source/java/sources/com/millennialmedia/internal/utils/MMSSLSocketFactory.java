package com.millennialmedia.internal.utils;

import com.millennialmedia.MMLog;
import java.net.InetAddress;
import java.net.Socket;
import java.util.Arrays;
import java.util.HashSet;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/MMSSLSocketFactory.class */
public class MMSSLSocketFactory extends SSLSocketFactory {
    private String[] enabledCipherSuites = null;
    private String[] enabledProtocols = null;
    private SSLSocketFactory socketFactory;
    private static final String TAG = MMSSLSocketFactory.class.getSimpleName();
    private static final String[] SUPPORTED_PROTOCOLS = {"TLSv1.1", "TLSv1.2"};
    private static final String[] SUPPORTED_CIPHER_SUITES = {"TLS_RSA_WITH_AES_128_CBC_SHA", "TLS_RSA_WITH_AES_128_GCM_SHA256", "TLS_RSA_WITH_AES_256_CBC_SHA", "TLS_RSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"};
    private static String sslContextFactoryClass = null;
    private static volatile MMSSLSocketFactory instance = new MMSSLSocketFactory().init();

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/MMSSLSocketFactory$DefaultMMSSLContextFactory.class */
    public class DefaultMMSSLContextFactory implements MMSSLContextFactory {
        private DefaultMMSSLContextFactory() {
            MMSSLSocketFactory.this = r4;
        }

        @Override // com.millennialmedia.internal.utils.MMSSLSocketFactory.MMSSLContextFactory
        public SSLContext getInstance(String str) {
            SSLContext sSLContext = SSLContext.getInstance(str);
            sSLContext.init(null, null, null);
            return sSLContext;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/MMSSLSocketFactory$MMSSLContextFactory.class */
    public interface MMSSLContextFactory {
        SSLContext getInstance(String str);
    }

    private MMSSLSocketFactory() {
    }

    private static String[] getEnabledEntries(String[] strArr, String[] strArr2) {
        HashSet hashSet = new HashSet(Arrays.asList(strArr));
        HashSet hashSet2 = new HashSet(Arrays.asList(strArr2));
        hashSet2.retainAll(hashSet);
        return (String[]) hashSet2.toArray(new String[0]);
    }

    public static MMSSLSocketFactory getInstance() {
        return instance;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private javax.net.ssl.SSLContext getSSLContext() {
        /*
            r5 = this;
            java.lang.String r0 = com.millennialmedia.internal.utils.MMSSLSocketFactory.sslContextFactoryClass
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L41
            r0 = r6
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.Exception -> L16
            java.lang.Object r0 = r0.newInstance()     // Catch: java.lang.Exception -> L16
            com.millennialmedia.internal.utils.MMSSLSocketFactory$MMSSLContextFactory r0 = (com.millennialmedia.internal.utils.MMSSLSocketFactory.MMSSLContextFactory) r0     // Catch: java.lang.Exception -> L16
            r6 = r0
            goto L43
        L16:
            r6 = move-exception
            java.lang.String r0 = com.millennialmedia.internal.utils.MMSSLSocketFactory.TAG
            r6 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "Could not instantiate custom MMSSLContextFactory using class = "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r1 = com.millennialmedia.internal.utils.MMSSLSocketFactory.sslContextFactoryClass
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r1 = ", reverting to default."
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r7
            java.lang.String r1 = r1.toString()
            com.millennialmedia.MMLog.m4068e(r0, r1)
        L41:
            r0 = 0
            r6 = r0
        L43:
            r0 = r6
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L53
            com.millennialmedia.internal.utils.MMSSLSocketFactory$DefaultMMSSLContextFactory r0 = new com.millennialmedia.internal.utils.MMSSLSocketFactory$DefaultMMSSLContextFactory
            r1 = r0
            r2 = r5
            r3 = 0
            r1.<init>()
            r7 = r0
        L53:
            r0 = r7
            java.lang.String r1 = "TLS"
            javax.net.ssl.SSLContext r0 = r0.getInstance(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.internal.utils.MMSSLSocketFactory.getSSLContext():javax.net.ssl.SSLContext");
    }

    private MMSSLSocketFactory init() {
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, "Initializing MMSSLSocketFactory");
        }
        try {
            SSLContext sSLContext = getSSLContext();
            if (sSLContext == null) {
                MMLog.m4068e(TAG, "Failed to instantiate a valid SSLContext.");
                return null;
            }
            SSLSocketFactory socketFactory = sSLContext.getSocketFactory();
            this.socketFactory = socketFactory;
            SSLSocket sSLSocket = (SSLSocket) socketFactory.createSocket();
            this.enabledProtocols = getEnabledEntries(sSLSocket.getSupportedProtocols(), SUPPORTED_PROTOCOLS);
            this.enabledCipherSuites = getEnabledEntries(sSLSocket.getSupportedCipherSuites(), SUPPORTED_CIPHER_SUITES);
            sSLSocket.close();
            if (MMLog.isDebugEnabled()) {
                String str = TAG;
                MMLog.m4070d(str, "Protocols enabled: " + Arrays.toString(this.enabledProtocols));
                MMLog.m4070d(str, "Cipher suites enabled: " + Arrays.toString(this.enabledCipherSuites));
            }
            return this;
        } catch (Exception e) {
            MMLog.m4067e(TAG, "Failed to initialize MMSSLSocketFactory", e);
            return null;
        }
    }

    private Socket secureSocket(Socket socket) {
        if (socket instanceof SSLSocket) {
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(TAG, "Setting enabled protocols and cipher suites on secure socket");
            }
            try {
                ((SSLSocket) socket).setEnabledProtocols(this.enabledProtocols);
                ((SSLSocket) socket).setEnabledCipherSuites(this.enabledCipherSuites);
            } catch (Exception e) {
                String str = TAG;
                MMLog.m4068e(str, "Failed to set secure socket properties - " + e.getMessage());
            }
        }
        return socket;
    }

    public static void setSSLContextFactoryClass(String str) {
        sslContextFactoryClass = str;
        instance.init();
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) {
        return secureSocket(this.socketFactory.createSocket(str, i));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        return secureSocket(this.socketFactory.createSocket(str, i, inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) {
        return secureSocket(this.socketFactory.createSocket(inetAddress, i));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        return secureSocket(this.socketFactory.createSocket(inetAddress, i, inetAddress2, i2));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) {
        return secureSocket(this.socketFactory.createSocket(socket, str, i, z));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return this.enabledCipherSuites;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        return this.enabledCipherSuites;
    }
}
