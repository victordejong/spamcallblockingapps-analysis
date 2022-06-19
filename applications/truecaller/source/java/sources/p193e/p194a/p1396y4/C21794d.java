package p193e.p194a.p1396y4;

import android.app.Application;
import com.truecaller.service.MissedCallsNotificationService;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.service.MissedCallsNotificationService$getNotificationType$2", f = "MissedCallsNotificationService.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.y4.d */
/* loaded from: classes13-dex2jar.jar:e/a/y4/d.class */
public final class C21794d extends i implements p<i0, d<? super MissedCallsNotificationService.EnumC4463b>, Object> {

    /* renamed from: e */
    public final /* synthetic */ MissedCallsNotificationService f60644e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21794d(MissedCallsNotificationService missedCallsNotificationService, d dVar) {
        super(2, dVar);
        this.f60644e = missedCallsNotificationService;
    }

    /* renamed from: i */
    public final d<s> m9066i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C21794d(this.f60644e, dVar);
    }

    /* renamed from: k */
    public final Object m9065k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        MissedCallsNotificationService missedCallsNotificationService = this.f60644e;
        dVar.getContext();
        s sVar = s.a;
        MissedCallsNotificationService.EnumC4463b enumC4463b = MissedCallsNotificationService.EnumC4463b.NO_NOTIFICATION;
        C25225a.m3932a3(sVar);
        Application application = missedCallsNotificationService.getApplication();
        Objects.requireNonNull(application, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase");
        MissedCallsNotificationService.EnumC4463b enumC4463b2 = enumC4463b;
        if (((AbstractApplicationC8442a) application).mo28540W()) {
            boolean z = missedCallsNotificationService.m34765c().getBoolean("showMissedCallsNotifications");
            AbstractC19219a0 abstractC19219a0 = missedCallsNotificationService.f14719g;
            if (abstractC19219a0 == null) {
                l.l("permissionUtil");
                throw null;
            }
            boolean mo13831b = abstractC19219a0.mo13831b();
            if (!z || !mo13831b) {
                enumC4463b2 = enumC4463b;
                if (z) {
                    enumC4463b2 = enumC4463b;
                    if (missedCallsNotificationService.m34765c().getBoolean("showMissedCallsNotificationPromo", true)) {
                        missedCallsNotificationService.m34765c().putBoolean("showMissedCallsNotificationPromo", false);
                        enumC4463b2 = MissedCallsNotificationService.EnumC4463b.PROMO;
                    }
                }
            } else {
                enumC4463b2 = MissedCallsNotificationService.EnumC4463b.NORMAL;
            }
        }
        return enumC4463b2;
    }

    /* renamed from: s */
    public final Object m9064s(Object obj) {
        MissedCallsNotificationService.EnumC4463b enumC4463b;
        MissedCallsNotificationService.EnumC4463b enumC4463b2 = MissedCallsNotificationService.EnumC4463b.NO_NOTIFICATION;
        C25225a.m3932a3(obj);
        Application application = this.f60644e.getApplication();
        Objects.requireNonNull(application, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase");
        if (((AbstractApplicationC8442a) application).mo28540W()) {
            boolean z = this.f60644e.m34765c().getBoolean("showMissedCallsNotifications");
            AbstractC19219a0 abstractC19219a0 = this.f60644e.f14719g;
            if (abstractC19219a0 == null) {
                l.l("permissionUtil");
                throw null;
            }
            boolean mo13831b = abstractC19219a0.mo13831b();
            if (!z || !mo13831b) {
                enumC4463b = enumC4463b2;
                if (z) {
                    enumC4463b = enumC4463b2;
                    if (this.f60644e.m34765c().getBoolean("showMissedCallsNotificationPromo", true)) {
                        this.f60644e.m34765c().putBoolean("showMissedCallsNotificationPromo", false);
                        enumC4463b = MissedCallsNotificationService.EnumC4463b.PROMO;
                    }
                }
            } else {
                enumC4463b = MissedCallsNotificationService.EnumC4463b.NORMAL;
            }
            return enumC4463b;
        }
        return enumC4463b2;
    }
}
