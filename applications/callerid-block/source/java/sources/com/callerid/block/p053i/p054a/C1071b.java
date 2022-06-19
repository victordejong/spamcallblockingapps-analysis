package com.callerid.block.p053i.p054a;

import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: com.callerid.block.i.a.b */
/* loaded from: classes-dex2jar.jar:com/callerid/block/i/a/b.class */
public class C1071b extends SSLSocketFactory {

    /* renamed from: b */
    private static final String[] f4522b = {"TLSv1.1", "TLSv1.2"};

    /* renamed from: a */
    final SSLSocketFactory f4523a;

    public C1071b(SSLSocketFactory sSLSocketFactory) {
        this.f4523a = sSLSocketFactory;
    }

    /* renamed from: a */
    private Socket m10263a(Socket socket) {
        if (socket instanceof SSLSocket) {
            ((SSLSocket) socket).setEnabledProtocols(f4522b);
        }
        return socket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) {
        Socket createSocket = this.f4523a.createSocket(str, i);
        m10263a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        Socket createSocket = this.f4523a.createSocket(str, i, inetAddress, i2);
        m10263a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) {
        Socket createSocket = this.f4523a.createSocket(inetAddress, i);
        m10263a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        Socket createSocket = this.f4523a.createSocket(inetAddress, i, inetAddress2, i2);
        m10263a(createSocket);
        return createSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) {
        Socket createSocket = this.f4523a.createSocket(socket, str, i, z);
        m10263a(createSocket);
        return createSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return this.f4523a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        return this.f4523a.getSupportedCipherSuites();
    }
}
