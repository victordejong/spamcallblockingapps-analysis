package p193e.p194a.p294b.p295a.p312c.p313a.p317e0;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7743p;
import p193e.p194a.p294b.p295a.p322f.AbstractC7780a;
import p193e.p194a.p294b.p295a.p322f.AbstractC7790b;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.bizmon.newBusiness.onboarding.ui.presenters.OnboardingIntroPresenter$checkForBizProfile$1", f = "OnboardingIntroPresenter.kt", l = {45}, m = "invokeSuspend")
/* renamed from: e.a.b.a.c.a.e0.h */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/e0/h.class */
public final class C7723h extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f24169e;

    /* renamed from: f */
    public final /* synthetic */ C7725i f24170f;

    @e(c = "com.truecaller.bizmon.newBusiness.onboarding.ui.presenters.OnboardingIntroPresenter$checkForBizProfile$1$showEditProfile$1", f = "OnboardingIntroPresenter.kt", l = {46}, m = "invokeSuspend")
    /* renamed from: e.a.b.a.c.a.e0.h$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/e0/h$a.class */
    public static final class C7724a extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f24171e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7724a(d dVar) {
            super(2, dVar);
            C7723h.this = r5;
        }

        /* renamed from: i */
        public final d<s> m29398i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7724a(dVar);
        }

        /* renamed from: k */
        public final Object m29397k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C7724a(dVar).m29396s(s.a);
        }

        /* renamed from: s */
        public final Object m29396s(Object obj) {
            a aVar = a.a;
            int i = this.f24171e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC7790b abstractC7790b = C7723h.this.f24170f.f24175f;
                this.f24171e = 1;
                Object mo29290d = abstractC7790b.mo29290d(this);
                obj = mo29290d;
                if (mo29290d == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC7780a abstractC7780a = (AbstractC7780a) obj;
            boolean z = true;
            if (!(abstractC7780a instanceof AbstractC7780a.C7787g)) {
                z = abstractC7780a instanceof AbstractC7780a.C7786f;
            }
            C7723h.this.f24170f.f24179j.putBoolean("bizV2GetProfileSuccess", z);
            return Boolean.valueOf(z);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7723h(C7725i c7725i, d dVar) {
        super(2, dVar);
        this.f24170f = c7725i;
    }

    /* renamed from: i */
    public final d<s> m29401i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C7723h(this.f24170f, dVar);
    }

    /* renamed from: k */
    public final Object m29400k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C7723h(this.f24170f, dVar).m29399s(s.a);
    }

    /* renamed from: s */
    public final Object m29399s(Object obj) {
        AbstractC7743p abstractC7743p;
        a aVar = a.a;
        int i = this.f24169e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC7743p abstractC7743p2 = (AbstractC7743p) this.f24170f.f57683a;
            if (abstractC7743p2 != null) {
                abstractC7743p2.mo29349a0();
            }
            f fVar = this.f24170f.f24176g;
            C7724a c7724a = new C7724a(null);
            this.f24169e = 1;
            Object a4 = s1.a.a.a.v0.f.d.a4(fVar, c7724a, this);
            obj = a4;
            if (a4 == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        AbstractC7743p abstractC7743p3 = (AbstractC7743p) this.f24170f.f57683a;
        if (abstractC7743p3 != null) {
            abstractC7743p3.mo29347b0();
        }
        if (booleanValue && this.f24170f.f24178i.m10944x().isEnabled() && (abstractC7743p = (AbstractC7743p) this.f24170f.f57683a) != null) {
            abstractC7743p.mo29350Z1();
        }
        return s.a;
    }
}
