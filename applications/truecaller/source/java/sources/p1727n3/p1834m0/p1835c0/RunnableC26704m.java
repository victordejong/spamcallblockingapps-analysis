package p1727n3.p1834m0.p1835c0;

import com.google.common.util.concurrent.ListenableFuture;
import n3.m0.c0.t.w.c;
import p1727n3.p1834m0.AbstractC26839p;
/* renamed from: n3.m0.c0.m */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/m.class */
public class RunnableC26704m implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ListenableFuture f74732a;

    /* renamed from: b */
    public final /* synthetic */ c f74733b;

    /* renamed from: c */
    public final /* synthetic */ RunnableC26706o f74734c;

    public RunnableC26704m(RunnableC26706o runnableC26706o, ListenableFuture listenableFuture, c cVar) {
        this.f74734c = runnableC26706o;
        this.f74732a = listenableFuture;
        this.f74733b = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f74732a.get();
            AbstractC26839p.m1296c().mo1294a(RunnableC26706o.f74738t, String.format("Starting work for %s", this.f74734c.f74743e.f74904c), new Throwable[0]);
            RunnableC26706o runnableC26706o = this.f74734c;
            runnableC26706o.f74756r = runnableC26706o.f74744f.startWork();
            this.f74733b.k(this.f74734c.f74756r);
        } catch (Throwable th) {
            this.f74733b.j(th);
        }
    }
}
