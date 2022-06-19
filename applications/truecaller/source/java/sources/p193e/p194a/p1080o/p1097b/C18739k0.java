package p193e.p194a.p1080o.p1097b;

import javax.inject.Inject;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1080o.AbstractC18765c;
import p193e.p194a.p1129p5.p1134u0.AbstractC19322a;
import p193e.p194a.p1129p5.p1134u0.C19326d;
import s1.z.c.l;
/* renamed from: e.a.o.b.k0 */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/k0.class */
public final class C18739k0 implements AbstractC19322a {

    /* renamed from: a */
    public C19326d f52666a;

    /* renamed from: b */
    public final AbstractC18765c f52667b;

    /* renamed from: c */
    public final AbstractC18746o f52668c;

    @Inject
    public C18739k0(AbstractC18765c abstractC18765c, AbstractC18746o abstractC18746o) {
        l.e(abstractC18765c, "contextCall");
        l.e(abstractC18746o, "contextCallSettings");
        this.f52667b = abstractC18765c;
        this.f52668c = abstractC18746o;
    }

    @Override // p193e.p194a.p1129p5.p1134u0.AbstractC19322a
    /* renamed from: a */
    public void mo13459a() {
        this.f52668c.putBoolean("showcaseIsDisplayed", true);
    }

    @Override // p193e.p194a.p1129p5.p1134u0.AbstractC19322a
    /* renamed from: b */
    public boolean mo13458b() {
        boolean z = false;
        if (!C17891a1.C17902k.m15681F(this.f52668c, "showcaseIsDisplayed", false, 2, null)) {
            z = false;
            if (this.f52667b.isSupported()) {
                z = true;
            }
        }
        return z;
    }

    @Override // p193e.p194a.p1129p5.p1134u0.AbstractC19322a
    /* renamed from: c */
    public C19326d mo13457c() {
        C19326d c19326d = this.f52666a;
        if (c19326d != null) {
            return c19326d;
        }
        l.l("showcaseConfig");
        throw null;
    }

    @Override // p193e.p194a.p1129p5.p1134u0.AbstractC19322a
    /* renamed from: d */
    public void mo13456d(C19326d c19326d) {
        l.e(c19326d, "<set-?>");
        this.f52666a = c19326d;
    }
}
