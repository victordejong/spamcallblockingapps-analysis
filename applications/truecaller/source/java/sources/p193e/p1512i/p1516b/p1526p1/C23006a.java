package p193e.p1512i.p1516b.p1526p1;

import android.content.Context;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicLong;
import p193e.p1512i.p1516b.AbstractC22939e2;
import p193e.p1512i.p1516b.p1522i2.C22959a;
import p193e.p1512i.p1516b.p1522i2.C22967g;
import p193e.p1512i.p1516b.p1523l2.C22978b;
import p193e.p1512i.p1516b.p1531s2.C23073b;
import p193e.p1512i.p1516b.p1533u2.C23134y;
/* renamed from: e.i.b.p1.a */
/* loaded from: classes-dex2jar.jar:e/i/b/p1/a.class */
public class C23006a {

    /* renamed from: a */
    public final Context f63757a;

    /* renamed from: b */
    public final C23073b f63758b;

    /* renamed from: c */
    public final AbstractC22939e2 f63759c;

    /* renamed from: d */
    public final C22967g f63760d;

    /* renamed from: e */
    public final C22978b f63761e;

    /* renamed from: f */
    public final C23134y f63762f;

    /* renamed from: g */
    public final Executor f63763g;

    /* renamed from: h */
    public final AtomicLong f63764h = new AtomicLong(-1);

    public C23006a(Context context, C23073b c23073b, AbstractC22939e2 abstractC22939e2, C22967g c22967g, C22978b c22978b, C23134y c23134y, Executor executor) {
        this.f63757a = context;
        this.f63758b = c23073b;
        this.f63759c = abstractC22939e2;
        this.f63760d = c22967g;
        this.f63761e = c22978b;
        this.f63762f = c23134y;
        this.f63763g = executor;
    }

    /* renamed from: a */
    public final void m7591a(String str) {
        boolean z;
        C22978b c22978b = this.f63761e;
        if (c22978b.m7604c().isEmpty()) {
            z = !Boolean.parseBoolean(c22978b.f63706b.m7557a("USPrivacy_Optout", ""));
        } else {
            String m7604c = c22978b.m7604c();
            z = !C22978b.f63702e.matcher(m7604c).matches() || C22978b.f63703f.contains(m7604c.toLowerCase(Locale.ROOT));
        }
        boolean z2 = false;
        if (z) {
            z2 = false;
            if (!C22978b.f63704g.contains(this.f63761e.f63706b.m7557a("MoPubConsent_String", "").toLowerCase(Locale.ROOT))) {
                z2 = true;
            }
        }
        if (!z2) {
            return;
        }
        long j = this.f63764h.get();
        if (j > 0 && this.f63759c.mo7355a() < j) {
            return;
        }
        this.f63763g.execute(new C22959a(this.f63757a, this, this.f63758b, this.f63760d, this.f63762f, this.f63761e, str));
    }
}
