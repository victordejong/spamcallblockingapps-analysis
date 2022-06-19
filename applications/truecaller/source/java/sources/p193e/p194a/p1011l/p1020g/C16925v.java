package p193e.p194a.p1011l.p1020g;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1020g.C16905q;
import p193e.p194a.p1011l.p1020g.C16914u;
import p193e.p194a.p1011l.p1029r2.AbstractC17221a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.premium.gift.GoldGiftRepository$giftGold$2", f = "GoldGiftRepository.kt", l = {30}, m = "invokeSuspend")
/* renamed from: e.a.l.g.v */
/* loaded from: classes12-dex2jar.jar:e/a/l/g/v.class */
public final class C16925v extends i implements p<i0, d<? super C16914u.AbstractC16915a>, Object> {

    /* renamed from: e */
    public int f47516e;

    /* renamed from: f */
    public final /* synthetic */ C16914u f47517f;

    /* renamed from: g */
    public final /* synthetic */ String f47518g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16925v(C16914u c16914u, String str, d dVar) {
        super(2, dVar);
        this.f47517f = c16914u;
        this.f47518g = str;
    }

    /* renamed from: i */
    public final d<s> m16770i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C16925v(this.f47517f, this.f47518g, dVar);
    }

    /* renamed from: k */
    public final Object m16769k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C16925v(this.f47517f, this.f47518g, dVar).m16768s(s.a);
    }

    /* renamed from: s */
    public final Object m16768s(Object obj) {
        C16914u.AbstractC16915a abstractC16915a;
        C16914u.AbstractC16915a abstractC16915a2 = C16914u.AbstractC16915a.C16917b.f47508b;
        a aVar = a.a;
        int i = this.f47516e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            String mo16414A0 = this.f47517f.f47504b.mo16414A0();
            abstractC16915a = abstractC16915a2;
            if (mo16414A0 != null) {
                C16905q c16905q = this.f47517f.f47503a;
                long m13657v = C19286f.m13657v(this.f47518g);
                this.f47516e = 1;
                Object m16781a = c16905q.m16781a("goldgift101", m13657v, mo16414A0, this);
                obj = m16781a;
                if (m16781a == aVar) {
                    return aVar;
                }
            }
            return abstractC16915a;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC17221a abstractC17221a = (AbstractC17221a) obj;
        if (abstractC17221a instanceof AbstractC17221a.C17224c) {
            int m16780a = ((C16905q.C16907b) ((AbstractC17221a.C17224c) abstractC17221a).f48347a).m16780a();
            if (m16780a == 1) {
                abstractC16915a = C16914u.AbstractC16915a.C16924i.f47515b;
            } else if (m16780a != 3) {
                abstractC16915a = abstractC16915a2;
                if (m16780a != 4) {
                    abstractC16915a = m16780a != 5 ? m16780a != 6 ? m16780a != 7 ? C16914u.AbstractC16915a.C16916a.f47507b : C16914u.AbstractC16915a.C16921f.f47512b : C16914u.AbstractC16915a.C16922g.f47513b : C16914u.AbstractC16915a.C16920e.f47511b;
                }
            } else {
                abstractC16915a = C16914u.AbstractC16915a.C16919d.f47510b;
            }
        } else {
            abstractC16915a = abstractC17221a instanceof AbstractC17221a.C17222a ? C16914u.AbstractC16915a.C16923h.f47514b : C16914u.AbstractC16915a.C16918c.f47509b;
        }
        return abstractC16915a;
    }
}
