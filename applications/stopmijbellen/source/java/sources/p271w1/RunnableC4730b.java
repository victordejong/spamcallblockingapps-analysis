package p271w1;

import androidx.work.impl.WorkDatabase;
import androidx.work.impl.foreground.C0703a;
import p282x1.C4832p;
import p282x1.C4835r;
/* renamed from: w1.b */
/* loaded from: classes-dex2jar.jar:w1/b.class */
public class RunnableC4730b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ WorkDatabase f14589a;

    /* renamed from: b */
    public final /* synthetic */ String f14590b;

    /* renamed from: c */
    public final /* synthetic */ C0703a f14591c;

    public RunnableC4730b(C0703a c0703a, WorkDatabase workDatabase, String str) {
        this.f14591c = c0703a;
        this.f14589a = workDatabase;
        this.f14590b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        C4832p m380i = ((C4835r) this.f14589a.mo7475q()).m380i(this.f14590b);
        if (m380i == null || !m380i.m390b()) {
            return;
        }
        synchronized (this.f14591c.f2723d) {
            this.f14591c.f2726g.put(this.f14590b, m380i);
            this.f14591c.f2727h.add(m380i);
            C0703a c0703a = this.f14591c;
            c0703a.f2728i.m1011b(c0703a.f2727h);
        }
    }
}
