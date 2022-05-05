package com.aotter.net.trek.network;

import android.net.SSLCertificateSocketFactory;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.aotter.net.trek.common.Preconditions;
import com.aotter.net.trek.common.util.Reflection;
import com.aotter.net.trek.util.TrekLog;
import com.aotter.net.volley.InetAddressUtils;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/network/CustomSSLSocketFactory.class */
public class CustomSSLSocketFactory extends SSLSocketFactory {

    /* renamed from: a */
    public SSLSocketFactory f1549a;

    /* renamed from: a */
    public static void m36340a(@NonNull SSLCertificateSocketFactory sSLCertificateSocketFactory, @NonNull SSLSocket sSLSocket, @Nullable String str) {
        Preconditions.checkNotNull(sSLCertificateSocketFactory);
        Preconditions.checkNotNull(sSLSocket);
        if (Build.VERSION.SDK_INT >= 17) {
            sSLCertificateSocketFactory.setHostname(sSLSocket, str);
            return;
        }
        try {
            new Reflection.MethodBuilder(sSLSocket, "setHostname").addParam(String.class, str).execute();
        } catch (Exception e) {
            TrekLog.m36321c("Unable to call setHostname() on the socket");
        }
    }

    /* renamed from: a */
    private void m36339a(Socket socket) {
        if (socket instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) socket;
            sSLSocket.setEnabledProtocols(sSLSocket.getSupportedProtocols());
        }
    }

    /* renamed from: a */
    private void m36338a(@NonNull Socket socket, @Nullable String str) {
        Preconditions.checkNotNull(socket);
        SSLSocketFactory sSLSocketFactory = this.f1549a;
        if (sSLSocketFactory == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        } else if (socket instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) socket;
            m36340a((SSLCertificateSocketFactory) sSLSocketFactory, sSLSocket, str);
            m36337a(sSLSocket, str);
        }
    }

    /* renamed from: a */
    public static void m36337a(@NonNull SSLSocket sSLSocket, @Nullable String str) {
        Preconditions.checkNotNull(sSLSocket);
        sSLSocket.startHandshake();
        if (!HttpsURLConnection.getDefaultHostnameVerifier().verify(str, sSLSocket.getSession())) {
            throw new SSLHandshakeException("Server Name Identification failed.");
        }
    }

    public static CustomSSLSocketFactory getDefault(int i) {
        CustomSSLSocketFactory customSSLSocketFactory = new CustomSSLSocketFactory();
        customSSLSocketFactory.f1549a = SSLCertificateSocketFactory.getDefault(i, null);
        return customSSLSocketFactory;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket() {
        SSLSocketFactory sSLSocketFactory = this.f1549a;
        if (sSLSocketFactory != null) {
            Socket createSocket = sSLSocketFactory.createSocket();
            m36339a(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) {
        SSLSocketFactory sSLSocketFactory = this.f1549a;
        if (sSLSocketFactory != null) {
            Socket createSocket = sSLSocketFactory.createSocket(str, i);
            m36339a(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        SSLSocketFactory sSLSocketFactory = this.f1549a;
        if (sSLSocketFactory != null) {
            Socket createSocket = sSLSocketFactory.createSocket(str, i, inetAddress, i2);
            m36339a(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) {
        SSLSocketFactory sSLSocketFactory = this.f1549a;
        if (sSLSocketFactory != null) {
            Socket createSocket = sSLSocketFactory.createSocket(inetAddress, i);
            m36339a(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        SSLSocketFactory sSLSocketFactory = this.f1549a;
        if (sSLSocketFactory != null) {
            Socket createSocket = sSLSocketFactory.createSocket(inetAddress, i, inetAddress2, i2);
            m36339a(createSocket);
            return createSocket;
        }
        throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) {
        SSLSocketFactory sSLSocketFactory = this.f1549a;
        if (sSLSocketFactory == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        } else if (Build.VERSION.SDK_INT < 23) {
            if (z && socket != null) {
                socket.close();
            }
            Socket createSocket = this.f1549a.createSocket(InetAddressUtils.getInetAddressByName(str), i);
            m36339a(createSocket);
            m36338a(createSocket, str);
            return createSocket;
        } else {
            Socket createSocket2 = sSLSocketFactory.createSocket(socket, str, i, z);
            m36339a(createSocket2);
            return createSocket2;
        }
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        SSLSocketFactory sSLSocketFactory = this.f1549a;
        return sSLSocketFactory == null ? new String[0] : sSLSocketFactory.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        SSLSocketFactory sSLSocketFactory = this.f1549a;
        return sSLSocketFactory == null ? new String[0] : sSLSocketFactory.getSupportedCipherSuites();
    }
}
