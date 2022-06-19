package p1727n3.p1834m0.p1835c0.p1845t;

import java.util.UUID;
import n3.m0.c0.t.w.c;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.C26855x;
import p1727n3.p1834m0.p1835c0.p1844s.C26755m;
import p1727n3.p1834m0.p1835c0.p1844s.C26757o;
import p1727n3.p1834m0.p1835c0.p1844s.C26760p;
import p1727n3.p1834m0.p1835c0.p1844s.C26767t;
/* renamed from: n3.m0.c0.t.t */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/t/t.class */
public class RunnableC26803t implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ UUID f75006a;

    /* renamed from: b */
    public final /* synthetic */ C26829f f75007b;

    /* renamed from: c */
    public final /* synthetic */ c f75008c;

    /* renamed from: d */
    public final /* synthetic */ C26804u f75009d;

    public RunnableC26803t(C26804u c26804u, UUID uuid, C26829f c26829f, c cVar) {
        this.f75009d = c26804u;
        this.f75006a = uuid;
        this.f75007b = c26829f;
        this.f75008c = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        C26760p m1346k;
        String uuid = this.f75006a.toString();
        AbstractC26839p m1296c = AbstractC26839p.m1296c();
        String str = C26804u.f75010c;
        m1296c.mo1294a(str, String.format("Updating progress for %s (%s)", this.f75006a, this.f75007b), new Throwable[0]);
        this.f75009d.f75011a.beginTransaction();
        try {
            m1346k = ((C26767t) this.f75009d.f75011a.m42606f()).m1346k(uuid);
        } finally {
            try {
                return;
            } finally {
            }
        }
        if (m1346k != null) {
            if (m1346k.f74903b == C26855x.EnumC26856a.RUNNING) {
                C26755m c26755m = new C26755m(uuid, this.f75007b);
                C26757o c26757o = (C26757o) this.f75009d.f75011a.m42607e();
                c26757o.f74896a.assertNotSuspendingTransaction();
                c26757o.f74896a.beginTransaction();
                c26757o.f74897b.insert((AbstractC25663k<C26755m>) c26755m);
                c26757o.f74896a.setTransactionSuccessful();
                c26757o.f74896a.endTransaction();
            } else {
                AbstractC26839p.m1296c().mo1291f(str, String.format("Ignoring setProgressAsync(...). WorkSpec (%s) is not in a RUNNING state.", uuid), new Throwable[0]);
            }
            this.f75008c.i((Object) null);
            this.f75009d.f75011a.setTransactionSuccessful();
            return;
        }
        throw new IllegalStateException("Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
    }
}
