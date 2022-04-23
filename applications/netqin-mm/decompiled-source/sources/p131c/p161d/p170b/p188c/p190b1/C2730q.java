package p131c.p161d.p170b.p188c.p190b1;

import android.net.Uri;
import p131c.p161d.p170b.p188c.AbstractC2965r0;
import p131c.p161d.p170b.p188c.p190b1.AbstractC2737t;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2821e;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2827j;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2838q;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2841t;
import p131c.p161d.p170b.p188c.p201f1.C2836o;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p209v0.C3022c;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3045j;
import p131c.p161d.p170b.p188c.p210w0.C3040e;
@Deprecated
/* renamed from: c.d.b.c.b1.q */
/* loaded from: classes-dex2jar.jar:c/d/b/c/b1/q.class */
public final class C2730q extends AbstractC2725n<Void> {

    /* renamed from: i */
    public final C2752w f9916i;

    @Deprecated
    /* renamed from: c.d.b.c.b1.q$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/b1/q$b.class */
    public static final class C2732b {

        /* renamed from: a */
        public final AbstractC2827j.AbstractC2828a f9917a;

        /* renamed from: b */
        public AbstractC3045j f9918b;

        /* renamed from: c */
        public String f9919c;

        /* renamed from: d */
        public Object f9920d;

        /* renamed from: e */
        public AbstractC2838q f9921e = new C2836o();

        /* renamed from: f */
        public int f9922f = 1048576;

        /* renamed from: g */
        public boolean f9923g;

        public C2732b(AbstractC2827j.AbstractC2828a aVar) {
            this.f9917a = aVar;
        }

        /* renamed from: a */
        public C2732b m29253a(AbstractC3045j jVar) {
            C2877e.m28731b(!this.f9923g);
            this.f9918b = jVar;
            return this;
        }

        /* renamed from: a */
        public C2730q m29254a(Uri uri) {
            this.f9923g = true;
            if (this.f9918b == null) {
                this.f9918b = new C3040e();
            }
            return new C2730q(uri, this.f9917a, this.f9918b, this.f9921e, this.f9919c, this.f9922f, this.f9920d);
        }
    }

    public C2730q(Uri uri, AbstractC2827j.AbstractC2828a aVar, AbstractC3045j jVar, AbstractC2838q qVar, String str, int i, Object obj) {
        this.f9916i = new C2752w(uri, aVar, jVar, C3022c.m28116a(), qVar, str, i, obj);
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2737t
    /* renamed from: a */
    public AbstractC2735s mo29150a(AbstractC2737t.C2738a aVar, AbstractC2821e eVar, long j) {
        return this.f9916i.mo29150a(aVar, eVar, j);
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2737t
    /* renamed from: a */
    public void mo29151a(AbstractC2735s sVar) {
        this.f9916i.mo29151a(sVar);
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2725n, p131c.p161d.p170b.p188c.p190b1.AbstractC2722l
    /* renamed from: a */
    public void mo29149a(AbstractC2841t tVar) {
        super.mo29149a(tVar);
        m29262a((C2730q) null, this.f9916i);
    }

    /* renamed from: a */
    public void mo29255b(Void r4, AbstractC2737t tVar, AbstractC2965r0 r0Var) {
        m29273a(r0Var);
    }
}
