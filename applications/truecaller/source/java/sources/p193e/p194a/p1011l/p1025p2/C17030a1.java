package p193e.p194a.p1011l.p1025p2;

import com.truecaller.premium.data.SubscriptionStatusReason;
import javax.inject.Inject;
import s1.z.c.l;
/* renamed from: e.a.l.p2.a1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/a1.class */
public final class C17030a1 {

    /* renamed from: a */
    public final AbstractC17037b1 f47774a;

    /* renamed from: b */
    public final AbstractC17197v0 f47775b;

    @Inject
    public C17030a1(AbstractC17037b1 abstractC17037b1, AbstractC17197v0 abstractC17197v0) {
        l.e(abstractC17037b1, "premiumSubscriptionStatusRepository");
        l.e(abstractC17197v0, "premiumStateSettings");
        this.f47774a = abstractC17037b1;
        this.f47775b = abstractC17197v0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0029, code lost:
        if ((r3.f47774a.mo16607a() == com.truecaller.premium.data.SubscriptionStatusReason.SUBSCRIPTION_PAUSED) != false) goto L12;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m16622a() {
        /*
            r3 = this;
            r0 = r3
            boolean r0 = r0.m16621b()
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L2c
            r0 = r3
            boolean r0 = r0.m16620c()
            if (r0 != 0) goto L2c
            r0 = r3
            e.a.l.p2.b1 r0 = r0.f47774a
            com.truecaller.premium.data.SubscriptionStatusReason r0 = r0.mo16607a()
            com.truecaller.premium.data.SubscriptionStatusReason r1 = com.truecaller.premium.data.SubscriptionStatusReason.SUBSCRIPTION_PAUSED
            if (r0 != r1) goto L26
            r0 = 1
            r6 = r0
            goto L28
        L26:
            r0 = 0
            r6 = r0
        L28:
            r0 = r6
            if (r0 == 0) goto L2e
        L2c:
            r0 = 1
            r5 = r0
        L2e:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1025p2.C17030a1.m16622a():boolean");
    }

    /* renamed from: b */
    public final boolean m16621b() {
        return this.f47774a.mo16607a().isOnHold();
    }

    /* renamed from: c */
    public final boolean m16620c() {
        return this.f47775b.mo16408H() && this.f47774a.mo16607a() == SubscriptionStatusReason.SUBSCRIPTION_CANCELED;
    }
}
