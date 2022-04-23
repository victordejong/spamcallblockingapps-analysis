package p599h.p600d0.p607k;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.NoSuchAlgorithmException;
import java.security.Security;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.Protocol;
import p599h.C10244w;
import p599h.p600d0.p609m.AbstractC10207c;
import p599h.p600d0.p609m.AbstractC10209e;
import p599h.p600d0.p609m.C10205a;
import p599h.p600d0.p609m.C10206b;
import p610i.C10260c;
/* renamed from: h.d0.k.f */
/* loaded from: classes2-dex2jar.jar:h/d0/k/f.class */
public class C10203f {

    /* renamed from: a */
    public static final C10203f f37670a = m1072c();

    /* renamed from: b */
    public static final Logger f37671b = Logger.getLogger(C10244w.class.getName());

    /* renamed from: a */
    public static List<String> m1082a(List<Protocol> list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Protocol protocol = list.get(i);
            if (protocol != Protocol.HTTP_1_0) {
                arrayList.add(protocol.toString());
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public static byte[] m1075b(List<Protocol> list) {
        C10260c cVar = new C10260c();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Protocol protocol = list.get(i);
            if (protocol != Protocol.HTTP_1_0) {
                cVar.writeByte(protocol.toString().length());
                cVar.mo734k(protocol.toString());
            }
        }
        return cVar.mo733G0();
    }

    /* renamed from: c */
    public static C10203f m1072c() {
        C10198b g;
        C10203f f = C10194a.m1103f();
        if (f != null) {
            return f;
        }
        if (m1070e() && (g = C10198b.m1097g()) != null) {
            return g;
        }
        C10199c f2 = C10199c.m1096f();
        if (f2 != null) {
            return f2;
        }
        C10203f f3 = C10200d.m1095f();
        return f3 != null ? f3 : new C10203f();
    }

    /* renamed from: d */
    public static C10203f m1071d() {
        return f37670a;
    }

    /* renamed from: e */
    public static boolean m1070e() {
        if ("conscrypt".equals(System.getProperty("okhttp.platform"))) {
            return true;
        }
        return "Conscrypt".equals(Security.getProviders()[0].getName());
    }

    /* renamed from: a */
    public AbstractC10207c mo1078a(X509TrustManager x509TrustManager) {
        return new C10205a(mo1073b(x509TrustManager));
    }

    /* renamed from: a */
    public Object mo1085a(String str) {
        if (f37671b.isLoggable(Level.FINE)) {
            return new Throwable(str);
        }
        return null;
    }

    /* renamed from: a */
    public String m1087a() {
        return "OkHttp";
    }

    /* renamed from: a */
    public void mo1086a(int i, String str, Throwable th) {
        f37671b.log(i == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    /* renamed from: a */
    public void mo1084a(String str, Object obj) {
        String str2 = str;
        if (obj == null) {
            str2 = str + " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);";
        }
        mo1086a(5, str2, (Throwable) obj);
    }

    /* renamed from: a */
    public void mo1083a(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        socket.connect(inetSocketAddress, i);
    }

    /* renamed from: a */
    public void mo1081a(SSLSocket sSLSocket) {
    }

    /* renamed from: a */
    public void mo1080a(SSLSocket sSLSocket, String str, List<Protocol> list) {
    }

    /* renamed from: a */
    public void mo1079a(SSLSocketFactory sSLSocketFactory) {
    }

    /* renamed from: b */
    public AbstractC10209e mo1073b(X509TrustManager x509TrustManager) {
        return new C10206b(x509TrustManager.getAcceptedIssuers());
    }

    /* renamed from: b */
    public String mo1074b(SSLSocket sSLSocket) {
        return null;
    }

    /* renamed from: b */
    public SSLContext mo1077b() {
        if ("1.7".equals(System.getProperty("java.specification.version"))) {
            try {
                return SSLContext.getInstance("TLSv1.2");
            } catch (NoSuchAlgorithmException e) {
            }
        }
        try {
            return SSLContext.getInstance("TLS");
        } catch (NoSuchAlgorithmException e2) {
            throw new IllegalStateException("No TLS provider", e2);
        }
    }

    /* renamed from: b */
    public boolean mo1076b(String str) {
        return true;
    }

    public String toString() {
        return getClass().getSimpleName();
    }
}
