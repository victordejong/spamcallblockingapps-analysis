package p193e.p194a.p294b.p295a.p312c.p313a.p317e0;

import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7697c;
import p193e.p194a.p372b0.p426p.C8551c;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.bizmon.newBusiness.onboarding.ui.presenters.CategoryPresenter$loadCategories$1", f = "CategoryPresenter.kt", l = {34}, m = "invokeSuspend")
/* renamed from: e.a.b.a.c.a.e0.c */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/e0/c.class */
public final class C7715c extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f24126e;

    /* renamed from: f */
    public int f24127f;

    /* renamed from: g */
    public final /* synthetic */ C7712b f24128g;

    @e(c = "com.truecaller.bizmon.newBusiness.onboarding.ui.presenters.CategoryPresenter$loadCategories$1$1", f = "CategoryPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.b.a.c.a.e0.c$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/e0/c$a.class */
    public static final class C7716a extends i implements p<i0, d<? super List<? extends C8551c>>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7716a(d dVar) {
            super(2, dVar);
            C7715c.this = r5;
        }

        /* renamed from: i */
        public final d<s> m29412i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7716a(dVar);
        }

        /* renamed from: k */
        public final Object m29411k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C7715c c7715c = C7715c.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return c7715c.f24128g.f24121o.mo28403a(0L);
        }

        /* renamed from: s */
        public final Object m29410s(Object obj) {
            C25225a.m3932a3(obj);
            return C7715c.this.f24128g.f24121o.mo28403a(0L);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7715c(C7712b c7712b, d dVar) {
        super(2, dVar);
        this.f24128g = c7712b;
    }

    /* renamed from: i */
    public final d<s> m29415i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C7715c(this.f24128g, dVar);
    }

    /* renamed from: k */
    public final Object m29414k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C7715c(this.f24128g, dVar).m29413s(s.a);
    }

    /* renamed from: s */
    public final Object m29413s(Object obj) {
        Object obj2;
        C7712b c7712b;
        a aVar = a.a;
        int i = this.f24127f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C7712b c7712b2 = this.f24128g;
            f fVar = c7712b2.f24117k;
            C7716a c7716a = new C7716a(null);
            this.f24126e = c7712b2;
            this.f24127f = 1;
            obj2 = s1.a.a.a.v0.f.d.a4(fVar, c7716a, this);
            if (obj2 == aVar) {
                return aVar;
            }
            c7712b = c7712b2;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            c7712b = (C7712b) this.f24126e;
            C25225a.m3932a3(obj);
            obj2 = obj;
        }
        c7712b.f24114h = (List) obj2;
        C7712b c7712b3 = this.f24128g;
        AbstractC7697c abstractC7697c = (AbstractC7697c) c7712b3.f57683a;
        if (abstractC7697c != null) {
            List<C8551c> list = c7712b3.f24114h;
            if (list == null) {
                l.l("tags");
                throw null;
            }
            abstractC7697c.mo29434u7(list);
        }
        return s.a;
    }
}
