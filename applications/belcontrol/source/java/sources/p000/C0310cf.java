package p000;

import android.os.Handler;
import me;
/* renamed from: cf */
/* loaded from: classes-dex2jar.jar:cf.class */
public class C0310cf {

    /* renamed from: a */
    public final re f2353a;

    /* renamed from: b */
    public final Handler f2354b = new Handler();

    /* renamed from: c */
    public RunnableC0311a f2355c;

    /* renamed from: cf$a */
    /* loaded from: classes-dex2jar.jar:cf$a.class */
    public static class RunnableC0311a implements Runnable {

        /* renamed from: a */
        public final re f2356a;

        /* renamed from: b */
        public final me.a f2357b;

        /* renamed from: c */
        public boolean f2358c = false;

        public RunnableC0311a(re reVar, me.a aVar) {
            this.f2356a = reVar;
            this.f2357b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f2358c) {
                this.f2356a.i(this.f2357b);
                this.f2358c = true;
            }
        }
    }

    public C0310cf(qe qeVar) {
        this.f2353a = new re(qeVar);
    }

    /* renamed from: a */
    public me m5342a() {
        return this.f2353a;
    }

    /* renamed from: b */
    public void m5341b() {
        m5337f(me.a.ON_START);
    }

    /* renamed from: c */
    public void m5340c() {
        m5337f(me.a.ON_CREATE);
    }

    /* renamed from: d */
    public void m5339d() {
        m5337f(me.a.ON_STOP);
        m5337f(me.a.ON_DESTROY);
    }

    /* renamed from: e */
    public void m5338e() {
        m5337f(me.a.ON_START);
    }

    /* renamed from: f */
    public final void m5337f(me.a aVar) {
        RunnableC0311a runnableC0311a = this.f2355c;
        if (runnableC0311a != null) {
            runnableC0311a.run();
        }
        RunnableC0311a runnableC0311a2 = new RunnableC0311a(this.f2353a, aVar);
        this.f2355c = runnableC0311a2;
        this.f2354b.postAtFrontOfQueue(runnableC0311a2);
    }
}
