package p193e.p194a.p195a.p278q0;

import io.agora.rtc.Constants;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p281t0.AbstractC7262a;
import p193e.p194a.p195a.p281t0.C7263b;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import w3.b.a.b;
@e(c = "com.truecaller.messaging.clevertap.CleverTapMessagingUserPropGeneratorImpl$getInboxCleanerPromotionalCount$1", f = "CleverTapMessagingUserPropGenerator.kt", l = {Constants.ERR_WATERMARKR_INFO}, m = "invokeSuspend")
/* renamed from: e.a.a.q0.d */
/* loaded from: classes10-dex2jar.jar:e/a/a/q0/d.class */
public final class C7180d extends i implements p<i0, d<? super Integer>, Object> {

    /* renamed from: e */
    public int f23073e;

    /* renamed from: f */
    public final /* synthetic */ C7182f f23074f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7180d(C7182f c7182f, d dVar) {
        super(2, dVar);
        this.f23074f = c7182f;
    }

    /* renamed from: i */
    public final d<s> m30016i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C7180d(this.f23074f, dVar);
    }

    /* renamed from: k */
    public final Object m30015k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C7180d(this.f23074f, dVar).m30014s(s.a);
    }

    /* renamed from: s */
    public final Object m30014s(Object obj) {
        a aVar = a.a;
        int i = this.f23073e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC7262a abstractC7262a = this.f23074f.f23080d;
            b bVar = new b();
            l.d(bVar, "DateTime.now()");
            long j = ((w3.b.a.e0.e) bVar).a;
            this.f23073e = 1;
            Object m29873d = ((C7263b) abstractC7262a).m29873d(j, this);
            obj = m29873d;
            if (m29873d == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return obj;
    }
}
