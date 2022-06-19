package p193e.p194a.p1195s.p1207q.p1209f;

import e.m.d.y.n;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import p1727n3.p1834m0.C26829f;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1129p5.AbstractC19237j0;
import p193e.p194a.p1195s.p1211r.AbstractC20164c;
import p193e.p194a.p1195s.p1211r.AbstractC20167e;
import p193e.p194a.p1195s.p1212s.AbstractC20168a;
import p193e.p194a.p1195s.p1212s.AbstractC20177c;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1392y2.p1394q.AbstractC21780a;
import p193e.p194a.p372b0.p430q.AbstractC8577e;
import p193e.p194a.p682e.C12864a2;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.s.q.f.e */
/* loaded from: classes17-dex2jar.jar:e/a/s/q/f/e.class */
public final class C20139e extends AbstractC20574a<AbstractC20138d> implements AbstractC20137c, AbstractC20167e {

    /* renamed from: d */
    public p1 f56771d;

    /* renamed from: e */
    public final f f56772e;

    /* renamed from: f */
    public final AbstractC19237j0 f56773f;

    /* renamed from: g */
    public final AbstractC20168a f56774g;

    /* renamed from: h */
    public final AbstractC20177c f56775h;

    /* renamed from: i */
    public final AbstractC20164c f56776i;

    /* renamed from: j */
    public final AbstractC8577e f56777j;

    /* renamed from: k */
    public final AbstractC21780a f56778k;

    /* renamed from: l */
    public final AbstractC17197v0 f56779l;

    @e(c = "com.truecaller.callhero_assistant.onboarding.validation.OnboardingStepValidationPresenter$onVerifyClicked$1", f = "OnboardingStepValidationPresenter.kt", l = {58}, m = "invokeSuspend")
    /* renamed from: e.a.s.q.f.e$a */
    /* loaded from: classes17-dex2jar.jar:e/a/s/q/f/e$a.class */
    public static final class C20140a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f56780e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20140a(d dVar) {
            super(2, dVar);
            C20139e.this = r5;
        }

        /* renamed from: i */
        public final d<s> m11495i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C20140a(dVar);
        }

        /* renamed from: k */
        public final Object m11494k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C20140a(dVar).m11493s(s.a);
        }

        /* renamed from: s */
        public final Object m11493s(Object obj) {
            a aVar = a.a;
            int i = this.f56780e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC20168a abstractC20168a = C20139e.this.f56774g;
                this.f56780e = 1;
                Object mo11449b = abstractC20168a.mo11449b(this);
                obj = mo11449b;
                if (mo11449b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            if (!((Boolean) obj).booleanValue()) {
                AbstractC20138d abstractC20138d = (AbstractC20138d) C20139e.this.f57683a;
                if (abstractC20138d != null) {
                    abstractC20138d.mo11499xa();
                }
                AbstractC20138d abstractC20138d2 = (AbstractC20138d) C20139e.this.f57683a;
                if (abstractC20138d2 != null) {
                    abstractC20138d2.mo11502Uk(true);
                }
                C12864a2.m22554g0(C20139e.this.f56773f, 2131886719, null, 0, 6, null);
            } else {
                C20139e c20139e = C20139e.this;
                Objects.requireNonNull(c20139e);
                c20139e.f56771d = s1.a.a.a.v0.f.d.w2(c20139e, (f) null, (j0) null, new C20141f(c20139e, null), 3, (Object) null);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C20139e(@Named("UI") f fVar, AbstractC19237j0 abstractC19237j0, AbstractC20168a abstractC20168a, AbstractC20177c abstractC20177c, AbstractC20164c abstractC20164c, AbstractC8577e abstractC8577e, AbstractC21780a abstractC21780a, AbstractC17197v0 abstractC17197v0) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC19237j0, "toastUtil");
        l.e(abstractC20168a, "accountManager");
        l.e(abstractC20177c, "callAssistantSettings");
        l.e(abstractC20164c, "serviceValidationHelper");
        l.e(abstractC8577e, "callRejecter");
        l.e(abstractC21780a, "backgroundWorkTrigger");
        l.e(abstractC17197v0, "premiumStateSettings");
        this.f56772e = fVar;
        this.f56773f = abstractC19237j0;
        this.f56774g = abstractC20168a;
        this.f56775h = abstractC20177c;
        this.f56776i = abstractC20164c;
        this.f56777j = abstractC8577e;
        this.f56778k = abstractC21780a;
        this.f56779l = abstractC17197v0;
    }

    @Override // p193e.p194a.p1195s.p1207q.p1209f.AbstractC20137c
    /* renamed from: Cd */
    public void mo11498Cd() {
        AbstractC20138d abstractC20138d = (AbstractC20138d) this.f57683a;
        if (abstractC20138d != null) {
            abstractC20138d.mo11502Uk(false);
        }
        AbstractC20138d abstractC20138d2 = (AbstractC20138d) this.f57683a;
        if (abstractC20138d2 != null) {
            abstractC20138d2.mo11500qx();
        }
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C20140a(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1195s.p1207q.p1209f.AbstractC20137c
    /* renamed from: T6 */
    public void mo11497T6() {
        this.f56777j.mo28341a();
        AbstractC20138d abstractC20138d = (AbstractC20138d) this.f57683a;
        if (abstractC20138d != null) {
            abstractC20138d.mo11499xa();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.s.q.f.d, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC20138d abstractC20138d) {
        AbstractC20138d abstractC20138d2 = abstractC20138d;
        l.e(abstractC20138d2, "presenterView");
        this.f57683a = abstractC20138d2;
        this.f56776i.mo11455l1(this);
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        this.f56776i.mo11456k1(this);
        AbstractC20138d abstractC20138d = (AbstractC20138d) this.f57683a;
        if (abstractC20138d != null) {
            abstractC20138d.mo11499xa();
        }
        super.mo9806c();
    }

    @Override // p193e.p194a.p1195s.p1211r.AbstractC20167e
    /* renamed from: j1 */
    public void mo11451j1() {
        p1 p1Var = this.f56771d;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        this.f56775h.mo11420l0(true);
        this.f56779l.mo16398f2(true);
        AbstractC20138d abstractC20138d = (AbstractC20138d) this.f57683a;
        if (abstractC20138d != null) {
            abstractC20138d.mo11501en("");
        }
        AbstractC20138d abstractC20138d2 = (AbstractC20138d) this.f57683a;
        if (abstractC20138d2 != null) {
            abstractC20138d2.mo11503Td();
        }
        AbstractC20138d abstractC20138d3 = (AbstractC20138d) this.f57683a;
        if (abstractC20138d3 != null) {
            abstractC20138d3.mo11499xa();
        }
        n.z1(this.f56778k, "CallAssistantNumberSyncWorkAction", (k) null, (C26829f) null, 6, (Object) null);
    }

    @Override // p193e.p194a.p1195s.p1207q.p1209f.AbstractC20137c
    /* renamed from: r6 */
    public void mo11496r6() {
        AbstractC20138d abstractC20138d = (AbstractC20138d) this.f57683a;
        if (abstractC20138d != null) {
            abstractC20138d.mo11504T();
        }
    }
}
