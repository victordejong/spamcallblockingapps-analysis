package p193e.p194a.p1342w4.p1344s;

import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p200c.C5798w6;
import p193e.p194a.p195a.p200c.C5826y6;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.search.global.GlobalSearchPresenterImpl$fetchArchivedData$1", f = "GlobalSearchPresenterImpl.kt", l = {480}, m = "invokeSuspend")
/* renamed from: e.a.w4.s.f0 */
/* loaded from: classes13-dex2jar.jar:e/a/w4/s/f0.class */
public final class C21244f0 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f59494e;

    /* renamed from: f */
    public final /* synthetic */ C21246g0 f59495f;

    /* renamed from: g */
    public final /* synthetic */ List f59496g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21244f0(C21246g0 c21246g0, List list, d dVar) {
        super(2, dVar);
        this.f59495f = c21246g0;
        this.f59496g = list;
    }

    /* renamed from: i */
    public final d<s> m10099i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C21244f0(this.f59495f, this.f59496g, dVar);
    }

    /* renamed from: k */
    public final Object m10098k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C21244f0(this.f59495f, this.f59496g, dVar).m10097s(s.a);
    }

    /* renamed from: s */
    public final Object m10097s(Object obj) {
        Object obj2 = s.a;
        Object obj3 = a.a;
        int i = this.f59494e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C5826y6 c5826y6 = this.f59495f.f59532k0;
            List list = this.f59496g;
            this.f59494e = 1;
            Object a4 = s1.a.a.a.v0.f.d.a4(c5826y6.f19560c, new C5798w6(c5826y6, list, null), this);
            if (a4 != obj3) {
                a4 = obj2;
            }
            if (a4 == obj3) {
                return obj3;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC21254h0 abstractC21254h0 = (AbstractC21254h0) this.f59495f.f57683a;
        if (abstractC21254h0 != null) {
            abstractC21254h0.mo10031l2();
        }
        return obj2;
    }
}
