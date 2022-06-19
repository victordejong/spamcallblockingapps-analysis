package p193e.p194a.p1195s.p1201n.p1202a;

import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1195s.p1197k.p1198c.C20023a;
import p193e.p194a.p1195s.p1212s.AbstractC20177c;
import p193e.p194a.p1195s.p1212s.AbstractC20179e;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.s.n.a.j */
/* loaded from: classes17-dex2jar.jar:e/a/s/n/a/j.class */
public final class C20061j extends AbstractC20574a<AbstractC20059h> implements AbstractC20058g {

    /* renamed from: d */
    public boolean f56635d;

    /* renamed from: e */
    public C20023a f56636e;

    /* renamed from: f */
    public final f f56637f;

    /* renamed from: g */
    public final AbstractC20177c f56638g;

    /* renamed from: h */
    public final AbstractC20179e f56639h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C20061j(@Named("UI") f fVar, AbstractC20177c abstractC20177c, AbstractC20179e abstractC20179e) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC20177c, "callAssistantSettings");
        l.e(abstractC20179e, "callsManager");
        this.f56637f = fVar;
        this.f56638g = abstractC20177c;
        this.f56639h = abstractC20179e;
    }

    @Override // p193e.p194a.p1195s.p1201n.p1202a.AbstractC20058g
    /* renamed from: I9 */
    public void mo11596I9(boolean z) {
        AbstractC20059h abstractC20059h;
        if (!this.f56635d) {
            return;
        }
        if (z) {
            AbstractC20059h abstractC20059h2 = (AbstractC20059h) this.f57683a;
            if (abstractC20059h2 == null) {
                return;
            }
            abstractC20059h2.mo11600oi();
        } else if (!this.f56638g.mo11422g1() || (abstractC20059h = (AbstractC20059h) this.f57683a) == null) {
        } else {
            abstractC20059h.mo11602hf();
        }
    }

    /* renamed from: Ij */
    public final void m11595Ij() {
        this.f56635d = false;
        AbstractC20059h abstractC20059h = (AbstractC20059h) this.f57683a;
        if (abstractC20059h != null) {
            abstractC20059h.mo11604Zf(this.f56638g.mo11422g1());
        }
        this.f56635d = true;
    }

    @Override // p193e.p194a.p1195s.p1201n.p1202a.AbstractC20058g
    /* renamed from: Kc */
    public void mo11594Kc() {
        d.w2(this, (f) null, (j0) null, new C20060i(this, null), 3, (Object) null);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.s.n.a.h, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC20059h abstractC20059h) {
        AbstractC20059h abstractC20059h2 = abstractC20059h;
        l.e(abstractC20059h2, "presenterView");
        this.f57683a = abstractC20059h2;
        m11595Ij();
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        C20023a c20023a = this.f56636e;
        if (c20023a != null) {
            c20023a.close();
        }
        this.f56636e = null;
        super.mo9806c();
    }

    @Override // p193e.p194a.p1195s.p1201n.p1202a.AbstractC20057f
    /* renamed from: f */
    public C20023a mo11593f() {
        return this.f56636e;
    }

    @Override // p193e.p194a.p1195s.p1201n.p1202a.AbstractC20058g
    public void onPause() {
        AbstractC20059h abstractC20059h = (AbstractC20059h) this.f57683a;
        if (abstractC20059h != null) {
            abstractC20059h.mo11601n0();
        }
    }

    @Override // p193e.p194a.p1195s.p1201n.p1202a.AbstractC20058g
    public void onResume() {
        m11595Ij();
        this.f56639h.mo11416a();
        AbstractC20059h abstractC20059h = (AbstractC20059h) this.f57683a;
        if (abstractC20059h != null) {
            abstractC20059h.mo11606Gt();
        }
        d.w2(this, (f) null, (j0) null, new C20060i(this, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1195s.p1201n.p1202a.AbstractC20058g
    /* renamed from: v0 */
    public boolean mo11592v0() {
        AbstractC20059h abstractC20059h = (AbstractC20059h) this.f57683a;
        if (abstractC20059h != null) {
            abstractC20059h.mo11605Ng();
            return true;
        }
        return true;
    }
}
