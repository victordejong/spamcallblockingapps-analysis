package p1727n3.p1834m0.p1835c0.p1843r;

import androidx.work.impl.WorkDatabase;
import p1727n3.p1834m0.p1835c0.p1844s.C26760p;
import p1727n3.p1834m0.p1835c0.p1844s.C26767t;
/* renamed from: n3.m0.c0.r.b */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/r/b.class */
public class RunnableC26737b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ WorkDatabase f74858a;

    /* renamed from: b */
    public final /* synthetic */ String f74859b;

    /* renamed from: c */
    public final /* synthetic */ C26738c f74860c;

    public RunnableC26737b(C26738c c26738c, WorkDatabase workDatabase, String str) {
        this.f74860c = c26738c;
        this.f74858a = workDatabase;
        this.f74859b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        C26760p m1346k = ((C26767t) this.f74858a.m42606f()).m1346k(this.f74859b);
        if (m1346k == null || !m1346k.m1360b()) {
            return;
        }
        synchronized (this.f74860c.f74865d) {
            this.f74860c.f74868g.put(this.f74859b, m1346k);
            this.f74860c.f74869h.add(m1346k);
            C26738c c26738c = this.f74860c;
            c26738c.f74870i.m1394b(c26738c.f74869h);
        }
    }
}
