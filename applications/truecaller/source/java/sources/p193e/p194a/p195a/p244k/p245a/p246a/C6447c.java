package p193e.p194a.p195a.p244k.p245a.p246a;

import com.truecaller.messaging.transport.p170im.groups.AcceptGroupInviteWorker;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import p1727n3.p1834m0.AbstractC26857y;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26674a;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.a.c */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/c.class */
public final class C6447c implements AbstractC6445b {

    /* renamed from: a */
    public final AbstractC26857y f21417a;

    @Inject
    public C6447c(AbstractC26857y abstractC26857y) {
        l.e(abstractC26857y, "workManager");
        this.f21417a = abstractC26857y;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6445b
    /* renamed from: a */
    public void mo30957a(String str) {
        l.e(str, "groupId");
        l.e(str, "groupId");
        C26842r.C26843a m1269e = new C26842r.C26843a(AcceptGroupInviteWorker.class).m1269e(EnumC26674a.EXPONENTIAL, 30L, TimeUnit.SECONDS);
        C26829f c26829f = new C26829f(C22128a.m8667T("group_id", str));
        C26829f.m1300g(c26829f);
        m1269e.f75127c.f74906e = c26829f;
        m1269e.f75128d.add("accept_group_invite");
        C26825d.C26826a c26826a = new C26825d.C26826a();
        c26826a.f75068c = EnumC26841q.CONNECTED;
        m1269e.f75127c.f74911j = new C26825d(c26826a);
        C26842r m1272b = m1269e.m1272b();
        l.d(m1272b, "OneTimeWorkRequest.Build…\n                .build()");
        this.f21417a.m1279i("AcceptGroupInvite", EnumC26832h.APPEND, m1272b);
    }
}
