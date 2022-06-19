package p193e.p194a.p195a.p258m;

import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p372b0.p430q.C8601l0;
import s1.z.c.l;
/* renamed from: e.a.a.m.o2 */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/o2.class */
public final class C6931o2 {

    /* renamed from: a */
    public final AbstractC21881d f22537a;

    /* renamed from: b */
    public final C8601l0 f22538b;

    @Inject
    public C6931o2(AbstractC21881d abstractC21881d, C8601l0 c8601l0) {
        l.e(abstractC21881d, "generalSettings");
        l.e(c8601l0, "timestampUtil");
        this.f22537a = abstractC21881d;
        this.f22538b = c8601l0;
    }

    /* renamed from: a */
    public final void m30369a(String str) {
        l.e(str, "lastShowtimeTimestampKey");
        long m28258c = this.f22538b.m28258c();
        this.f22537a.putLong("key_unimportant_promo_last_time", m28258c);
        this.f22537a.putLong(str, m28258c);
    }

    /* renamed from: b */
    public final void m30368b(String str) {
        l.e(str, "lastShowtimeTimestampKey");
        long j = this.f22537a.getLong("feature_unimportant_promo_dismissed_delay_days", 14L);
        long m28258c = this.f22538b.m28258c();
        this.f22537a.putLong(str, TimeUnit.DAYS.toMillis(j) + m28258c);
    }

    /* renamed from: c */
    public final boolean m30367c(String str) {
        boolean z;
        l.e(str, "lastShowtimeTimestampKey");
        AbstractC21881d abstractC21881d = this.f22537a;
        C8601l0 c8601l0 = this.f22538b;
        long j = abstractC21881d.getLong("key_unimportant_promo_last_time", 0L);
        long j2 = abstractC21881d.getLong("feature_global_unimportant_promo_period_days", 3L);
        TimeUnit timeUnit = TimeUnit.DAYS;
        if (c8601l0.m28260a(j, j2, timeUnit)) {
            AbstractC21881d abstractC21881d2 = this.f22537a;
            if (this.f22538b.m28260a(abstractC21881d2.getLong(str, 0L), abstractC21881d2.getLong("feature_unimportant_promo_period_days", 7L), timeUnit)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }
}
