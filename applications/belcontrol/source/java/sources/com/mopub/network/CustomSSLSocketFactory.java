package com.mopub.network;

import android.net.SSLCertificateSocketFactory;
import android.os.Build;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/CustomSSLSocketFactory.class */
public class CustomSSLSocketFactory extends SSLSocketFactory {

    /* renamed from: a */
    public SSLCertificateSocketFactory f5393a;

    private CustomSSLSocketFactory() {
    }

    @VisibleForTesting
    /* renamed from: c */
    public static void m3220c(SSLSocket sSLSocket, String str) {
        Preconditions.checkNotNull(sSLSocket);
        sSLSocket.startHandshake();
        if (HttpsURLConnection.getDefaultHostnameVerifier().verify(str, sSLSocket.getSession())) {
            return;
        }
        throw new SSLHandshakeException("Server Name Identification failed.");
    }

    public static CustomSSLSocketFactory getDefault(int i) {
        CustomSSLSocketFactory customSSLSocketFactory = new CustomSSLSocketFactory();
        customSSLSocketFactory.f5393a = (SSLCertificateSocketFactory) SSLCertificateSocketFactory.getDefault(i, null);
        return customSSLSocketFactory;
    }

    /* renamed from: a */
    public final void m3222a(Socket socket, String str) {
        Preconditions.checkNotNull(socket);
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f5393a;
        if (sSLCertificateSocketFactory != null) {
            if (!(socket instanceof SSLSocket)) {
                return;
            }
            SSLSocket sSLSocket = (SSLSocket) socket;
            sSLCertificateSocketFactory.setHostname(sSLSocket, str);
            m3220c(sSLSocket, str);
            return;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    /* renamed from: b */
    public final void m3221b(Socket socket) {
        if (socket instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) socket;
            sSLSocket.setEnabledProtocols(sSLSocket.getSupportedProtocols());
        }
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket() {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f5393a;
        if (sSLCertificateSocketFactory != null) {
            Socket createSocket = sSLCertificateSocketFactory.createSocket();
            m3221b(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f5393a;
        if (sSLCertificateSocketFactory != null) {
            Socket createSocket = sSLCertificateSocketFactory.createSocket(str, i);
            m3221b(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f5393a;
        if (sSLCertificateSocketFactory != null) {
            Socket createSocket = sSLCertificateSocketFactory.createSocket(str, i, inetAddress, i2);
            m3221b(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f5393a;
        if (sSLCertificateSocketFactory != null) {
            Socket createSocket = sSLCertificateSocketFactory.createSocket(inetAddress, i);
            m3221b(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f5393a;
        if (sSLCertificateSocketFactory != null) {
            Socket createSocket = sSLCertificateSocketFactory.createSocket(inetAddress, i, inetAddress2, i2);
            m3221b(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f5393a;
        if (sSLCertificateSocketFactory != null) {
            if (Build.VERSION.SDK_INT >= 23) {
                Socket createSocket = sSLCertificateSocketFactory.createSocket(socket, str, i, z);
                m3221b(createSocket);
                return createSocket;
            }
            if (z && socket != null) {
                socket.close();
            }
            Socket createSocket2 = this.f5393a.createSocket(InetAddressUtils.getInetAddressByName(str), i);
            m3221b(createSocket2);
            m3222a(createSocket2, str);
            return createSocket2;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f5393a;
        return sSLCertificateSocketFactory == null ? new String[0] : sSLCertificateSocketFactory.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f5393a;
        return sSLCertificateSocketFactory == null ? new String[0] : sSLCertificateSocketFactory.getSupportedCipherSuites();
    }
}
