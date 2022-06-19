package p193e.p194a.p292a4;

import com.truecaller.account.network.SendTokenRequestDto;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1052m.AbstractC17860c0;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import x3.a0;
@e(c = "com.truecaller.init.TrueAppInitManager$onAppCreate$51", f = "TrueAppInitManager.kt", l = {447}, m = "invokeSuspend")
/* renamed from: e.a.a4.e0 */
/* loaded from: classes10-dex2jar.jar:e/a/a4/e0.class */
public final class C7437e0 extends i implements l<d<? super s>, Object> {

    /* renamed from: e */
    public int f23612e;

    /* renamed from: f */
    public final /* synthetic */ C7452i0 f23613f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7437e0(C7452i0 c7452i0, d dVar) {
        super(1, dVar);
        this.f23613f = c7452i0;
    }

    /* renamed from: d */
    public final Object m29629d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C7437e0(this.f23613f, dVar).m29627s(s.a);
    }

    /* renamed from: l */
    public final d<s> m29628l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C7437e0(this.f23613f, dVar);
    }

    /* renamed from: s */
    public final Object m29627s(Object obj) {
        a aVar = a.a;
        int i = this.f23612e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f23612e = 1;
            Object mo15751a = ((AbstractC17860c0) this.f23613f.f23659G.get()).mo15751a(SendTokenRequestDto.PRIVACY_REGION_C, this);
            obj = mo15751a;
            if (mo15751a == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        if (((a0) obj) != null) {
            ((AbstractC8541a) this.f23613f.f23660H.get()).putBoolean("region_c_reported", true);
        }
        return s.a;
    }
}
