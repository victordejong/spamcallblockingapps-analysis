package com.mopub.network;

import android.net.SSLCertificateSocketFactory;
import android.os.Build;
import com.mopub.common.Preconditions;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import java.net.UnknownHostException;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes4-dex2jar.jar:com/mopub/network/CustomSSLSocketFactory.class */
public class CustomSSLSocketFactory extends SSLSocketFactory {

    /* renamed from: a  reason: collision with root package name */
    private SSLCertificateSocketFactory f34723a;

    private CustomSSLSocketFactory() {
    }

    private static void a(Socket socket) {
        if (socket instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) socket;
            sSLSocket.setEnabledProtocols(sSLSocket.getSupportedProtocols());
        }
    }

    public static CustomSSLSocketFactory getDefault(int i) {
        CustomSSLSocketFactory customSSLSocketFactory = new CustomSSLSocketFactory();
        customSSLSocketFactory.f34723a = (SSLCertificateSocketFactory) SSLCertificateSocketFactory.getDefault(i, null);
        return customSSLSocketFactory;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket() throws IOException {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f34723a;
        if (sSLCertificateSocketFactory != null) {
            Socket createSocket = sSLCertificateSocketFactory.createSocket();
            a(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) throws IOException, UnknownHostException {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f34723a;
        if (sSLCertificateSocketFactory != null) {
            Socket createSocket = sSLCertificateSocketFactory.createSocket(str, i);
            a(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException, UnknownHostException {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f34723a;
        if (sSLCertificateSocketFactory != null) {
            Socket createSocket = sSLCertificateSocketFactory.createSocket(str, i, inetAddress, i2);
            a(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f34723a;
        if (sSLCertificateSocketFactory != null) {
            Socket createSocket = sSLCertificateSocketFactory.createSocket(inetAddress, i);
            a(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f34723a;
        if (sSLCertificateSocketFactory != null) {
            Socket createSocket = sSLCertificateSocketFactory.createSocket(inetAddress, i, inetAddress2, i2);
            a(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        if (this.f34723a == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        } else if (Build.VERSION.SDK_INT < 23) {
            if (z && socket != null) {
                socket.close();
            }
            Socket createSocket = this.f34723a.createSocket(InetAddressUtils.getInetAddressByName(str), i);
            a(createSocket);
            Preconditions.checkNotNull(createSocket);
            SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f34723a;
            if (sSLCertificateSocketFactory != null) {
                if (createSocket instanceof SSLSocket) {
                    SSLSocket sSLSocket = (SSLSocket) createSocket;
                    sSLCertificateSocketFactory.setHostname(sSLSocket, str);
                    Preconditions.checkNotNull(sSLSocket);
                    sSLSocket.startHandshake();
                    if (!HttpsURLConnection.getDefaultHostnameVerifier().verify(str, sSLSocket.getSession())) {
                        throw new SSLHandshakeException("Server Name Identification failed.");
                    }
                }
                return createSocket;
            }
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        } else {
            Socket createSocket2 = this.f34723a.createSocket(socket, str, i, z);
            a(createSocket2);
            return createSocket2;
        }
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f34723a;
        return sSLCertificateSocketFactory == null ? new String[0] : sSLCertificateSocketFactory.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f34723a;
        return sSLCertificateSocketFactory == null ? new String[0] : sSLCertificateSocketFactory.getSupportedCipherSuites();
    }
}
