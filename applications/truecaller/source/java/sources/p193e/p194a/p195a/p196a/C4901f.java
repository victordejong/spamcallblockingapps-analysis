package p193e.p194a.p195a.p196a;

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
@e(c = "com.truecaller.messaging.imgrouplinkinvite.ImGroupLinkInvitePresenter$getInviteKey$1", f = "ImGroupLinkInvitePresenter.kt", l = {58}, m = "invokeSuspend")
/* renamed from: e.a.a.a.f */
/* loaded from: classes7-dex2jar.jar:e/a/a/a/f.class */
public final class C4901f extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f16630e;

    /* renamed from: f */
    public int f16631f;

    /* renamed from: g */
    public final /* synthetic */ C4903g f16632g;

    @e(c = "com.truecaller.messaging.imgrouplinkinvite.ImGroupLinkInvitePresenter$getInviteKey$1$1", f = "ImGroupLinkInvitePresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.a.f$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/a/f$a.class */
    public static final class C4902a extends i implements p<i0, d<? super String>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4902a(d dVar) {
            super(2, dVar);
            C4901f.this = r5;
        }

        /* renamed from: i */
        public final d<s> m34259i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4902a(dVar);
        }

        /* renamed from: k */
        public final Object m34258k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C4901f c4901f = C4901f.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            C4903g c4903g = c4901f.f16632g;
            return c4903g.f16639i.mo30930m(c4903g.f16638h.f13319a);
        }

        /* renamed from: s */
        public final Object m34257s(Object obj) {
            C25225a.m3932a3(obj);
            C4903g c4903g = C4901f.this.f16632g;
            return c4903g.f16639i.mo30930m(c4903g.f16638h.f13319a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4901f(C4903g c4903g, d dVar) {
        super(2, dVar);
        this.f16632g = c4903g;
    }

    /* renamed from: i */
    public final d<s> m34262i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C4901f(this.f16632g, dVar);
    }

    /* renamed from: k */
    public final Object m34261k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C4901f(this.f16632g, dVar).m34260s(s.a);
    }

    /* renamed from: s */
    public final Object m34260s(Object obj) {
        Object obj2;
        C4903g c4903g;
        a aVar = a.a;
        int i = this.f16631f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C4903g c4903g2 = this.f16632g;
            f fVar = c4903g2.f16636f;
            C4902a c4902a = new C4902a(null);
            this.f16630e = c4903g2;
            this.f16631f = 1;
            obj2 = s1.a.a.a.v0.f.d.a4(fVar, c4902a, this);
            if (obj2 == aVar) {
                return aVar;
            }
            c4903g = c4903g2;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            c4903g = (C4903g) this.f16630e;
            C25225a.m3932a3(obj);
            obj2 = obj;
        }
        c4903g.f16634d = (String) obj2;
        AbstractC4900e abstractC4900e = (AbstractC4900e) this.f16632g.f57683a;
        if (abstractC4900e != null) {
            abstractC4900e.mo34264ev(this.f16632g.f16640j.mo31116Y1() + '\n' + this.f16632g.f16634d);
        }
        return s.a;
    }
}
