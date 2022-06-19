package p193e.p194a.p1396y4;

import com.truecaller.service.MissedCallsNotificationService;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p912i4.AbstractC15275e;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.service.MissedCallsNotificationService$cancelNotification$2", f = "MissedCallsNotificationService.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.y4.c */
/* loaded from: classes13-dex2jar.jar:e/a/y4/c.class */
public final class C21793c extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ MissedCallsNotificationService f60643e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21793c(MissedCallsNotificationService missedCallsNotificationService, d dVar) {
        super(2, dVar);
        this.f60643e = missedCallsNotificationService;
    }

    /* renamed from: i */
    public final d<s> m9069i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C21793c(this.f60643e, dVar);
    }

    /* renamed from: k */
    public final Object m9068k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        MissedCallsNotificationService missedCallsNotificationService = this.f60643e;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        AbstractC15275e abstractC15275e = missedCallsNotificationService.f14716d;
        if (abstractC15275e != null) {
            abstractC15275e.mo18972b("missedCall", 12345);
            return sVar;
        }
        l.l("notificationManager");
        throw null;
    }

    /* renamed from: s */
    public final Object m9067s(Object obj) {
        C25225a.m3932a3(obj);
        AbstractC15275e abstractC15275e = this.f60643e.f14716d;
        if (abstractC15275e != null) {
            abstractC15275e.mo18972b("missedCall", 12345);
            return s.a;
        }
        l.l("notificationManager");
        throw null;
    }
}
