package com.dropbox.core.http;

import com.dropbox.core.util.IOUtil;
import com.dropbox.core.util.d;
import com.dropbox.core.util.f;
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

    /* renamed from: a  reason: collision with root package name */
    private static final X509TrustManager f17771a;

    /* renamed from: b  reason: collision with root package name */
    private static final SSLSocketFactory f17772b;
    private static a f;

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f17773c = {"TLSv1.2"};

    /* renamed from: d  reason: collision with root package name */
    private static final String[] f17774d = {"TLSv1.1"};
    private static final String[] e = {"TLSv1"};
    private static final HashSet<String> g = new HashSet<>(Arrays.asList("SSL_ECDHE_RSA_WITH_AES_256_GCM_SHA384", "SSL_ECDHE_RSA_WITH_AES_256_CBC_SHA384", "SSL_ECDHE_RSA_WITH_AES_256_CBC_SHA", "SSL_ECDHE_RSA_WITH_AES_128_GCM_SHA256", "SSL_ECDHE_RSA_WITH_AES_128_CBC_SHA256", "SSL_ECDHE_RSA_WITH_AES_128_CBC_SHA", "SSL_ECDHE_RSA_WITH_RC4_128_SHA", "SSL_DHE_RSA_WITH_AES_256_GCM_SHA384", "SSL_DHE_RSA_WITH_AES_256_CBC_SHA256", "SSL_DHE_RSA_WITH_AES_256_CBC_SHA", "SSL_DHE_RSA_WITH_AES_128_GCM_SHA256", "SSL_DHE_RSA_WITH_AES_128_CBC_SHA256", "SSL_DHE_RSA_WITH_AES_128_CBC_SHA", "SSL_RSA_WITH_AES_256_GCM_SHA384", "SSL_RSA_WITH_AES_256_CBC_SHA256", "SSL_RSA_WITH_AES_256_CBC_SHA", "SSL_RSA_WITH_AES_128_GCM_SHA256", "SSL_RSA_WITH_AES_128_CBC_SHA256", "SSL_RSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_RSA_WITH_RC4_128_SHA", "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", "TLS_DHE_RSA_WITH_AES_256_CBC_SHA", "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", "TLS_DHE_RSA_WITH_AES_128_CBC_SHA", "TLS_RSA_WITH_AES_256_GCM_SHA384", "TLS_RSA_WITH_AES_256_CBC_SHA256", "TLS_RSA_WITH_AES_256_CBC_SHA", "TLS_RSA_WITH_AES_128_GCM_SHA256", "TLS_RSA_WITH_AES_128_CBC_SHA256", "TLS_RSA_WITH_AES_128_CBC_SHA", "ECDHE-RSA-AES256-GCM-SHA384", "ECDHE-RSA-AES256-SHA384", "ECDHE-RSA-AES256-SHA", "ECDHE-RSA-AES128-GCM-SHA256", "ECDHE-RSA-AES128-SHA256", "ECDHE-RSA-AES128-SHA", "ECDHE-RSA-RC4-SHA", "DHE-RSA-AES256-GCM-SHA384", "DHE-RSA-AES256-SHA256", "DHE-RSA-AES256-SHA", "DHE-RSA-AES128-GCM-SHA256", "DHE-RSA-AES128-SHA256", "DHE-RSA-AES128-SHA", "AES256-GCM-SHA384", "AES256-SHA256", "AES256-SHA", "AES128-GCM-SHA256", "AES128-SHA256", "AES128-SHA"));

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/SSLConfig$LoadException.class */
    public static final class LoadException extends Exception {
        public LoadException(String str, Throwable th) {
            super(str, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/SSLConfig$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final String[] f17775a;

        /* renamed from: b  reason: collision with root package name */
        final String[] f17776b;

        public a(String[] strArr, String[] strArr2) {
            this.f17775a = strArr;
            this.f17776b = strArr2;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/SSLConfig$b.class */
    static final class b extends SSLSocketFactory {

        /* renamed from: a  reason: collision with root package name */
        private final SSLSocketFactory f17777a;

        public b(SSLSocketFactory sSLSocketFactory) {
            this.f17777a = sSLSocketFactory;
        }

        @Override // javax.net.SocketFactory
        public final Socket createSocket(String str, int i) throws IOException {
            Socket createSocket = this.f17777a.createSocket(str, i);
            SSLConfig.a((SSLSocket) createSocket);
            return createSocket;
        }

        @Override // javax.net.SocketFactory
        public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
            Socket createSocket = this.f17777a.createSocket(str, i, inetAddress, i2);
            SSLConfig.a((SSLSocket) createSocket);
            return createSocket;
        }

        @Override // javax.net.SocketFactory
        public final Socket createSocket(InetAddress inetAddress, int i) throws IOException {
            Socket createSocket = this.f17777a.createSocket(inetAddress, i);
            SSLConfig.a((SSLSocket) createSocket);
            return createSocket;
        }

        @Override // javax.net.SocketFactory
        public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
            Socket createSocket = this.f17777a.createSocket(inetAddress, i, inetAddress2, i2);
            SSLConfig.a((SSLSocket) createSocket);
            return createSocket;
        }

        @Override // javax.net.ssl.SSLSocketFactory
        public final Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
            Socket createSocket = this.f17777a.createSocket(socket, str, i, z);
            SSLConfig.a((SSLSocket) createSocket);
            return createSocket;
        }

        @Override // javax.net.ssl.SSLSocketFactory
        public final String[] getDefaultCipherSuites() {
            return this.f17777a.getDefaultCipherSuites();
        }

        @Override // javax.net.ssl.SSLSocketFactory
        public final String[] getSupportedCipherSuites() {
            return this.f17777a.getSupportedCipherSuites();
        }
    }

    static {
        X509TrustManager a2 = a(a("/com/dropbox/core/trusted-certs.raw"));
        f17771a = a2;
        f17772b = new b(a(new TrustManager[]{a2}).getSocketFactory());
    }

    private static KeyStore a(String str) {
        try {
            KeyStore instance = KeyStore.getInstance(KeyStore.getDefaultType());
            instance.load(null, new char[0]);
            InputStream resourceAsStream = SSLConfig.class.getResourceAsStream(str);
            try {
                if (resourceAsStream != null) {
                    try {
                        try {
                            a(instance, resourceAsStream);
                            IOUtil.b(resourceAsStream);
                            return instance;
                        } catch (LoadException e2) {
                            throw d.a("Error loading from \"" + str + "\"", (Throwable) e2);
                        }
                    } catch (IOException e3) {
                        throw d.a("Error loading from \"" + str + "\"", (Throwable) e3);
                    } catch (KeyStoreException e4) {
                        throw d.a("Error loading from \"" + str + "\"", (Throwable) e4);
                    }
                } else {
                    throw new AssertionError("Couldn't find resource \"" + str + "\"");
                }
            } catch (Throwable th) {
                IOUtil.b(resourceAsStream);
                throw th;
            }
        } catch (IOException e5) {
            throw d.a("Couldn't initialize KeyStore", (Throwable) e5);
        } catch (KeyStoreException e6) {
            throw d.a("Couldn't initialize KeyStore", (Throwable) e6);
        } catch (NoSuchAlgorithmException e7) {
            throw d.a("Couldn't initialize KeyStore", (Throwable) e7);
        } catch (CertificateException e8) {
            throw d.a("Couldn't initialize KeyStore", (Throwable) e8);
        }
    }

    private static SSLContext a(TrustManager[] trustManagerArr) {
        try {
            SSLContext instance = SSLContext.getInstance("TLS");
            try {
                instance.init(null, trustManagerArr, null);
                return instance;
            } catch (KeyManagementException e2) {
                throw d.a("Couldn't initialize SSLContext", (Throwable) e2);
            }
        } catch (NoSuchAlgorithmException e3) {
            throw d.a("Couldn't create SSLContext", (Throwable) e3);
        }
    }

    public static X509TrustManager a() {
        return f17771a;
    }

    private static X509TrustManager a(KeyStore keyStore) {
        try {
            TrustManagerFactory instance = TrustManagerFactory.getInstance("X509");
            try {
                instance.init(keyStore);
                TrustManager[] trustManagers = instance.getTrustManagers();
                if (trustManagers.length != 1) {
                    throw new AssertionError("More than 1 TrustManager created.");
                } else if (trustManagers[0] instanceof X509TrustManager) {
                    return (X509TrustManager) trustManagers[0];
                } else {
                    throw new AssertionError("TrustManager not of type X509: " + trustManagers[0].getClass());
                }
            } catch (KeyStoreException e2) {
                throw d.a("Unable to initialize TrustManagerFactory with key store", (Throwable) e2);
            }
        } catch (NoSuchAlgorithmException e3) {
            throw d.a("Unable to create TrustManagerFactory", (Throwable) e3);
        }
    }

    private static void a(KeyStore keyStore, InputStream inputStream) throws IOException, LoadException, KeyStoreException {
        try {
            CertificateFactory instance = CertificateFactory.getInstance("X.509");
            try {
                ArrayList<X509Certificate> arrayList = new ArrayList();
                DataInputStream dataInputStream = new DataInputStream(inputStream);
                byte[] bArr = new byte[10240];
                while (true) {
                    int readUnsignedShort = dataInputStream.readUnsignedShort();
                    if (readUnsignedShort != 0) {
                        if (readUnsignedShort <= 10240) {
                            dataInputStream.readFully(bArr, 0, readUnsignedShort);
                            arrayList.add((X509Certificate) instance.generateCertificate(new ByteArrayInputStream(bArr, 0, readUnsignedShort)));
                        } else {
                            throw new LoadException("Invalid length for certificate entry: ".concat(String.valueOf(readUnsignedShort)), null);
                        }
                    } else if (dataInputStream.read() < 0) {
                        for (X509Certificate x509Certificate : arrayList) {
                            try {
                                keyStore.setCertificateEntry(x509Certificate.getSubjectX500Principal().getName(), x509Certificate);
                            } catch (KeyStoreException e2) {
                                throw new LoadException("Error loading certificate: " + e2.getMessage(), e2);
                            }
                        }
                        return;
                    } else {
                        throw new LoadException("Found data after after zero-length header.", null);
                    }
                }
            } catch (CertificateException e3) {
                throw new LoadException("Error loading certificate: " + e3.getMessage(), e3);
            }
        } catch (CertificateException e4) {
            throw d.a("Couldn't initialize X.509 CertificateFactory", (Throwable) e4);
        }
    }

    public static void a(HttpsURLConnection httpsURLConnection) throws SSLException {
        httpsURLConnection.setSSLSocketFactory(f17772b);
    }

    static /* synthetic */ void a(SSLSocket sSLSocket) throws SSLException {
        String[] enabledProtocols;
        String[] strArr;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        for (String str : sSLSocket.getEnabledProtocols()) {
            if (str.equals("TLSv1.2")) {
                z = true;
                z2 = z2;
            } else if (str.equals("TLSv1.1")) {
                z2 = true;
                z = z;
            } else {
                z = z;
                z2 = z2;
                if (str.equals("TLSv1")) {
                    z3 = true;
                    z2 = z2;
                    z = z;
                }
            }
        }
        if (z) {
            strArr = f17773c;
        } else if (z2) {
            strArr = f17774d;
        } else if (z3) {
            strArr = e;
        } else {
            throw new SSLException("Socket's available protocols doesn't overlap with our allowed protocols: " + f.a(enabledProtocols) + ".");
        }
        sSLSocket.setEnabledProtocols(strArr);
        sSLSocket.setEnabledCipherSuites(a(sSLSocket.getEnabledCipherSuites()));
    }

    private static String[] a(String[] strArr) {
        a aVar = f;
        if (aVar != null && Arrays.equals(aVar.f17775a, strArr)) {
            return aVar.f17776b;
        }
        ArrayList arrayList = new ArrayList(g.size());
        for (String str : strArr) {
            if (g.contains(str)) {
                arrayList.add(str);
            }
        }
        String[] strArr2 = (String[]) arrayList.toArray(new String[arrayList.size()]);
        f = new a(strArr, strArr2);
        return strArr2;
    }

    public static SSLSocketFactory b() {
        return f17772b;
    }
}
