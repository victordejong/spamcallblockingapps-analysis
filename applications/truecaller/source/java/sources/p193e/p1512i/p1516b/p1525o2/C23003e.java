package p193e.p1512i.p1516b.p1525o2;

import java.io.InputStream;
import java.net.URL;
import p1727n3.p1789g0.C26232y;
import p193e.p1512i.p1516b.AbstractRunnableC22929c3;
import p193e.p1512i.p1516b.EnumC23143v2;
import p193e.p1512i.p1516b.p1522i2.C22967g;
import p193e.p1512i.p1516b.p1531s2.C23088k;
import p193e.p1512i.p1516b.p1531s2.EnumC23092o;
import p193e.p1512i.p1516b.p1533u2.C23100a;
import p193e.p1512i.p1516b.p1533u2.C23134y;
/* renamed from: e.i.b.o2.e */
/* loaded from: classes-dex2jar.jar:e/i/b/o2/e.class */
public class C23003e extends AbstractRunnableC22929c3 {

    /* renamed from: c */
    public final String f63750c;

    /* renamed from: d */
    public final C23100a f63751d;

    /* renamed from: e */
    public final C23134y f63752e;

    /* renamed from: f */
    public final C23001d f63753f;

    /* renamed from: g */
    public final C22967g f63754g;

    public C23003e(String str, C23100a c23100a, C23134y c23134y, C23001d c23001d, C22967g c22967g) {
        this.f63750c = str;
        this.f63751d = c23100a;
        this.f63752e = c23134y;
        this.f63753f = c23001d;
        this.f63754g = c22967g;
    }

    @Override // p193e.p1512i.p1516b.AbstractRunnableC22929c3
    /* renamed from: a */
    public void mo7379a() throws Exception {
        EnumC23143v2 enumC23143v2 = EnumC23143v2.INVALID_CREATIVE;
        EnumC23092o enumC23092o = EnumC23092o.FAILED;
        try {
            String m7592c = m7592c();
            if (!C26232y.m2338k(m7592c)) {
                m7593b(m7592c);
                return;
            }
            this.f63751d.f63935b = enumC23092o;
            this.f63753f.m7594a(enumC23143v2);
        } catch (Throwable th) {
            if (C26232y.m2338k(null)) {
                this.f63751d.f63935b = enumC23092o;
                this.f63753f.m7594a(enumC23143v2);
            } else {
                m7593b(null);
            }
            throw th;
        }
    }

    /* renamed from: b */
    public void m7593b(String str) {
        C23100a c23100a = this.f63751d;
        c23100a.f63934a = ((String) C23088k.m7561a(c23100a.f63936c.f64080b.mo7515d(), "<html><body style='text-align:center; margin:0px; padding:0px; horizontal-align:center;'><script>%%adTagData%%</script></body></html>")).replace((String) C23088k.m7561a(c23100a.f63936c.f64080b.mo7516c(), "%%adTagData%%"), str);
        this.f63751d.f63935b = EnumC23092o.LOADED;
        this.f63753f.m7594a(EnumC23143v2.VALID);
    }

    /* renamed from: c */
    public String m7592c() throws Exception {
        InputStream m7610b = C22967g.m7610b(this.f63754g.m7609c(new URL(this.f63750c), this.f63752e.mo7427a().get(), "GET"));
        try {
            String m2354g = C26232y.m2354g(m7610b);
            if (m7610b != null) {
                m7610b.close();
            }
            return m2354g;
        } catch (Throwable th) {
            if (m7610b != null) {
                try {
                    m7610b.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
