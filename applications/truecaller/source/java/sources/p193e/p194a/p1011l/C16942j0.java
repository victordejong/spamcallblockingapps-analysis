package p193e.p194a.p1011l;

import com.truecaller.premium.PremiumAlertType;
import java.util.concurrent.TimeUnit;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1025p2.C17192t1;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.premium.PremiumBasePresenterImpl$maybeRefreshAlertForPendingState$1", f = "PremiumBasePresenter.kt", l = {321}, m = "invokeSuspend")
/* renamed from: e.a.l.j0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/j0.class */
public final class C16942j0 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f47538e;

    /* renamed from: f */
    public final /* synthetic */ AbstractC16856e0 f47539f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16942j0(AbstractC16856e0 abstractC16856e0, d dVar) {
        super(2, dVar);
        this.f47539f = abstractC16856e0;
    }

    /* renamed from: i */
    public final d<s> m16745i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C16942j0(this.f47539f, dVar);
    }

    /* renamed from: k */
    public final Object m16744k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C16942j0(this.f47539f, dVar).m16743s(s.a);
    }

    /* renamed from: s */
    public final Object m16743s(Object obj) {
        a aVar = a.a;
        int i = this.f47538e;
        boolean z = true;
        if (i == 0) {
            C25225a.m3932a3(obj);
            TimeUnit timeUnit = TimeUnit.SECONDS;
            C20592g c20592g = this.f47539f.f47287R;
            long millis = timeUnit.toMillis(((AbstractC20597i) c20592g.f57773L.m10941a(c20592g, C20592g.f57695p6[34])).getInt(10));
            this.f47538e = 1;
            if (s1.a.a.a.v0.f.d.D0(millis, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        C17192t1 c17192t1 = this.f47539f.f47314z;
        if (!c17192t1.m16424a() || !c17192t1.m16423b()) {
            z = false;
        }
        if (z) {
            this.f47539f.f47296h.remove(PremiumAlertType.PENDING_PURCHASE);
            this.f47539f.m16858Mj();
            this.f47539f.m16844ak();
        }
        return s.a;
    }
}
