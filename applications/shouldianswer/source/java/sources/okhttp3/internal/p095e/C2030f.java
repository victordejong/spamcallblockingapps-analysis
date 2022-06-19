package okhttp3.internal.p095e;

import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.NoSuchAlgorithmException;
import java.security.Security;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
import okhttp3.C2098w;
import okhttp3.EnumC2101x;
import okhttp3.internal.p096f.AbstractC2033c;
import okhttp3.internal.p096f.AbstractC2035e;
import okhttp3.internal.p096f.C2031a;
import okhttp3.internal.p096f.C2032b;
import p000a.C0005c;
/* renamed from: okhttp3.internal.e.f */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/e/f.class */
public class C2030f {

    /* renamed from: a */
    private static final C2030f f5102a = m2229b();

    /* renamed from: b */
    private static final Logger f5103b = Logger.getLogger(C2098w.class.getName());

    /* renamed from: a */
    public static List<String> m2233a(List<EnumC2101x> list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            EnumC2101x enumC2101x = list.get(i);
            if (enumC2101x != EnumC2101x.HTTP_1_0) {
                arrayList.add(enumC2101x.toString());
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    private static C2030f m2229b() {
        C2030f m2248b;
        C2030f m2255a = C2021a.m2255a();
        if (m2255a != null) {
            return m2255a;
        }
        if (m2223d() && (m2248b = C2025b.m2248b()) != null) {
            return m2248b;
        }
        C2026c m2246b = C2026c.m2246b();
        if (m2246b != null) {
            return m2246b;
        }
        C2030f m2245b = C2027d.m2245b();
        return m2245b != null ? m2245b : new C2030f();
    }

    /* renamed from: b */
    public static byte[] m2227b(List<EnumC2101x> list) {
        C0005c c0005c = new C0005c();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            EnumC2101x enumC2101x = list.get(i);
            if (enumC2101x != EnumC2101x.HTTP_1_0) {
                c0005c.mo8084i(enumC2101x.toString().length());
                c0005c.mo8089b(enumC2101x.toString());
            }
        }
        return c0005c.m8120q();
    }

    /* renamed from: c */
    public static C2030f m2224c() {
        return f5102a;
    }

    /* renamed from: d */
    public static boolean m2223d() {
        if ("conscrypt".equals(System.getProperty("okhttp.platform"))) {
            return true;
        }
        return "Conscrypt".equals(Security.getProviders()[0].getName());
    }

    /* renamed from: a */
    public Object mo2236a(String str) {
        if (f5103b.isLoggable(Level.FINE)) {
            return new Throwable(str);
        }
        return null;
    }

    @Nullable
    /* renamed from: a */
    public String mo2232a(SSLSocket sSLSocket) {
        return null;
    }

    /* renamed from: a */
    public AbstractC2033c mo2230a(X509TrustManager x509TrustManager) {
        return new C2031a(mo2225b(x509TrustManager));
    }

    /* renamed from: a */
    public void mo2237a(int i, String str, Throwable th) {
        f5103b.log(i == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    /* renamed from: a */
    public void mo2235a(String str, Object obj) {
        String str2 = str;
        if (obj == null) {
            str2 = str + " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);";
        }
        mo2237a(5, str2, (Throwable) obj);
    }

    /* renamed from: a */
    public void mo2234a(Socket socket, InetSocketAddress inetSocketAddress, int i) {
        socket.connect(inetSocketAddress, i);
    }

    /* renamed from: a */
    public void mo2231a(SSLSocket sSLSocket, String str, List<EnumC2101x> list) {
    }

    /* renamed from: b */
    public AbstractC2035e mo2225b(X509TrustManager x509TrustManager) {
        return new C2032b(x509TrustManager.getAcceptedIssuers());
    }

    /* renamed from: b */
    public void mo2226b(SSLSocket sSLSocket) {
    }

    /* renamed from: b */
    public boolean mo2228b(String str) {
        return true;
    }

    /* renamed from: s_ */
    public SSLContext mo2222s_() {
        try {
            return SSLContext.getInstance("TLS");
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("No TLS provider", e);
        }
    }
}
