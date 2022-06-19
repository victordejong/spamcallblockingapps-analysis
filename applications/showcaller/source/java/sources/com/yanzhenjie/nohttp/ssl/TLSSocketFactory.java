package com.yanzhenjie.nohttp.ssl;

import android.os.Build;
import java.net.InetAddress;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/ssl/TLSSocketFactory.class */
public class TLSSocketFactory extends SSLSocketFactory {
    private static final X509TrustManager DEFAULT_TRUST_MANAGERS;
    private static final String[] PROTOCOL_ARRAY;
    private SSLSocketFactory delegate;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            PROTOCOL_ARRAY = new String[]{"TLSv1", "TLSv1.1", "TLSv1.2"};
        } else if (i >= 16) {
            PROTOCOL_ARRAY = new String[]{"SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"};
        } else {
            PROTOCOL_ARRAY = new String[]{"SSLv3", "TLSv1"};
        }
        DEFAULT_TRUST_MANAGERS = new X509TrustManager() { // from class: com.yanzhenjie.nohttp.ssl.TLSSocketFactory.1
            @Override // javax.net.ssl.X509TrustManager
            public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
            }

            @Override // javax.net.ssl.X509TrustManager
            public X509Certificate[] getAcceptedIssuers() {
                return new X509Certificate[0];
            }
        };
    }

    public TLSSocketFactory() {
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, new TrustManager[]{DEFAULT_TRUST_MANAGERS}, new SecureRandom());
            this.delegate = sSLContext.getSocketFactory();
        } catch (GeneralSecurityException e) {
            throw new AssertionError();
        }
    }

    public TLSSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.delegate = sSLSocketFactory;
    }

    private static void setSupportProtocolAndCipherSuites(Socket socket) {
        if (socket instanceof SSLSocket) {
            ((SSLSocket) socket).setEnabledProtocols(PROTOCOL_ARRAY);
        }
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket() {
        Socket createSocket = this.delegate.createSocket();
        setSupportProtocolAndCipherSuites(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) {
        Socket createSocket = this.delegate.createSocket(str, i);
        setSupportProtocolAndCipherSuites(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        Socket createSocket = this.delegate.createSocket(str, i, inetAddress, i2);
        setSupportProtocolAndCipherSuites(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) {
        Socket createSocket = this.delegate.createSocket(inetAddress, i);
        setSupportProtocolAndCipherSuites(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        Socket createSocket = this.delegate.createSocket(inetAddress, i, inetAddress2, i2);
        setSupportProtocolAndCipherSuites(createSocket);
        return createSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) {
        Socket createSocket = this.delegate.createSocket(socket, str, i, z);
        setSupportProtocolAndCipherSuites(createSocket);
        return createSocket;
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
