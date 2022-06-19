package p193e.p194a.p1195s.p1200m;

import com.truecaller.callhero_assistant.C3605R;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1129p5.AbstractC19237j0;
import p193e.p194a.p1195s.p1212s.AbstractC20168a;
import p193e.p194a.p1195s.p1212s.AbstractC20177c;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p682e.C12864a2;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.s.m.e */
/* loaded from: classes17-dex2jar.jar:e/a/s/m/e.class */
public final class C20043e extends AbstractC20574a<AbstractC20042d> implements AbstractC20041c {

    /* renamed from: d */
    public final f f56610d;

    /* renamed from: e */
    public final AbstractC20177c f56611e;

    /* renamed from: f */
    public final AbstractC20168a f56612f;

    /* renamed from: g */
    public final AbstractC19237j0 f56613g;

    /* renamed from: h */
    public final AbstractC17197v0 f56614h;

    @e(c = "com.truecaller.callhero_assistant.deactivate.DeactivateServicePresenter$onDisableServiceDialogPositiveButtonClicked$1", f = "DeactivateServicePresenter.kt", l = {34}, m = "invokeSuspend")
    /* renamed from: e.a.s.m.e$a */
    /* loaded from: classes17-dex2jar.jar:e/a/s/m/e$a.class */
    public static final class C20044a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f56615e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20044a(d dVar) {
            super(2, dVar);
            C20043e.this = r5;
        }

        /* renamed from: i */
        public final d<s> m11615i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C20044a(dVar);
        }

        /* renamed from: k */
        public final Object m11614k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C20044a(dVar).m11613s(s.a);
        }

        /* renamed from: s */
        public final Object m11613s(Object obj) {
            a aVar = a.a;
            int i = this.f56615e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC20168a abstractC20168a = C20043e.this.f56612f;
                this.f56615e = 1;
                Object mo11450a = abstractC20168a.mo11450a(this);
                obj = mo11450a;
                if (mo11450a == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            if (((Boolean) obj).booleanValue()) {
                C20043e.this.f56611e.mo11420l0(false);
                C20043e.this.f56614h.mo16398f2(false);
            } else {
                C12864a2.m22554g0(C20043e.this.f56613g, C3605R.string.CallAssistantDeactivateServiceFailedContactSupport, null, 0, 6, null);
            }
            AbstractC20042d abstractC20042d = (AbstractC20042d) C20043e.this.f57683a;
            if (abstractC20042d != null) {
                abstractC20042d.finish();
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C20043e(@Named("UI") f fVar, AbstractC20177c abstractC20177c, AbstractC20168a abstractC20168a, AbstractC19237j0 abstractC19237j0, AbstractC17197v0 abstractC17197v0) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC20177c, "callAssistantSettings");
        l.e(abstractC20168a, "callAssistantAccountManager");
        l.e(abstractC19237j0, "toastUtil");
        l.e(abstractC17197v0, "premiumStateSettings");
        this.f56610d = fVar;
        this.f56611e = abstractC20177c;
        this.f56612f = abstractC20168a;
        this.f56613g = abstractC19237j0;
        this.f56614h = abstractC17197v0;
    }

    @Override // p193e.p194a.p1195s.p1200m.AbstractC20041c
    /* renamed from: G8 */
    public void mo11620G8() {
        AbstractC20042d abstractC20042d;
        String mo11435A = this.f56611e.mo11435A();
        if (mo11435A == null || mo11435A.length() == 0) {
            C12864a2.m22554g0(this.f56613g, C3605R.string.CallAssistantDeactivateServiceFailedContactSupport, null, 0, 6, null);
            return;
        }
        String mo11435A2 = this.f56611e.mo11435A();
        if (mo11435A2 == null || (abstractC20042d = (AbstractC20042d) this.f57683a) == null) {
            return;
        }
        abstractC20042d.mo11622hk(mo11435A2, 1);
    }

    @Override // p193e.p194a.p1195s.p1200m.AbstractC20041c
    /* renamed from: Gi */
    public void mo11619Gi() {
        AbstractC20042d abstractC20042d = (AbstractC20042d) this.f57683a;
        if (abstractC20042d != null) {
            abstractC20042d.finish();
        }
    }

    @Override // p193e.p194a.p1195s.p1200m.AbstractC20041c
    /* renamed from: Oh */
    public void mo11618Oh() {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C20044a(null), 3, (Object) null);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.s.m.d] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC20042d abstractC20042d) {
        AbstractC20042d abstractC20042d2 = abstractC20042d;
        l.e(abstractC20042d2, "presenterView");
        this.f57683a = abstractC20042d2;
        String mo11435A = this.f56611e.mo11435A();
        if (mo11435A != null) {
            abstractC20042d2.mo11624M8(mo11435A);
        }
    }

    @Override // p193e.p194a.p1195s.p1200m.AbstractC20041c
    /* renamed from: h7 */
    public void mo11617h7() {
        AbstractC20042d abstractC20042d;
        String mo11427N = this.f56611e.mo11427N();
        if (mo11427N == null || mo11427N.length() == 0) {
            C12864a2.m22554g0(this.f56613g, C3605R.string.CallAssistantDeactivateServiceFailedContactSupport, null, 0, 6, null);
            return;
        }
        String mo11427N2 = this.f56611e.mo11427N();
        if (mo11427N2 == null || (abstractC20042d = (AbstractC20042d) this.f57683a) == null) {
            return;
        }
        abstractC20042d.mo11621j3(mo11427N2);
    }

    @Override // p193e.p194a.p1195s.p1200m.AbstractC20041c
    /* renamed from: q */
    public void mo11616q(int i) {
        AbstractC20042d abstractC20042d;
        if (i != 1 || (abstractC20042d = (AbstractC20042d) this.f57683a) == null) {
            return;
        }
        abstractC20042d.mo11623cg();
    }
}
