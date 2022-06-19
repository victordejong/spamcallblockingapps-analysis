package p1727n3.p1834m0.p1835c0;

import androidx.work.ListenableWorker;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import n3.m0.c0.t.w.c;
import p1727n3.p1834m0.AbstractC26839p;
/* renamed from: n3.m0.c0.n */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/n.class */
public class RunnableC26705n implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ c f74735a;

    /* renamed from: b */
    public final /* synthetic */ String f74736b;

    /* renamed from: c */
    public final /* synthetic */ RunnableC26706o f74737c;

    public RunnableC26705n(RunnableC26706o runnableC26706o, c cVar, String str) {
        this.f74737c = runnableC26706o;
        this.f74735a = cVar;
        this.f74736b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        Throwable e;
        try {
            try {
                ListenableWorker.AbstractC0414a abstractC0414a = (ListenableWorker.AbstractC0414a) this.f74735a.get();
                if (abstractC0414a == null) {
                    AbstractC26839p.m1296c().mo1293b(RunnableC26706o.f74738t, String.format("%s returned a null result. Treating it as a failure.", this.f74737c.f74743e.f74904c), new Throwable[0]);
                } else {
                    AbstractC26839p.m1296c().mo1294a(RunnableC26706o.f74738t, String.format("%s returned a %s result.", this.f74737c.f74743e.f74904c, abstractC0414a), new Throwable[0]);
                    this.f74737c.f74746h = abstractC0414a;
                }
            } catch (InterruptedException e2) {
                e = e2;
                AbstractC26839p.m1296c().mo1293b(RunnableC26706o.f74738t, String.format("%s failed because it threw an exception/error", this.f74736b), e);
            } catch (CancellationException e3) {
                AbstractC26839p.m1296c().mo1292d(RunnableC26706o.f74738t, String.format("%s was cancelled", this.f74736b), e3);
            } catch (ExecutionException e4) {
                e = e4;
                AbstractC26839p.m1296c().mo1293b(RunnableC26706o.f74738t, String.format("%s failed because it threw an exception/error", this.f74736b), e);
            }
        } finally {
            this.f74737c.m1424c();
        }
    }
}
