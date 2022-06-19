package p193e.p194a.p195a.p244k.p245a;

import androidx.work.ListenableWorker;
import javax.inject.Inject;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.a0 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a0.class */
public final class C6504a0 extends AbstractC21765k {

    /* renamed from: b */
    public final String f21533b = "ImNotificationsWorkAction";

    /* renamed from: c */
    public final AbstractC6585l1 f21534c;

    /* renamed from: d */
    public final AbstractC19854f<AbstractC6485m> f21535d;

    /* renamed from: e */
    public final AbstractC8432l f21536e;

    /* renamed from: f */
    public final AbstractC6614r0 f21537f;

    @Inject
    public C6504a0(AbstractC6585l1 abstractC6585l1, AbstractC19854f<AbstractC6485m> abstractC19854f, AbstractC8432l abstractC8432l, AbstractC6614r0 abstractC6614r0) {
        l.e(abstractC6585l1, "joinedImUsersManager");
        l.e(abstractC19854f, "imGroupManager");
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC6614r0, "unreadRemindersManager");
        this.f21534c = abstractC6585l1;
        this.f21535d = abstractC19854f;
        this.f21536e = abstractC8432l;
        this.f21537f = abstractC6614r0;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        this.f21534c.mo30701a();
        this.f21535d.mo11854a().mo30879u().mo11831c();
        this.f21537f.mo30610b();
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "Result.success()");
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f21533b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return this.f21536e.mo28580d();
    }
}
