package com.mopub.network;

import android.net.SSLCertificateSocketFactory;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import java.net.UnknownHostException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/CustomSSLSocketFactory.class */
public class CustomSSLSocketFactory extends SSLSocketFactory {

    /* renamed from: a */
    public SSLCertificateSocketFactory f9231a;

    private CustomSSLSocketFactory() {
    }

    public static CustomSSLSocketFactory getDefault(int i) {
        CustomSSLSocketFactory customSSLSocketFactory = new CustomSSLSocketFactory();
        customSSLSocketFactory.f9231a = (SSLCertificateSocketFactory) SSLCertificateSocketFactory.getDefault(i, null);
        return customSSLSocketFactory;
    }

    /* renamed from: a */
    public final void m36176a(Socket socket) {
        if (socket instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) socket;
            sSLSocket.setEnabledProtocols(sSLSocket.getSupportedProtocols());
        }
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket() throws IOException {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f9231a;
        if (sSLCertificateSocketFactory != null) {
            Socket createSocket = sSLCertificateSocketFactory.createSocket();
            m36176a(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) throws IOException, UnknownHostException {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f9231a;
        if (sSLCertificateSocketFactory != null) {
            Socket createSocket = sSLCertificateSocketFactory.createSocket(str, i);
            m36176a(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException, UnknownHostException {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f9231a;
        if (sSLCertificateSocketFactory != null) {
            Socket createSocket = sSLCertificateSocketFactory.createSocket(str, i, inetAddress, i2);
            m36176a(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f9231a;
        if (sSLCertificateSocketFactory != null) {
            Socket createSocket = sSLCertificateSocketFactory.createSocket(inetAddress, i);
            m36176a(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f9231a;
        if (sSLCertificateSocketFactory != null) {
            Socket createSocket = sSLCertificateSocketFactory.createSocket(inetAddress, i, inetAddress2, i2);
            m36176a(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f9231a;
        if (sSLCertificateSocketFactory != null) {
            Socket createSocket = sSLCertificateSocketFactory.createSocket(socket, str, i, z);
            m36176a(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f9231a;
        return sSLCertificateSocketFactory == null ? new String[0] : sSLCertificateSocketFactory.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        SSLCertificateSocketFactory sSLCertificateSocketFactory = this.f9231a;
        return sSLCertificateSocketFactory == null ? new String[0] : sSLCertificateSocketFactory.getSupportedCipherSuites();
    }
}
