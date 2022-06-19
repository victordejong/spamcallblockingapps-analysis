package okhttp3.internal.p196e;

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
import okhttp3.C5550x;
import okhttp3.EnumC5553y;
import okhttp3.internal.p197f.AbstractC5483c;
import okhttp3.internal.p197f.AbstractC5485e;
import okhttp3.internal.p197f.C5481a;
import okhttp3.internal.p197f.C5482b;
import p000a.C0005c;
/* renamed from: okhttp3.internal.e.f */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/e/f.class */
public class C5480f {

    /* renamed from: a */
    private static final C5480f f22876a = m546b();

    /* renamed from: b */
    private static final Logger f22877b = Logger.getLogger(C5550x.class.getName());

    /* renamed from: a */
    public static List<String> m550a(List<EnumC5553y> list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            EnumC5553y enumC5553y = list.get(i);
            if (enumC5553y != EnumC5553y.HTTP_1_0) {
                arrayList.add(enumC5553y.toString());
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0017, code lost:
        if (r0 == null) goto L10;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static okhttp3.internal.p196e.C5480f m546b() {
        /*
            okhttp3.internal.e.f r0 = okhttp3.internal.p196e.C5471a.m573a()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto La
        L8:
            r0 = r3
            return r0
        La:
            boolean r0 = m540d()
            if (r0 == 0) goto L1a
            okhttp3.internal.e.f r0 = okhttp3.internal.p196e.C5475b.m566b()
            r4 = r0
            r0 = r4
            r3 = r0
            r0 = r4
            if (r0 != 0) goto L8
        L1a:
            okhttp3.internal.e.c r0 = okhttp3.internal.p196e.C5476c.m564b()
            r4 = r0
            r0 = r4
            r3 = r0
            r0 = r4
            if (r0 != 0) goto L8
            okhttp3.internal.e.f r0 = okhttp3.internal.p196e.C5477d.m563b()
            r4 = r0
            r0 = r4
            r3 = r0
            r0 = r4
            if (r0 != 0) goto L8
            okhttp3.internal.e.f r0 = new okhttp3.internal.e.f
            r1 = r0
            r1.<init>()
            r3 = r0
            goto L8
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.p196e.C5480f.m546b():okhttp3.internal.e.f");
    }

    /* renamed from: b */
    public static byte[] m544b(List<EnumC5553y> list) {
        C0005c c0005c = new C0005c();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            EnumC5553y enumC5553y = list.get(i);
            if (enumC5553y != EnumC5553y.HTTP_1_0) {
                c0005c.mo22508i(enumC5553y.toString().length());
                c0005c.mo22513b(enumC5553y.toString());
            }
        }
        return c0005c.m22545p();
    }

    /* renamed from: c */
    public static C5480f m541c() {
        return f22876a;
    }

    /* renamed from: d */
    public static boolean m540d() {
        return "conscrypt".equals(System.getProperty("okhttp.platform")) ? true : "Conscrypt".equals(Security.getProviders()[0].getName());
    }

    /* renamed from: K_ */
    public SSLContext mo555K_() {
        try {
            return SSLContext.getInstance("TLS");
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("No TLS provider", e);
        }
    }

    /* renamed from: a */
    public Object mo553a(String str) {
        return f22877b.isLoggable(Level.FINE) ? new Throwable(str) : null;
    }

    @Nullable
    /* renamed from: a */
    public String mo549a(SSLSocket sSLSocket) {
        return null;
    }

    /* renamed from: a */
    public AbstractC5483c mo547a(X509TrustManager x509TrustManager) {
        return new C5481a(mo542b(x509TrustManager));
    }

    /* renamed from: a */
    public void mo554a(int i, String str, Throwable th) {
        f22877b.log(i == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    /* renamed from: a */
    public void mo552a(String str, Object obj) {
        String str2 = str;
        if (obj == null) {
            str2 = str + " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);";
        }
        mo554a(5, str2, (Throwable) obj);
    }

    /* renamed from: a */
    public void mo551a(Socket socket, InetSocketAddress inetSocketAddress, int i) {
        socket.connect(inetSocketAddress, i);
    }

    /* renamed from: a */
    public void mo548a(SSLSocket sSLSocket, String str, List<EnumC5553y> list) {
    }

    /* renamed from: b */
    public AbstractC5485e mo542b(X509TrustManager x509TrustManager) {
        return new C5482b(x509TrustManager.getAcceptedIssuers());
    }

    /* renamed from: b */
    public void mo543b(SSLSocket sSLSocket) {
    }

    /* renamed from: b */
    public boolean mo545b(String str) {
        return true;
    }
}
