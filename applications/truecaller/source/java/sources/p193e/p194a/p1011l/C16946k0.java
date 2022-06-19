package p193e.p194a.p1011l;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.AbstractC16856e0;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1011l.p1025p2.AbstractC17050d1;
import p193e.p194a.p1011l.p1025p2.AbstractC17151p1;
import p193e.p194a.p1011l.p1025p2.AbstractC17180s1;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.premium.PremiumBasePresenterImpl$purchaseInternal$2$2", f = "PremiumBasePresenter.kt", l = {511}, m = "invokeSuspend")
/* renamed from: e.a.l.k0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/k0.class */
public final class C16946k0 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f47543e;

    /* renamed from: f */
    public final /* synthetic */ AbstractC16856e0.C16867k f47544f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC17151p1 f47545g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16946k0(AbstractC16856e0.C16867k c16867k, AbstractC17151p1 abstractC17151p1, d dVar) {
        super(2, dVar);
        this.f47544f = c16867k;
        this.f47545g = abstractC17151p1;
    }

    /* renamed from: i */
    public final d<s> m16739i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C16946k0(this.f47544f, this.f47545g, dVar);
    }

    /* renamed from: k */
    public final Object m16738k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C16946k0(this.f47544f, this.f47545g, dVar).m16737s(s.a);
    }

    /* renamed from: s */
    public final Object m16737s(Object obj) {
        a aVar = a.a;
        int i = this.f47543e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            if (((AbstractC17151p1.C17155d) this.f47545g).f48144a) {
                AbstractC16856e0.C16867k c16867k = this.f47544f;
                AbstractC16856e0 abstractC16856e0 = AbstractC16856e0.this;
                C16993f c16993f = c16867k.f47349c;
                String str = c16993f.f47662a;
                AbstractC17180s1.C17182b c17182b = abstractC16856e0.f47292d;
                AbstractC16856e0.m16864Ij(abstractC16856e0, c16993f, str, c17182b != null ? c17182b.f48218r : null, c17182b != null ? c17182b.f48209i : null, c16867k.f47350d);
            }
            AbstractC17050d1 abstractC17050d1 = AbstractC16856e0.this.f47277D;
            this.f47543e = 1;
            if (abstractC17050d1.mo16587a(this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC16856e0.this.m16842ck(true);
        AbstractC16856e0.this.m16854Qj();
        return s.a;
    }
}
