package p530d.p531a.p533w0;

import io.grpc.okhttp.internal.Platform;
import io.grpc.okhttp.internal.Protocol;
import java.io.IOException;
import java.net.Socket;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.p533w0.p534o.C9596d;
import p530d.p531a.p533w0.p534o.C9597e;
/* renamed from: d.a.w0.g */
/* loaded from: classes2-dex2jar.jar:d/a/w0/g.class */
public class C9579g {

    /* renamed from: b */
    public static final Logger f36579b = Logger.getLogger(C9579g.class.getName());

    /* renamed from: c */
    public static final Platform f36580c = Platform.m293d();

    /* renamed from: d */
    public static C9579g f36581d = m2363a(C9579g.class.getClassLoader());

    /* renamed from: a */
    public final Platform f36582a;

    /* renamed from: d.a.w0.g$a */
    /* loaded from: classes2-dex2jar.jar:d/a/w0/g$a.class */
    public static final class C9580a extends C9579g {

        /* renamed from: e */
        public static final C9596d<Socket> f36583e = new C9596d<>(null, "setUseSessionTickets", Boolean.TYPE);

        /* renamed from: f */
        public static final C9596d<Socket> f36584f = new C9596d<>(null, "setHostname", String.class);

        /* renamed from: g */
        public static final C9596d<Socket> f36585g = new C9596d<>(byte[].class, "getAlpnSelectedProtocol", new Class[0]);

        /* renamed from: h */
        public static final C9596d<Socket> f36586h = new C9596d<>(null, "setAlpnProtocols", byte[].class);

        /* renamed from: i */
        public static final C9596d<Socket> f36587i = new C9596d<>(byte[].class, "getNpnSelectedProtocol", new Class[0]);

        /* renamed from: j */
        public static final C9596d<Socket> f36588j = new C9596d<>(null, "setNpnProtocols", byte[].class);

        public C9580a(Platform platform) {
            super(platform);
        }

        @Override // p530d.p531a.p533w0.C9579g
        /* renamed from: a */
        public String mo2361a(SSLSocket sSLSocket) {
            if (this.f36582a.mo287b() == Platform.TlsExtensionType.ALPN_AND_NPN) {
                try {
                    byte[] bArr = (byte[]) f36585g.m2282d(sSLSocket, new Object[0]);
                    if (bArr != null) {
                        return new String(bArr, C9597e.f36629b);
                    }
                } catch (Exception e) {
                    C9579g.f36579b.log(Level.FINE, "Failed calling getAlpnSelectedProtocol()", (Throwable) e);
                }
            }
            if (this.f36582a.mo287b() == Platform.TlsExtensionType.NONE) {
                return null;
            }
            try {
                byte[] bArr2 = (byte[]) f36587i.m2282d(sSLSocket, new Object[0]);
                if (bArr2 != null) {
                    return new String(bArr2, C9597e.f36629b);
                }
                return null;
            } catch (Exception e2) {
                C9579g.f36579b.log(Level.FINE, "Failed calling getNpnSelectedProtocol()", (Throwable) e2);
                return null;
            }
        }

        @Override // p530d.p531a.p533w0.C9579g
        /* renamed from: a */
        public void mo2360a(SSLSocket sSLSocket, String str, List<Protocol> list) {
            if (str != null) {
                f36583e.m2283c(sSLSocket, true);
                f36584f.m2283c(sSLSocket, str);
            }
            Object[] objArr = {Platform.m295a(list)};
            if (this.f36582a.mo287b() == Platform.TlsExtensionType.ALPN_AND_NPN) {
                f36586h.m2282d(sSLSocket, objArr);
            }
            if (this.f36582a.mo287b() != Platform.TlsExtensionType.NONE) {
                f36588j.m2282d(sSLSocket, objArr);
                return;
            }
            throw new RuntimeException("We can not do TLS handshake on this Android version, please install the Google Play Services Dynamic Security Provider to use TLS");
        }

        @Override // p530d.p531a.p533w0.C9579g
        /* renamed from: b */
        public String mo2359b(SSLSocket sSLSocket, String str, List<Protocol> list) throws IOException {
            String a = mo2361a(sSLSocket);
            String str2 = a;
            if (a == null) {
                str2 = C9579g.super.mo2359b(sSLSocket, str, list);
            }
            return str2;
        }
    }

    public C9579g(Platform platform) {
        C4933n.m24794a(platform, "platform");
        this.f36582a = platform;
    }

    /* renamed from: a */
    public static C9579g m2363a(ClassLoader classLoader) {
        boolean z;
        try {
            classLoader.loadClass("com.android.org.conscrypt.OpenSSLSocketImpl");
        } catch (ClassNotFoundException e) {
            f36579b.log(Level.FINE, "Unable to find Conscrypt. Skipping", (Throwable) e);
            try {
                classLoader.loadClass("org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl");
            } catch (ClassNotFoundException e2) {
                f36579b.log(Level.FINE, "Unable to find any OpenSSLSocketImpl. Skipping", (Throwable) e2);
                z = false;
            }
        }
        z = true;
        return z ? new C9580a(f36580c) : new C9579g(f36580c);
    }

    /* renamed from: b */
    public static C9579g m2362b() {
        return f36581d;
    }

    /* renamed from: a */
    public String mo2361a(SSLSocket sSLSocket) {
        return this.f36582a.mo286b(sSLSocket);
    }

    /* renamed from: a */
    public void mo2360a(SSLSocket sSLSocket, String str, List<Protocol> list) {
        this.f36582a.mo288a(sSLSocket, str, list);
    }

    /* renamed from: b */
    public String mo2359b(SSLSocket sSLSocket, String str, List<Protocol> list) throws IOException {
        if (list != null) {
            mo2360a(sSLSocket, str, list);
        }
        try {
            sSLSocket.startHandshake();
            String a = mo2361a(sSLSocket);
            if (a != null) {
                return a;
            }
            throw new RuntimeException("TLS ALPN negotiation failed with protocols: " + list);
        } finally {
            this.f36582a.mo289a(sSLSocket);
        }
    }
}
