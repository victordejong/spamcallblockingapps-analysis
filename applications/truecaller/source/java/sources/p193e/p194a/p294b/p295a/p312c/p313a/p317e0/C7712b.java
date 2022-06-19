package p193e.p194a.p294b.p295a.p312c.p313a.p317e0;

import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7695b;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7697c;
import p193e.p194a.p294b.p295a.p321e.AbstractC7761a;
import p193e.p194a.p294b.p295a.p321e.AbstractC7775b;
import p193e.p194a.p294b.p295a.p322f.AbstractC7790b;
import p193e.p194a.p372b0.p426p.AbstractC8552d;
import p193e.p194a.p372b0.p426p.C8551c;
import q3.a.i0;
import q3.a.j0;
import s1.f0.r;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.b.a.c.a.e0.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/e0/b.class */
public final class C7712b extends AbstractC7709a<AbstractC7697c> implements AbstractC7695b {

    /* renamed from: h */
    public List<C8551c> f24114h;

    /* renamed from: i */
    public BusinessProfile f24115i;

    /* renamed from: j */
    public final f f24116j;

    /* renamed from: k */
    public final f f24117k;

    /* renamed from: l */
    public final AbstractC7790b f24118l;

    /* renamed from: m */
    public final AbstractC19223c0 f24119m;

    /* renamed from: n */
    public final AbstractC7775b f24120n;

    /* renamed from: o */
    public final AbstractC8552d f24121o;

    @e(c = "com.truecaller.bizmon.newBusiness.onboarding.ui.presenters.CategoryPresenter$filterCategories$1", f = "CategoryPresenter.kt", l = {57}, m = "invokeSuspend")
    /* renamed from: e.a.b.a.c.a.e0.b$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/e0/b$a.class */
    public static final class C7713a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f24122e;

        /* renamed from: g */
        public final /* synthetic */ String f24124g;

        @e(c = "com.truecaller.bizmon.newBusiness.onboarding.ui.presenters.CategoryPresenter$filterCategories$1$tags$1", f = "CategoryPresenter.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.b.a.c.a.e0.b$a$a */
        /* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/e0/b$a$a.class */
        public static final class C7714a extends i implements p<i0, d<? super List<? extends C8551c>>, Object> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C7714a(d dVar) {
                super(2, dVar);
                C7713a.this = r5;
            }

            /* renamed from: i */
            public final d<s> m29418i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C7714a(dVar);
            }

            /* renamed from: k */
            public final Object m29417k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C7713a c7713a = C7713a.this;
                dVar.getContext();
                C25225a.m3932a3(s.a);
                return C17422k.m16072j0(C7712b.this.f24121o, c7713a.f24124g);
            }

            /* renamed from: s */
            public final Object m29416s(Object obj) {
                C25225a.m3932a3(obj);
                C7713a c7713a = C7713a.this;
                return C17422k.m16072j0(C7712b.this.f24121o, c7713a.f24124g);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7713a(String str, d dVar) {
            super(2, dVar);
            C7712b.this = r5;
            this.f24124g = str;
        }

        /* renamed from: i */
        public final d<s> m29421i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7713a(this.f24124g, dVar);
        }

        /* renamed from: k */
        public final Object m29420k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C7713a(this.f24124g, dVar).m29419s(s.a);
        }

        /* renamed from: s */
        public final Object m29419s(Object obj) {
            a aVar = a.a;
            int i = this.f24122e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC7697c abstractC7697c = (AbstractC7697c) C7712b.this.f57683a;
                if (abstractC7697c != null) {
                    abstractC7697c.mo29333a0();
                }
                f fVar = C7712b.this.f24117k;
                C7714a c7714a = new C7714a(null);
                this.f24122e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(fVar, c7714a, this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            List<C8551c> list = (List) obj;
            AbstractC7697c abstractC7697c2 = (AbstractC7697c) C7712b.this.f57683a;
            if (abstractC7697c2 != null) {
                abstractC7697c2.mo29436gl(list);
            }
            AbstractC7697c abstractC7697c3 = (AbstractC7697c) C7712b.this.f57683a;
            if (abstractC7697c3 != null) {
                abstractC7697c3.mo29332b0();
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C7712b(@Named("UI") f fVar, @Named("IO") f fVar2, AbstractC7790b abstractC7790b, AbstractC19223c0 abstractC19223c0, AbstractC7775b abstractC7775b, AbstractC8552d abstractC8552d) {
        super(fVar2, fVar, abstractC7790b, abstractC19223c0);
        l.e(fVar, "uiContext");
        l.e(fVar2, "ioContext");
        l.e(abstractC7790b, "businessProfileV2Repository");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC7775b, "businessAnalyticsManager");
        l.e(abstractC8552d, "tagManager");
        this.f24116j = fVar;
        this.f24117k = fVar2;
        this.f24118l = abstractC7790b;
        this.f24119m = abstractC19223c0;
        this.f24120n = abstractC7775b;
        this.f24121o = abstractC8552d;
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7695b
    /* renamed from: Dj */
    public void mo29424Dj(String str) {
        if (!(str == null || r.p(str))) {
            s1.a.a.a.v0.f.d.w2(this, this.f24116j, (j0) null, new C7713a(str, null), 2, (Object) null);
            return;
        }
        AbstractC7697c abstractC7697c = (AbstractC7697c) this.f57683a;
        if (abstractC7697c == null) {
            return;
        }
        List<C8551c> list = this.f24114h;
        if (list != null) {
            abstractC7697c.mo29434u7(list);
        } else {
            l.l("tags");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7695b
    /* renamed from: Ub */
    public void mo29423Ub(long j) {
        this.f24120n.mo29295a(new AbstractC7761a.C7763b(String.valueOf(j)));
        BusinessProfile businessProfile = this.f24115i;
        if (businessProfile == null) {
            l.l("businessProfile");
            throw null;
        }
        businessProfile.setTags(C25225a.m3962T1(Long.valueOf(j)));
        AbstractC7697c abstractC7697c = (AbstractC7697c) this.f57683a;
        if (abstractC7697c == null) {
            return;
        }
        BusinessProfile businessProfile2 = this.f24115i;
        if (businessProfile2 != null) {
            abstractC7697c.mo29435nz(businessProfile2);
        } else {
            l.l("businessProfile");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7744q
    /* renamed from: b4 */
    public void mo29341b4(BusinessProfile businessProfile) {
        l.e(businessProfile, "businessProfile");
        this.f24115i = businessProfile;
        s1.a.a.a.v0.f.d.w2(this, this.f24116j, (j0) null, new C7715c(this, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7695b
    /* renamed from: bb */
    public void mo29422bb(List<Long> list) {
        l.e(list, "tags");
        BusinessProfile businessProfile = this.f24115i;
        if (businessProfile == null) {
            l.l("businessProfile");
            throw null;
        }
        businessProfile.setTags(list);
        BusinessProfile businessProfile2 = this.f24115i;
        if (businessProfile2 != null) {
            mo29343A(businessProfile2);
        } else {
            l.l("businessProfile");
            throw null;
        }
    }
}
