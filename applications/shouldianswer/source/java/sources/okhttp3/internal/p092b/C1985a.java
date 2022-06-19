package okhttp3.internal.p092b;

import io.fabric.sdk.android.services.p068b.AbstractC1468a;
import java.util.List;
import okhttp3.AbstractC1953aa;
import okhttp3.AbstractC2077m;
import okhttp3.AbstractC2092t;
import okhttp3.C1955ab;
import okhttp3.C2076l;
import okhttp3.C2094u;
import okhttp3.C2104z;
import okhttp3.internal.C1999c;
import okhttp3.internal.C2018d;
import p000a.C0013j;
import p000a.C0015l;
/* renamed from: okhttp3.internal.b.a */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/b/a.class */
public final class C1985a implements AbstractC2092t {

    /* renamed from: a */
    private final AbstractC2077m f4952a;

    public C1985a(AbstractC2077m abstractC2077m) {
        this.f4952a = abstractC2077m;
    }

    /* renamed from: a */
    private String m2395a(List<C2076l> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                sb.append("; ");
            }
            C2076l c2076l = list.get(i);
            sb.append(c2076l.m2018a());
            sb.append('=');
            sb.append(c2076l.m2009b());
        }
        return sb.toString();
    }

    @Override // okhttp3.AbstractC2092t
    /* renamed from: a */
    public C1955ab mo1903a(AbstractC2092t.AbstractC2093a abstractC2093a) {
        C2104z mo1902a = abstractC2093a.mo1902a();
        C2104z.C2105a m1818e = mo1902a.m1818e();
        AbstractC1953aa m1819d = mo1902a.m1819d();
        if (m1819d != null) {
            C2094u mo1893a = m1819d.mo1893a();
            if (mo1893a != null) {
                m1818e.m1813a("Content-Type", mo1893a.toString());
            }
            long mo1889b = m1819d.mo1889b();
            if (mo1889b != -1) {
                m1818e.m1813a("Content-Length", Long.toString(mo1889b));
                m1818e.m1808b("Transfer-Encoding");
            } else {
                m1818e.m1813a("Transfer-Encoding", "chunked");
                m1818e.m1808b("Content-Length");
            }
        }
        if (mo1902a.m1822a("Host") == null) {
            m1818e.m1813a("Host", C1999c.m2337a(mo1902a.m1823a(), false));
        }
        if (mo1902a.m1822a("Connection") == null) {
            m1818e.m1813a("Connection", "Keep-Alive");
        }
        boolean z = false;
        if (mo1902a.m1822a("Accept-Encoding") == null) {
            z = false;
            if (mo1902a.m1822a("Range") == null) {
                z = true;
                m1818e.m1813a("Accept-Encoding", "gzip");
            }
        }
        List<C2076l> mo2007a = this.f4952a.mo2007a(mo1902a.m1823a());
        if (!mo2007a.isEmpty()) {
            m1818e.m1813a("Cookie", m2395a(mo2007a));
        }
        if (mo1902a.m1822a(AbstractC1468a.HEADER_USER_AGENT) == null) {
            m1818e.m1813a(AbstractC1468a.HEADER_USER_AGENT, C2018d.m2260a());
        }
        C1955ab mo1901a = abstractC2093a.mo1901a(m1818e.m1815a());
        C1991e.m2387a(this.f4952a, mo1902a.m1823a(), mo1901a.m2487f());
        C1955ab.C1956a m2469a = mo1901a.m2485h().m2469a(mo1902a);
        if (z && "gzip".equalsIgnoreCase(mo1901a.m2493a("Content-Encoding")) && C1991e.m2384b(mo1901a)) {
            C0013j c0013j = new C0013j(mo1901a.m2486g().mo2370d());
            m2469a.m2471a(mo1901a.m2487f().m1965b().m1959b("Content-Encoding").m1959b("Content-Length").m1962a());
            m2469a.m2473a(new C1994h(mo1901a.m2493a("Content-Type"), -1L, C0015l.m8098a(c0013j)));
        }
        return m2469a.m2480a();
    }
}
