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

    /* renamed from: a */
    private SSLCertificateSocketFactory f60291a;

    private CustomSSLSocketFactory() {
    }

    /* renamed from: a */
    private static void m6055a(Socket socket) {
        if (socket instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) socket;
            sSLSocket.setEnabledProtocols(sSLSocket.getSupportedProtocols());
        }
    }

    public static CustomSSLSocketFactory getDefault(int i) {
        CustomSSLSocketFactory customSSLSocketFactory = new CustomSSLSocketFactory();
        customSSLSocketFactory.f60291a = (SSLCertificateSocketFactory) SSLCertificateSocketFactory.getDefault(i, null);
        return customSSLSocketFactory;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket() throws IOException {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f60291a;
        if (sSLCertificateSocketFactory != null) {
            Socket createSocket = sSLCertificateSocketFactory.createSocket();
            m6055a(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) throws IOException, UnknownHostException {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f60291a;
        if (sSLCertificateSocketFactory != null) {
            Socket createSocket = sSLCertificateSocketFactory.createSocket(str, i);
            m6055a(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException, UnknownHostException {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f60291a;
        if (sSLCertificateSocketFactory != null) {
            Socket createSocket = sSLCertificateSocketFactory.createSocket(str, i, inetAddress, i2);
            m6055a(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f60291a;
        if (sSLCertificateSocketFactory != null) {
            Socket createSocket = sSLCertificateSocketFactory.createSocket(inetAddress, i);
            m6055a(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f60291a;
        if (sSLCertificateSocketFactory != null) {
            Socket createSocket = sSLCertificateSocketFactory.createSocket(inetAddress, i, inetAddress2, i2);
            m6055a(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        if (this.f60291a != null) {
            if (Build.VERSION.SDK_INT >= 23) {
                Socket createSocket = this.f60291a.createSocket(socket, str, i, z);
                m6055a(createSocket);
                return createSocket;
            }
            if (z && socket != null) {
                socket.close();
            }
            Socket createSocket2 = this.f60291a.createSocket(InetAddressUtils.getInetAddressByName(str), i);
            m6055a(createSocket2);
            Preconditions.checkNotNull(createSocket2);
            SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f60291a;
            if (sSLCertificateSocketFactory == null) {
                throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
            }
            if (createSocket2 instanceof SSLSocket) {
                SSLSocket sSLSocket = (SSLSocket) createSocket2;
                sSLCertificateSocketFactory.setHostname(sSLSocket, str);
                Preconditions.checkNotNull(sSLSocket);
                sSLSocket.startHandshake();
                if (!HttpsURLConnection.getDefaultHostnameVerifier().verify(str, sSLSocket.getSession())) {
                    throw new SSLHandshakeException("Server Name Identification failed.");
                }
            }
            return createSocket2;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f60291a;
        return sSLCertificateSocketFactory == null ? new String[0] : sSLCertificateSocketFactory.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f60291a;
        return sSLCertificateSocketFactory == null ? new String[0] : sSLCertificateSocketFactory.getSupportedCipherSuites();
    }
}
