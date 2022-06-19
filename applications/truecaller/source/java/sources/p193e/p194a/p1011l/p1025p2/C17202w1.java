package p193e.p194a.p1011l.p1025p2;

import android.app.Activity;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1023n2.AbstractC16994g;
import p193e.p194a.p1011l.p1023n2.AbstractC17000j;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1011l.p1025p2.AbstractC17151p1;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
@e(c = "com.truecaller.premium.data.WebPurchaseHelper$purchase$1", f = "PremiumPurchaseHelper.kt", l = {123}, m = "invokeSuspend")
/* renamed from: e.a.l.p2.w1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/w1.class */
public final class C17202w1 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f48277e;

    /* renamed from: f */
    public final /* synthetic */ C17205x1 f48278f;

    /* renamed from: g */
    public final /* synthetic */ C16993f f48279g;

    /* renamed from: h */
    public final /* synthetic */ l f48280h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C17202w1(C17205x1 c17205x1, C16993f c16993f, l lVar, d dVar) {
        super(2, dVar);
        this.f48278f = c17205x1;
        this.f48279g = c16993f;
        this.f48280h = lVar;
    }

    /* renamed from: i */
    public final d<s> m16389i(Object obj, d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C17202w1(this.f48278f, this.f48279g, this.f48280h, dVar);
    }

    /* renamed from: k */
    public final Object m16388k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        s1.z.c.l.e(dVar, "completion");
        return new C17202w1(this.f48278f, this.f48279g, this.f48280h, dVar).m16387s(s.a);
    }

    /* renamed from: s */
    public final Object m16387s(Object obj) {
        a aVar = a.a;
        int i = this.f48277e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C17205x1 c17205x1 = this.f48278f;
            AbstractC16994g abstractC16994g = c17205x1.f48309b;
            C16993f c16993f = this.f48279g;
            Activity mo16368a = c17205x1.f48310c.mo16368a();
            this.f48277e = 1;
            Object mo16655a = abstractC16994g.mo16655a(c16993f, mo16368a, this);
            obj = mo16655a;
            if (mo16655a == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC17000j abstractC17000j = (AbstractC17000j) obj;
        AbstractC17151p1.C17155d c17155d = abstractC17000j instanceof AbstractC17000j.C17004d ? new AbstractC17151p1.C17155d(true) : abstractC17000j instanceof AbstractC17000j.C17003c ? AbstractC17151p1.C17154c.f48143a : abstractC17000j instanceof AbstractC17000j.C17002b ? AbstractC17151p1.C17152a.f48141a : AbstractC17151p1.C17156e.f48145a;
        this.f48278f.f48308a = false;
        this.f48280h.d(c17155d);
        return s.a;
    }
}
