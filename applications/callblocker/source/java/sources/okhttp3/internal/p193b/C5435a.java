package okhttp3.internal.p193b;

import java.util.List;
import okhttp3.AbstractC5402ab;
import okhttp3.AbstractC5527m;
import okhttp3.AbstractC5544u;
import okhttp3.C5400aa;
import okhttp3.C5404ac;
import okhttp3.C5526l;
import okhttp3.C5546v;
import okhttp3.internal.C5449c;
import okhttp3.internal.C5468d;
import p000a.C0012j;
import p000a.C0014l;
/* renamed from: okhttp3.internal.b.a */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/b/a.class */
public final class C5435a implements AbstractC5544u {

    /* renamed from: a */
    private final AbstractC5527m f22726a;

    public C5435a(AbstractC5527m abstractC5527m) {
        this.f22726a = abstractC5527m;
    }

    /* renamed from: a */
    private String m713a(List<C5526l> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                sb.append("; ");
            }
            C5526l c5526l = list.get(i);
            sb.append(c5526l.m336a()).append('=').append(c5526l.m327b());
        }
        return sb.toString();
    }

    @Override // okhttp3.AbstractC5544u
    /* renamed from: a */
    public C5404ac mo216a(AbstractC5544u.AbstractC5545a abstractC5545a) {
        C5400aa mo215a = abstractC5545a.mo215a();
        C5400aa.C5401a m822e = mo215a.m822e();
        AbstractC5402ab m823d = mo215a.m823d();
        if (m823d != null) {
            C5546v mo60a = m823d.mo60a();
            if (mo60a != null) {
                m822e.m817a("Content-Type", mo60a.toString());
            }
            long mo58b = m823d.mo58b();
            if (mo58b != -1) {
                m822e.m817a("Content-Length", Long.toString(mo58b));
                m822e.m818a("Transfer-Encoding");
            } else {
                m822e.m817a("Transfer-Encoding", "chunked");
                m822e.m818a("Content-Length");
            }
        }
        if (mo215a.m826a("Host") == null) {
            m822e.m817a("Host", C5449c.m657a(mo215a.m827a(), false));
        }
        if (mo215a.m826a("Connection") == null) {
            m822e.m817a("Connection", "Keep-Alive");
        }
        boolean z = false;
        if (mo215a.m826a("Accept-Encoding") == null) {
            z = false;
            if (mo215a.m826a("Range") == null) {
                z = true;
                m822e.m817a("Accept-Encoding", "gzip");
            }
        }
        List<C5526l> mo325a = this.f22726a.mo325a(mo215a.m827a());
        if (!mo325a.isEmpty()) {
            m822e.m817a("Cookie", m713a(mo325a));
        }
        if (mo215a.m826a("User-Agent") == null) {
            m822e.m817a("User-Agent", C5468d.m578a());
        }
        C5404ac mo214a = abstractC5545a.mo214a(m822e.m819a());
        C5441e.m705a(this.f22726a, mo215a.m827a(), mo214a.m804e());
        C5404ac.C5405a m791a = mo214a.m802g().m791a(mo215a);
        if (z && "gzip".equalsIgnoreCase(mo214a.m809a("Content-Encoding")) && C5441e.m702b(mo214a)) {
            C0012j c0012j = new C0012j(mo214a.m803f().mo87c());
            m791a.m787a(mo214a.m804e().m279b().m273b("Content-Encoding").m273b("Content-Length").m276a());
            m791a.m789a(new C5444h(mo214a.m809a("Content-Type"), -1L, C0014l.m22522a(c0012j)));
        }
        return m791a.m797a();
    }
}
