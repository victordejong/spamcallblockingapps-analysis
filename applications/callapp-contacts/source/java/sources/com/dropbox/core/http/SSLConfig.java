package com.dropbox.core.http;

import com.dropbox.core.util.C8636d;
import com.dropbox.core.util.C8638f;
import com.dropbox.core.util.IOUtil;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/SSLConfig.class */
public class SSLConfig {

    /* renamed from: a */
    private static final X509TrustManager f30552a;

    /* renamed from: b */
    private static final SSLSocketFactory f30553b;

    /* renamed from: f */
    private static C8580a f30557f;

    /* renamed from: c */
    private static final String[] f30554c = {"TLSv1.2"};

    /* renamed from: d */
    private static final String[] f30555d = {"TLSv1.1"};

    /* renamed from: e */
    private static final String[] f30556e = {"TLSv1"};

    /* renamed from: g */
    private static final HashSet<String> f30558g = new HashSet<>(Arrays.asList("SSL_ECDHE_RSA_WITH_AES_256_GCM_SHA384", "SSL_ECDHE_RSA_WITH_AES_256_CBC_SHA384", "SSL_ECDHE_RSA_WITH_AES_256_CBC_SHA", "SSL_ECDHE_RSA_WITH_AES_128_GCM_SHA256", "SSL_ECDHE_RSA_WITH_AES_128_CBC_SHA256", "SSL_ECDHE_RSA_WITH_AES_128_CBC_SHA", "SSL_ECDHE_RSA_WITH_RC4_128_SHA", "SSL_DHE_RSA_WITH_AES_256_GCM_SHA384", "SSL_DHE_RSA_WITH_AES_256_CBC_SHA256", "SSL_DHE_RSA_WITH_AES_256_CBC_SHA", "SSL_DHE_RSA_WITH_AES_128_GCM_SHA256", "SSL_DHE_RSA_WITH_AES_128_CBC_SHA256", "SSL_DHE_RSA_WITH_AES_128_CBC_SHA", "SSL_RSA_WITH_AES_256_GCM_SHA384", "SSL_RSA_WITH_AES_256_CBC_SHA256", "SSL_RSA_WITH_AES_256_CBC_SHA", "SSL_RSA_WITH_AES_128_GCM_SHA256", "SSL_RSA_WITH_AES_128_CBC_SHA256", "SSL_RSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_RSA_WITH_RC4_128_SHA", "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", "TLS_DHE_RSA_WITH_AES_256_CBC_SHA", "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", "TLS_DHE_RSA_WITH_AES_128_CBC_SHA", "TLS_RSA_WITH_AES_256_GCM_SHA384", "TLS_RSA_WITH_AES_256_CBC_SHA256", "TLS_RSA_WITH_AES_256_CBC_SHA", "TLS_RSA_WITH_AES_128_GCM_SHA256", "TLS_RSA_WITH_AES_128_CBC_SHA256", "TLS_RSA_WITH_AES_128_CBC_SHA", "ECDHE-RSA-AES256-GCM-SHA384", "ECDHE-RSA-AES256-SHA384", "ECDHE-RSA-AES256-SHA", "ECDHE-RSA-AES128-GCM-SHA256", "ECDHE-RSA-AES128-SHA256", "ECDHE-RSA-AES128-SHA", "ECDHE-RSA-RC4-SHA", "DHE-RSA-AES256-GCM-SHA384", "DHE-RSA-AES256-SHA256", "DHE-RSA-AES256-SHA", "DHE-RSA-AES128-GCM-SHA256", "DHE-RSA-AES128-SHA256", "DHE-RSA-AES128-SHA", "AES256-GCM-SHA384", "AES256-SHA256", "AES256-SHA", "AES128-GCM-SHA256", "AES128-SHA256", "AES128-SHA"));

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/SSLConfig$LoadException.class */
    public static final class LoadException extends Exception {
        public LoadException(String str, Throwable th) {
            super(str, th);
        }
    }

    /* renamed from: com.dropbox.core.http.SSLConfig$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/SSLConfig$a.class */
    public static final class C8580a {

        /* renamed from: a */
        final String[] f30559a;

        /* renamed from: b */
        final String[] f30560b;

        public C8580a(String[] strArr, String[] strArr2) {
            this.f30559a = strArr;
            this.f30560b = strArr2;
        }
    }

    /* renamed from: com.dropbox.core.http.SSLConfig$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/SSLConfig$b.class */
    static final class C8581b extends SSLSocketFactory {

