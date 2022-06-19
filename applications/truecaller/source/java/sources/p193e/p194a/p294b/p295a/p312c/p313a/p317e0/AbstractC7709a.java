package p193e.p194a.p294b.p295a.p312c.p313a.p317e0;

import com.truecaller.bizmon.newBusiness.data.BusinessAPIError;
import com.truecaller.common.C3656R;
import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7744q;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r;
import p193e.p194a.p294b.p295a.p322f.AbstractC7780a;
import p193e.p194a.p294b.p295a.p322f.AbstractC7790b;
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
/* renamed from: e.a.b.a.c.a.e0.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/e0/a.class */
public abstract class AbstractC7709a<T extends AbstractC7745r> extends AbstractC20574a<T> implements AbstractC7744q<T> {

    /* renamed from: d */
    public final f f24105d;

    /* renamed from: e */
    public final f f24106e;

    /* renamed from: f */
    public final AbstractC7790b f24107f;

    /* renamed from: g */
    public final AbstractC19223c0 f24108g;

    @e(c = "com.truecaller.bizmon.newBusiness.onboarding.ui.presenters.BaseChildPresenter$saveBusinessProfile$1", f = "BaseChildPresenter.kt", l = {23}, m = "invokeSuspend")
    /* renamed from: e.a.b.a.c.a.e0.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/e0/a$a.class */
    public static final class C7710a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f24109e;

        /* renamed from: g */
        public final /* synthetic */ BusinessProfile f24111g;

        @e(c = "com.truecaller.bizmon.newBusiness.onboarding.ui.presenters.BaseChildPresenter$saveBusinessProfile$1$apiResult$1", f = "BaseChildPresenter.kt", l = {24}, m = "invokeSuspend")
        /* renamed from: e.a.b.a.c.a.e0.a$a$a */
        /* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/e0/a$a$a.class */
        public static final class C7711a extends i implements p<i0, d<? super AbstractC7780a>, Object> {

            /* renamed from: e */
            public int f24112e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C7711a(d dVar) {
                super(2, dVar);
                C7710a.this = r5;
            }

            /* renamed from: i */
            public final d<s> m29427i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C7711a(dVar);
            }

