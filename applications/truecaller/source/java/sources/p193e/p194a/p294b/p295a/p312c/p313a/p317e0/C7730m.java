package p193e.p194a.p294b.p295a.p312c.p313a.p317e0;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7694a0;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7696b0;
import p193e.p194a.p372b0.p426p.AbstractC8552d;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p798g5.AbstractC14537p;
import q3.a.i0;
import q3.a.j0;
import s1.f0.r;
import s1.f0.v;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.b.a.c.a.e0.m */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/e0/m.class */
public final class C7730m extends AbstractC20574a<AbstractC7696b0> implements AbstractC7694a0 {

    /* renamed from: d */
    public List<C8551c> f24196d;

    /* renamed from: e */
    public final f f24197e;

    /* renamed from: f */
    public final f f24198f;

    /* renamed from: g */
    public final AbstractC8552d f24199g;

    /* renamed from: h */
    public final AbstractC14537p f24200h;

    @e(c = "com.truecaller.bizmon.newBusiness.onboarding.ui.presenters.SubCategorySearchPresenter$loadSubCategories$1", f = "SubCategorySearchPresenter.kt", l = {28}, m = "invokeSuspend")
    /* renamed from: e.a.b.a.c.a.e0.m$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/e0/m$a.class */
    public static final class C7731a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f24201e;

        /* renamed from: f */
        public int f24202f;

        /* renamed from: h */
        public final /* synthetic */ long f24204h;

        @e(c = "com.truecaller.bizmon.newBusiness.onboarding.ui.presenters.SubCategorySearchPresenter$loadSubCategories$1$1", f = "SubCategorySearchPresenter.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.b.a.c.a.e0.m$a$a */
        /* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/e0/m$a$a.class */
        public static final class C7732a extends i implements p<i0, d<? super List<? extends C8551c>>, Object> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C7732a(d dVar) {
                super(2, dVar);
                C7731a.this = r5;
            }

            /* renamed from: i */
            public final d<s> m29383i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C7732a(dVar);
            }

            /* renamed from: k */
            public final Object m29382k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C7731a c7731a = C7731a.this;
                dVar.getContext();
                C25225a.m3932a3(s.a);
                return C7730m.this.f24199g.mo28403a(c7731a.f24204h);
            }

            /* renamed from: s */
            public final Object m29381s(Object obj) {
                C25225a.m3932a3(obj);
                C7731a c7731a = C7731a.this;
                return C7730m.this.f24199g.mo28403a(c7731a.f24204h);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7731a(long j, d dVar) {
            super(2, dVar);
            C7730m.this = r5;
            this.f24204h = j;
        }

        /* renamed from: i */
        public final d<s> m29386i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7731a(this.f24204h, dVar);
        }

        /* renamed from: k */
        public final Object m29385k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C7731a(this.f24204h, dVar).m29384s(s.a);
        }

        /* renamed from: s */
        public final Object m29384s(Object obj) {
            Object obj2;
            C7730m c7730m;
            a aVar = a.a;
            int i = this.f24202f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C7730m c7730m2 = C7730m.this;
                f fVar = c7730m2.f24198f;
                C7732a c7732a = new C7732a(null);
                this.f24201e = c7730m2;
                this.f24202f = 1;
                obj2 = s1.a.a.a.v0.f.d.a4(fVar, c7732a, this);
                if (obj2 == aVar) {
                    return aVar;
                }
                c7730m = c7730m2;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                c7730m = (C7730m) this.f24201e;
                C25225a.m3932a3(obj);
                obj2 = obj;
            }
            c7730m.f24196d = (List) obj2;
            C7730m c7730m3 = C7730m.this;
            AbstractC7696b0 abstractC7696b0 = (AbstractC7696b0) c7730m3.f57683a;
            if (abstractC7696b0 != null) {
                List<C8551c> list = c7730m3.f24196d;
                if (list == null) {
                    l.l("childTags");
                    throw null;
                }
                abstractC7696b0.mo29438J2(list);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C7730m(@Named("UI") f fVar, @Named("IO") f fVar2, AbstractC8552d abstractC8552d, AbstractC14537p abstractC14537p) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(fVar2, "ioContext");
        l.e(abstractC8552d, "tagManager");
        l.e(abstractC14537p, "tagDisplayUtil");
        this.f24197e = fVar;
        this.f24198f = fVar2;
        this.f24199g = abstractC8552d;
        this.f24200h = abstractC14537p;
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7694a0
    /* renamed from: Qh */
    public void mo29389Qh(long j) {
        AbstractC7696b0 abstractC7696b0;
        C8551c mo20024c = this.f24200h.mo20024c(j);
        if (mo20024c == null || (abstractC7696b0 = (AbstractC7696b0) this.f57683a) == null) {
            return;
        }
        abstractC7696b0.mo29437t3(mo20024c);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7694a0
    /* renamed from: ae */
    public List<C8551c> mo29388ae(String str) {
        if (str == null || r.p(str)) {
            List<C8551c> list = this.f24196d;
            if (list != null) {
                return list;
            }
            l.l("childTags");
            throw null;
        }
        List<C8551c> list2 = this.f24196d;
        if (list2 == null) {
            l.l("childTags");
            throw null;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list2) {
            String str2 = ((C8551c) obj).f26351b;
            Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.CharSequence");
            if (v.z(str2, v.g0(str).toString(), true)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7694a0
    /* renamed from: mj */
    public void mo29387mj(long j) {
        s1.a.a.a.v0.f.d.w2(this, this.f24197e, (j0) null, new C7731a(j, null), 2, (Object) null);
    }
}
