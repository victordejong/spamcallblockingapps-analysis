package p193e.p194a.p195a.p196a;

import com.truecaller.C2752R;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.imgrouplinkinvite.ImGroupLinkInvitePresenter$onResetConfirmed$1", f = "ImGroupLinkInvitePresenter.kt", l = {98}, m = "invokeSuspend")
/* renamed from: e.a.a.a.h */
/* loaded from: classes7-dex2jar.jar:e/a/a/a/h.class */
public final class C4905h extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f16646e;

    /* renamed from: f */
    public int f16647f;

    /* renamed from: g */
    public final /* synthetic */ C4903g f16648g;

    @e(c = "com.truecaller.messaging.imgrouplinkinvite.ImGroupLinkInvitePresenter$onResetConfirmed$1$1", f = "ImGroupLinkInvitePresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.a.h$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/a/h$a.class */
    public static final class C4906a extends i implements p<i0, d<? super String>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4906a(d dVar) {
            super(2, dVar);
            C4905h.this = r5;
        }

        /* renamed from: i */
        public final d<s> m34251i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4906a(dVar);
        }

        /* renamed from: k */
        public final Object m34250k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C4905h c4905h = C4905h.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            C4903g c4903g = c4905h.f16648g;
            return c4903g.f16639i.mo30927p(c4903g.f16638h.f13319a);
        }

        /* renamed from: s */
        public final Object m34249s(Object obj) {
            C25225a.m3932a3(obj);
            C4903g c4903g = C4905h.this.f16648g;
            return c4903g.f16639i.mo30927p(c4903g.f16638h.f13319a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4905h(C4903g c4903g, d dVar) {
        super(2, dVar);
        this.f16648g = c4903g;
    }

    /* renamed from: i */
    public final d<s> m34254i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C4905h(this.f16648g, dVar);
    }

    /* renamed from: k */
    public final Object m34253k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C4905h(this.f16648g, dVar).m34252s(s.a);
    }

    /* renamed from: s */
    public final Object m34252s(Object obj) {
        Object obj2;
        C4903g c4903g;
        a aVar = a.a;
        int i = this.f16647f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C4903g c4903g2 = this.f16648g;
            f fVar = c4903g2.f16636f;
            C4906a c4906a = new C4906a(null);
            this.f16646e = c4903g2;
            this.f16647f = 1;
            obj2 = s1.a.a.a.v0.f.d.a4(fVar, c4906a, this);
            if (obj2 == aVar) {
                return aVar;
            }
            c4903g = c4903g2;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            c4903g = (C4903g) this.f16646e;
            C25225a.m3932a3(obj);
            obj2 = obj;
        }
        c4903g.f16634d = (String) obj2;
        AbstractC4900e abstractC4900e = (AbstractC4900e) this.f16648g.f57683a;
        if (abstractC4900e != null) {
            abstractC4900e.mo34264ev(this.f16648g.f16640j.mo31116Y1() + '\n' + this.f16648g.f16634d);
        }
        AbstractC4900e abstractC4900e2 = (AbstractC4900e) this.f16648g.f57683a;
        if (abstractC4900e2 != null) {
            abstractC4900e2.mo34265a(C2752R.string.ImGroupLinkInviteResetResult);
        }
        return s.a;
    }
}
