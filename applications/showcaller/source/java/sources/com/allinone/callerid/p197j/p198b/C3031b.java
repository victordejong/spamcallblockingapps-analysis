package com.allinone.callerid.p197j.p198b;

import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: com.allinone.callerid.j.b.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/j/b/b.class */
public class C3031b extends SSLSocketFactory {

    /* renamed from: a */
    private static final String[] f9877a = {"TLSv1.1", "TLSv1.2"};

    /* renamed from: b */
    final SSLSocketFactory f9878b;

    public C3031b(SSLSocketFactory sSLSocketFactory) {
        this.f9878b = sSLSocketFactory;
    }

    /* renamed from: a */
    private Socket m26205a(Socket socket) {
        if (socket instanceof SSLSocket) {
            ((SSLSocket) socket).setEnabledProtocols(f9877a);
        }
        return socket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) {
        return m26205a(this.f9878b.createSocket(str, i));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        return m26205a(this.f9878b.createSocket(str, i, inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) {
        return m26205a(this.f9878b.createSocket(inetAddress, i));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        return m26205a(this.f9878b.createSocket(inetAddress, i, inetAddress2, i2));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) {
        return m26205a(this.f9878b.createSocket(socket, str, i, z));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return this.f9878b.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        return this.f9878b.getSupportedCipherSuites();
    }
}
