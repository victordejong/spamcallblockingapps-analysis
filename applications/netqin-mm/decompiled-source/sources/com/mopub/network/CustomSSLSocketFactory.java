package com.mopub.network;

import android.net.SSLCertificateSocketFactory;
import android.os.Build;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import java.net.UnknownHostException;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes2-dex2jar.jar:com/mopub/network/CustomSSLSocketFactory.class */
public class CustomSSLSocketFactory extends SSLSocketFactory {

    /* renamed from: a */
    public SSLCertificateSocketFactory f35023a;

    @VisibleForTesting
    /* renamed from: a */
    public static void m3801a(SSLSocket sSLSocket, String str) throws IOException {
        Preconditions.checkNotNull(sSLSocket);
        sSLSocket.startHandshake();
        if (!HttpsURLConnection.getDefaultHostnameVerifier().verify(str, sSLSocket.getSession())) {
            throw new SSLHandshakeException("Server Name Identification failed.");
        }
    }

    public static CustomSSLSocketFactory getDefault(int i) {
        CustomSSLSocketFactory customSSLSocketFactory = new CustomSSLSocketFactory();
        customSSLSocketFactory.f35023a = (SSLCertificateSocketFactory) SSLCertificateSocketFactory.getDefault(i, null);
        return customSSLSocketFactory;
    }

    /* renamed from: a */
    public final void m3803a(Socket socket) {
        if (socket instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) socket;
            sSLSocket.setEnabledProtocols(sSLSocket.getSupportedProtocols());
        }
    }

    /* renamed from: a */
    public final void m3802a(Socket socket, String str) throws IOException {
        Preconditions.checkNotNull(socket);
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f35023a;
        if (sSLCertificateSocketFactory == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        } else if (socket instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) socket;
            sSLCertificateSocketFactory.setHostname(sSLSocket, str);
            m3801a(sSLSocket, str);
        }
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket() throws IOException {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f35023a;
        if (sSLCertificateSocketFactory != null) {
            Socket createSocket = sSLCertificateSocketFactory.createSocket();
            m3803a(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) throws IOException, UnknownHostException {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f35023a;
        if (sSLCertificateSocketFactory != null) {
            Socket createSocket = sSLCertificateSocketFactory.createSocket(str, i);
            m3803a(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException, UnknownHostException {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f35023a;
        if (sSLCertificateSocketFactory != null) {
            Socket createSocket = sSLCertificateSocketFactory.createSocket(str, i, inetAddress, i2);
            m3803a(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f35023a;
        if (sSLCertificateSocketFactory != null) {
            Socket createSocket = sSLCertificateSocketFactory.createSocket(inetAddress, i);
            m3803a(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f35023a;
        if (sSLCertificateSocketFactory != null) {
            Socket createSocket = sSLCertificateSocketFactory.createSocket(inetAddress, i, inetAddress2, i2);
            m3803a(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f35023a;
        if (sSLCertificateSocketFactory == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        } else if (Build.VERSION.SDK_INT < 23) {
            if (z && socket != null) {
                socket.close();
            }
            Socket createSocket = this.f35023a.createSocket(InetAddressUtils.getInetAddressByName(str), i);
            m3803a(createSocket);
            m3802a(createSocket, str);
            return createSocket;
        } else {
            Socket createSocket2 = sSLCertificateSocketFactory.createSocket(socket, str, i, z);
            m3803a(createSocket2);
            return createSocket2;
        }
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f35023a;
        return sSLCertificateSocketFactory == null ? new String[0] : sSLCertificateSocketFactory.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f35023a;
        return sSLCertificateSocketFactory == null ? new String[0] : sSLCertificateSocketFactory.getSupportedCipherSuites();
    }
}
