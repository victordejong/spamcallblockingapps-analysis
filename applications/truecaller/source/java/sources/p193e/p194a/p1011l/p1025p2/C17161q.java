package p193e.p194a.p1011l.p1025p2;

import com.truecaller.premium.billing.Receipt;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1023n2.AbstractC16987e;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.premium.data.NewPurchasesObserver$checkPurchases$1", f = "NewPurchasesObserver.kt", l = {72, 79}, m = "invokeSuspend")
/* renamed from: e.a.l.p2.q */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/q.class */
public final class C17161q extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f48150e;

    /* renamed from: f */
    public final /* synthetic */ C17173s f48151f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C17161q(C17173s c17173s, d dVar) {
        super(2, dVar);
        this.f48151f = c17173s;
    }

    /* renamed from: i */
    public final d<s> m16468i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C17161q(this.f48151f, dVar);
    }

    /* renamed from: k */
    public final Object m16467k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C17161q(this.f48151f, dVar).m16466s(s.a);
    }

    /* renamed from: s */
    public final Object m16466s(Object obj) {
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f48150e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f48150e = 1;
            Object mo16659m = ((AbstractC16987e) this.f48151f.f48173e.get()).mo16659m(this);
            obj = mo16659m;
            if (mo16659m == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            return sVar;
        } else {
            C25225a.m3932a3(obj);
        }
        List list = (List) obj;
        if (list.size() != 1) {
            return sVar;
        }
        Receipt receipt = (Receipt) s1.u.i.D(list);
        if (receipt != null && receipt.f14240g == Receipt.State.PURCHASED && !receipt.f14239f) {
            this.f48150e = 2;
            if (((AbstractC17028a) this.f48151f.f48177i.get()).mo16616a(receipt, this) == aVar) {
                return aVar;
            }
        }
        return sVar;
    }
}