        /* renamed from: a */
        private final SSLSocketFactory f30561a;

        public C8581b(SSLSocketFactory sSLSocketFactory) {
            this.f30561a = sSLSocketFactory;
        }

        @Override // javax.net.SocketFactory
        public final Socket createSocket(String str, int i) throws IOException {
            Socket createSocket = this.f30561a.createSocket(str, i);
            SSLConfig.m25306a((SSLSocket) createSocket);
            return createSocket;
        }

        @Override // javax.net.SocketFactory
        public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
            Socket createSocket = this.f30561a.createSocket(str, i, inetAddress, i2);
            SSLConfig.m25306a((SSLSocket) createSocket);
            return createSocket;
        }

        @Override // javax.net.SocketFactory
        public final Socket createSocket(InetAddress inetAddress, int i) throws IOException {
            Socket createSocket = this.f30561a.createSocket(inetAddress, i);
            SSLConfig.m25306a((SSLSocket) createSocket);
            return createSocket;
        }

        @Override // javax.net.SocketFactory
        public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
            Socket createSocket = this.f30561a.createSocket(inetAddress, i, inetAddress2, i2);
            SSLConfig.m25306a((SSLSocket) createSocket);
            return createSocket;
        }

        @Override // javax.net.ssl.SSLSocketFactory
        public final Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
            Socket createSocket = this.f30561a.createSocket(socket, str, i, z);
            SSLConfig.m25306a((SSLSocket) createSocket);
            return createSocket;
        }

        @Override // javax.net.ssl.SSLSocketFactory
        public final String[] getDefaultCipherSuites() {
            return this.f30561a.getDefaultCipherSuites();
        }

        @Override // javax.net.ssl.SSLSocketFactory
        public final String[] getSupportedCipherSuites() {
            return this.f30561a.getSupportedCipherSuites();
        }
    }

    static {
        X509TrustManager m25309a = m25309a(m25310a("/com/dropbox/core/trusted-certs.raw"));
        f30552a = m25309a;
        f30553b = new C8581b(m25304a(new TrustManager[]{m25309a}).getSocketFactory());
    }

    /* renamed from: a */
    private static KeyStore m25310a(String str) {
        try {
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load(null, new char[0]);
            InputStream resourceAsStream = SSLConfig.class.getResourceAsStream(str);
            try {
                if (resourceAsStream == null) {
                    throw new AssertionError("Couldn't find resource \"" + str + "\"");
                }
                try {
                    try {
                        m25308a(keyStore, resourceAsStream);
                        IOUtil.m25243b(resourceAsStream);
                        return keyStore;
                    } catch (LoadException e) {
                        throw C8636d.m25222a("Error loading from \"" + str + "\"", (Throwable) e);
                    }
                } catch (IOException e2) {
                    throw C8636d.m25222a("Error loading from \"" + str + "\"", (Throwable) e2);
                } catch (KeyStoreException e3) {
                    throw C8636d.m25222a("Error loading from \"" + str + "\"", (Throwable) e3);
                }
            } catch (Throwable th) {
                IOUtil.m25243b(resourceAsStream);
                throw th;
            }
        } catch (IOException e4) {
            throw C8636d.m25222a("Couldn't initialize KeyStore", (Throwable) e4);
        } catch (KeyStoreException e5) {
            throw C8636d.m25222a("Couldn't initialize KeyStore", (Throwable) e5);
        } catch (NoSuchAlgorithmException e6) {
            throw C8636d.m25222a("Couldn't initialize KeyStore", (Throwable) e6);
        } catch (CertificateException e7) {
            throw C8636d.m25222a("Couldn't initialize KeyStore", (Throwable) e7);
        }
    }

    /* renamed from: a */
    private static SSLContext m25304a(TrustManager[] trustManagerArr) {
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            try {
                sSLContext.init(null, trustManagerArr, null);
                return sSLContext;
            } catch (KeyManagementException e) {
                throw C8636d.m25222a("Couldn't initialize SSLContext", (Throwable) e);
            }
        } catch (NoSuchAlgorithmException e2) {
            throw C8636d.m25222a("Couldn't create SSLContext", (Throwable) e2);
        }
    }

    /* renamed from: a */
    public static X509TrustManager m25311a() {
        return f30552a;
    }

    /* renamed from: a */
    private static X509TrustManager m25309a(KeyStore keyStore) {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance("X509");
            try {
                trustManagerFactory.init(keyStore);
                TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
                if (trustManagers.length != 1) {
                    throw new AssertionError("More than 1 TrustManager created.");
                }
                if (trustManagers[0] instanceof X509TrustManager) {
                    return (X509TrustManager) trustManagers[0];
                }
                throw new AssertionError("TrustManager not of type X509: " + trustManagers[0].getClass());
            } catch (KeyStoreException e) {
                throw C8636d.m25222a("Unable to initialize TrustManagerFactory with key store", (Throwable) e);
            }
        } catch (NoSuchAlgorithmException e2) {
            throw C8636d.m25222a("Unable to create TrustManagerFactory", (Throwable) e2);
        }
    }

    /* renamed from: a */
    private static void m25308a(KeyStore keyStore, InputStream inputStream) throws IOException, LoadException, KeyStoreException {
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            try {
                ArrayList<X509Certificate> arrayList = new ArrayList();
                DataInputStream dataInputStream = new DataInputStream(inputStream);
                byte[] bArr = new byte[10240];
                while (true) {
                    int readUnsignedShort = dataInputStream.readUnsignedShort();
                    if (readUnsignedShort == 0) {
                        if (dataInputStream.read() >= 0) {
                            throw new LoadException("Found data after after zero-length header.", null);
                        }
                        for (X509Certificate x509Certificate : arrayList) {
                            try {
                                keyStore.setCertificateEntry(x509Certificate.getSubjectX500Principal().getName(), x509Certificate);
                            } catch (KeyStoreException e) {
                                throw new LoadException("Error loading certificate: " + e.getMessage(), e);
                            }
                        }
                        return;
                    } else if (readUnsignedShort > 10240) {
                        throw new LoadException("Invalid length for certificate entry: ".concat(String.valueOf(readUnsignedShort)), null);
                    } else {
                        dataInputStream.readFully(bArr, 0, readUnsignedShort);
                        arrayList.add((X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(bArr, 0, readUnsignedShort)));
                    }
                }
            } catch (CertificateException e2) {
                throw new LoadException("Error loading certificate: " + e2.getMessage(), e2);
            }
        } catch (CertificateException e3) {
            throw C8636d.m25222a("Couldn't initialize X.509 CertificateFactory", (Throwable) e3);
        }
    }

    /* renamed from: a */
    public static void m25307a(HttpsURLConnection httpsURLConnection) throws SSLException {
        httpsURLConnection.setSSLSocketFactory(f30553b);
    }

    /* renamed from: a */
    static /* synthetic */ void m25306a(SSLSocket sSLSocket) throws SSLException {
        String[] strArr;
        boolean z;
        boolean z2;
        String[] enabledProtocols = sSLSocket.getEnabledProtocols();
        int length = enabledProtocols.length;
        int i = 0;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        while (i < length) {
            String str = enabledProtocols[i];
            if (str.equals("TLSv1.2")) {
                z2 = true;
                z = z4;
            } else if (str.equals("TLSv1.1")) {
                z = true;
                z2 = z3;
            } else {
                z2 = z3;
                z = z4;
                if (str.equals("TLSv1")) {
                    z5 = true;
                    z = z4;
                    z2 = z3;
                }
            }
            i++;
            z3 = z2;
            z4 = z;
        }
        if (z3) {
            strArr = f30554c;
        } else if (z4) {
            strArr = f30555d;
        } else if (!z5) {
            throw new SSLException("Socket's available protocols doesn't overlap with our allowed protocols: " + C8638f.m25216a(enabledProtocols) + ".");
        } else {
            strArr = f30556e;
        }
        sSLSocket.setEnabledProtocols(strArr);
        sSLSocket.setEnabledCipherSuites(m25305a(sSLSocket.getEnabledCipherSuites()));
    }

    /* renamed from: a */
    private static String[] m25305a(String[] strArr) {
        C8580a c8580a = f30557f;
        if (c8580a == null || !Arrays.equals(c8580a.f30559a, strArr)) {
            ArrayList arrayList = new ArrayList(f30558g.size());
            for (String str : strArr) {
                if (f30558g.contains(str)) {
                    arrayList.add(str);
                }
            }
            String[] strArr2 = (String[]) arrayList.toArray(new String[arrayList.size()]);
            f30557f = new C8580a(strArr, strArr2);
            return strArr2;
        }
        return c8580a.f30560b;
    }

    /* renamed from: b */
    public static SSLSocketFactory m25303b() {
        return f30553b;
    }
}
