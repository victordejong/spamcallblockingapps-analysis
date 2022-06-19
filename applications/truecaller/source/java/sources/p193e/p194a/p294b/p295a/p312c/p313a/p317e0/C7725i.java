package p193e.p194a.p294b.p295a.p312c.p313a.p317e0;

import com.truecaller.common.account.Region;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7742o;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7743p;
import p193e.p194a.p294b.p295a.p321e.AbstractC7761a;
import p193e.p194a.p294b.p295a.p321e.AbstractC7775b;
import p193e.p194a.p294b.p295a.p322f.AbstractC7790b;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.b.a.c.a.e0.i */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/e0/i.class */
public final class C7725i extends AbstractC20574a<AbstractC7743p> implements AbstractC7742o {

    /* renamed from: d */
    public final AbstractC8426f f24173d;

    /* renamed from: e */
    public final AbstractC7775b f24174e;

    /* renamed from: f */
    public final AbstractC7790b f24175f;

    /* renamed from: g */
    public final f f24176g;

    /* renamed from: h */
    public final f f24177h;

    /* renamed from: i */
    public final C20592g f24178i;

    /* renamed from: j */
    public final AbstractC8541a f24179j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C7725i(AbstractC8426f abstractC8426f, AbstractC7775b abstractC7775b, AbstractC7790b abstractC7790b, @Named("IO") f fVar, @Named("UI") f fVar2, @Named("features_registry") C20592g c20592g, AbstractC8541a abstractC8541a) {
        super(fVar2);
        l.e(abstractC8426f, "regionUtils");
        l.e(abstractC7775b, "businessAnalyticsManager");
        l.e(abstractC7790b, "businessProfileV2Repository");
        l.e(fVar, "asyncContext");
        l.e(fVar2, "uiContext");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC8541a, "coreSettings");
        this.f24173d = abstractC8426f;
        this.f24174e = abstractC7775b;
        this.f24175f = abstractC7790b;
        this.f24176g = fVar;
        this.f24177h = fVar2;
        this.f24178i = c20592g;
        this.f24179j = abstractC8541a;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.b.a.c.a.p] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC7743p abstractC7743p) {
        AbstractC7743p abstractC7743p2 = abstractC7743p;
        l.e(abstractC7743p2, "presenterView");
        this.f57683a = abstractC7743p2;
        this.f24174e.mo29295a(AbstractC7761a.C7771j.f24231a);
        if (!this.f24179j.getBoolean("bizV2GetProfileSuccess")) {
            d.w2(this, (f) null, (j0) null, new C7723h(this, null), 3, (Object) null);
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7742o
    /* renamed from: j0 */
    public void mo29354j0() {
        AbstractC7743p abstractC7743p = (AbstractC7743p) this.f57683a;
        if (abstractC7743p != null) {
            abstractC7743p.mo29345f3();
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7742o
    /* renamed from: uj */
    public void mo29353uj() {
        AbstractC7743p abstractC7743p = (AbstractC7743p) this.f57683a;
        if (abstractC7743p != null) {
            abstractC7743p.mo29346e1();
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7742o
    /* renamed from: wa */
    public void mo29352wa() {
        Region mo28592f = this.f24173d.mo28592f();
        AbstractC7743p abstractC7743p = (AbstractC7743p) this.f57683a;
        if (abstractC7743p != null) {
            abstractC7743p.mo29344s5(C18334g0.m15254N(mo28592f), C18334g0.m15247U(mo28592f));
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7742o
    /* renamed from: x4 */
    public void mo29351x4(String str) {
        l.e(str, "url");
        AbstractC7743p abstractC7743p = (AbstractC7743p) this.f57683a;
        if (abstractC7743p != null) {
            abstractC7743p.mo29348b(str);
        }
    }
}