            /* renamed from: k */
            public final Object m29426k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                return new C7711a(dVar).m29425s(s.a);
            }

            /* renamed from: s */
            public final Object m29425s(Object obj) {
                a aVar = a.a;
                int i = this.f24112e;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    C7710a c7710a = C7710a.this;
                    AbstractC7790b abstractC7790b = AbstractC7709a.this.f24107f;
                    BusinessProfile businessProfile = c7710a.f24111g;
                    this.f24112e = 1;
                    Object mo29293a = abstractC7790b.mo29293a(businessProfile, this);
                    obj = mo29293a;
                    if (mo29293a == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C25225a.m3932a3(obj);
                }
                return obj;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7710a(BusinessProfile businessProfile, d dVar) {
            super(2, dVar);
            AbstractC7709a.this = r5;
            this.f24111g = businessProfile;
        }

        /* renamed from: i */
        public final d<s> m29430i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7710a(this.f24111g, dVar);
        }

        /* renamed from: k */
        public final Object m29429k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C7710a(this.f24111g, dVar).m29428s(s.a);
        }

        /* renamed from: s */
        public final Object m29428s(Object obj) {
            a aVar = a.a;
            int i = this.f24109e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC7745r abstractC7745r = (AbstractC7745r) AbstractC7709a.this.f57683a;
                if (abstractC7745r != null) {
                    abstractC7745r.mo29333a0();
                }
                f fVar = AbstractC7709a.this.f24105d;
                C7711a c7711a = new C7711a(null);
                this.f24109e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(fVar, c7711a, this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC7780a abstractC7780a = (AbstractC7780a) obj;
            AbstractC7745r abstractC7745r2 = (AbstractC7745r) AbstractC7709a.this.f57683a;
            if (abstractC7745r2 != null) {
                abstractC7745r2.mo29332b0();
            }
            if (abstractC7780a.f24239a) {
                AbstractC7745r abstractC7745r3 = (AbstractC7745r) AbstractC7709a.this.f57683a;
                if (abstractC7745r3 != null) {
                    abstractC7745r3.mo29329ie();
                }
            } else {
                AbstractC7745r abstractC7745r4 = (AbstractC7745r) AbstractC7709a.this.f57683a;
                if (abstractC7745r4 != null) {
                    abstractC7745r4.mo29336G2(abstractC7780a);
                }
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC7709a(f fVar, f fVar2, AbstractC7790b abstractC7790b, AbstractC19223c0 abstractC19223c0) {
        super(fVar2);
        l.e(fVar, "asyncContext");
        l.e(fVar2, "uiContext");
        l.e(abstractC7790b, "businessProfileV2Repository");
        l.e(abstractC19223c0, "resourceProvider");
        this.f24105d = fVar;
        this.f24106e = fVar2;
        this.f24107f = abstractC7790b;
        this.f24108g = abstractC19223c0;
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7744q
    /* renamed from: A */
    public void mo29343A(BusinessProfile businessProfile) {
        l.e(businessProfile, "businessProfile");
        s1.a.a.a.v0.f.d.w2(this, this.f24106e, (j0) null, new C7710a(businessProfile, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7744q
    /* renamed from: G2 */
    public void mo29342G2(AbstractC7780a abstractC7780a) {
        int i;
        BusinessAPIError businessAPIError;
        l.e(abstractC7780a, "businessAPIResult");
        AbstractC7745r abstractC7745r = (AbstractC7745r) this.f57683a;
        if (abstractC7745r != null) {
            AbstractC19223c0 abstractC19223c0 = this.f24108g;
            if (abstractC7780a instanceof AbstractC7780a.C7787g) {
                throw new IllegalStateException("Not an error".toString());
            }
            if (l.a(abstractC7780a, AbstractC7780a.C7782b.f24242c)) {
                throw new IllegalStateException("Not an error".toString());
            }
            if (l.a(abstractC7780a, AbstractC7780a.C7783c.f24243c)) {
                i = C3656R.string.profile_error_generic;
            } else if (l.a(abstractC7780a, AbstractC7780a.C7781a.f24241c)) {
                i = C3656R.string.profile_error_generic;
            } else if (l.a(abstractC7780a, AbstractC7780a.C7784d.f24244c)) {
                i = C3656R.string.profile_error_network;
            } else if (l.a(abstractC7780a, AbstractC7780a.C7785e.f24245c)) {
                i = C3656R.string.profile_error_network;
            } else if (l.a(abstractC7780a, AbstractC7780a.C7786f.f24246c)) {
                throw new IllegalStateException("Not an error".toString());
            } else {
                if (abstractC7780a instanceof AbstractC7780a.C7788h) {
                    i = C3656R.string.profile_error_network;
                } else if (!(abstractC7780a instanceof AbstractC7780a.C7789i)) {
                    throw new s1.i();
                } else {
                    List<BusinessAPIError> errors = ((AbstractC7780a.C7789i) abstractC7780a).f24248c.getErrors();
                    Integer valueOf = (errors == null || (businessAPIError = (BusinessAPIError) s1.u.i.D(errors)) == null) ? null : Integer.valueOf(businessAPIError.getErrorType());
                    i = (valueOf != null && valueOf.intValue() == 1) ? C3656R.string.profile_error_validation_invalidCharacter : (valueOf != null && valueOf.intValue() == 2) ? C3656R.string.profile_error_validation_invalidWord : C3656R.string.profile_error_generic;
                }
            }
            String mo13768b = abstractC19223c0.mo13768b(i, new Object[0]);
            l.d(mo13768b, "resourceProvider.getStri…APIResult.getErrorText())");
            abstractC7745r.mo29334M(mo13768b);
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7744q
    /* renamed from: c4 */
    public void mo29340c4(BusinessProfile businessProfile) {
        l.e(businessProfile, "businessProfile");
        this.f24107f.mo29292b(businessProfile);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7744q
    /* renamed from: d4 */
    public void mo29339d4() {
        BusinessProfile mo29291c = this.f24107f.mo29291c();
        if (mo29291c == null) {
            mo29291c = new BusinessProfile(null, null, null, null, null, null, null, null, null, 511, null);
        }
        mo29341b4(mo29291c);
        AbstractC7745r abstractC7745r = (AbstractC7745r) this.f57683a;
        if (abstractC7745r != null) {
            abstractC7745r.mo29331b4(mo29291c);
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7744q
    /* renamed from: kc */
    public void mo29338kc() {
        AbstractC7745r abstractC7745r = (AbstractC7745r) this.f57683a;
        if (abstractC7745r != null) {
            abstractC7745r.mo29328km();
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7744q
    /* renamed from: xd */
    public void mo29337xd() {
        AbstractC7745r abstractC7745r = (AbstractC7745r) this.f57683a;
        if (abstractC7745r != null) {
            abstractC7745r.mo29330e9();
        }
    }
}
