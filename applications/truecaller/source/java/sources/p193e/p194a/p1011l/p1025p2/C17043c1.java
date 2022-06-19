package p193e.p194a.p1011l.p1025p2;

import com.truecaller.premium.data.SubscriptionStatusReason;
import javax.inject.Inject;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.z.c.l;
/* renamed from: e.a.l.p2.c1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/c1.class */
public final class C17043c1 implements AbstractC17037b1 {

    /* renamed from: a */
    public final AbstractC8541a f47802a;

    @Inject
    public C17043c1(AbstractC8541a abstractC8541a) {
        l.e(abstractC8541a, "coreSettings");
        this.f47802a = abstractC8541a;
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17037b1
    /* renamed from: a */
    public SubscriptionStatusReason mo16607a() {
        return SubscriptionStatusReason.Companion.m34821a(this.f47802a.getString("subscriptionStatusChangedReason"));
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17037b1
    /* renamed from: b */
    public void mo16606b() {
        this.f47802a.remove("subscriptionStatusChangedReason");
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17037b1
    /* renamed from: c */
    public void mo16605c(SubscriptionStatusReason subscriptionStatusReason) {
        l.e(subscriptionStatusReason, "reason");
        this.f47802a.putString("subscriptionStatusChangedReason", subscriptionStatusReason.name());
    }
}
