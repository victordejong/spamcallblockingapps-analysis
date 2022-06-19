package p193e.p1432d.p1443e;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.Objects;
import java.util.concurrent.BlockingQueue;
import p193e.p1432d.p1443e.C22175g;
import p193e.p1432d.p1443e.p1444x.C22202b;
import p193e.p1432d.p1443e.p1444x.C22205d;
/* renamed from: e.d.e.j */
/* loaded from: classes-dex2jar.jar:e/d/e/j.class */
public class C22180j extends Thread {

    /* renamed from: a */
    public final BlockingQueue<AbstractC22184o<?>> f61626a;

    /* renamed from: b */
    public final AbstractC22179i f61627b;

    /* renamed from: c */
    public final AbstractC22169b f61628c;

    /* renamed from: d */
    public final AbstractC22193r f61629d;

    /* renamed from: e */
    public volatile boolean f61630e = false;

    public C22180j(BlockingQueue<AbstractC22184o<?>> blockingQueue, AbstractC22179i abstractC22179i, AbstractC22169b abstractC22169b, AbstractC22193r abstractC22193r) {
        this.f61626a = blockingQueue;
        this.f61627b = abstractC22179i;
        this.f61628c = abstractC22169b;
        this.f61629d = abstractC22193r;
    }

    /* renamed from: a */
    public final void m8487a() throws InterruptedException {
        AbstractC22184o<?> take = this.f61626a.take();
        SystemClock.elapsedRealtime();
        try {
            take.addMarker("network-queue-take");
            if (take.isCanceled()) {
                take.finish("network-discard-cancelled");
                take.notifyListenerResponseNotUsable();
                return;
            }
            TrafficStats.setThreadStatsTag(take.getTrafficStatsTag());
            C22182l m8475f = ((C22202b) this.f61627b).m8475f(take);
            take.addMarker("network-http-complete");
            if (m8475f.f61635e && take.hasHadResponseDelivered()) {
                take.finish("not-modified");
                take.notifyListenerResponseNotUsable();
                return;
            }
            C22190q<?> parseNetworkResponse = take.parseNetworkResponse(m8475f);
            take.addMarker("network-parse-complete");
            if (take.shouldCache() && parseNetworkResponse.f61655b != null) {
                ((C22205d) this.f61628c).m8469d(take.getCacheKey(), parseNetworkResponse.f61655b);
                take.addMarker("network-cache-written");
            }
            take.markDelivered();
            ((C22175g) this.f61629d).m8488a(take, parseNetworkResponse);
            take.notifyListenerResponseReceived(parseNetworkResponse);
        } catch (C22197v e) {
            SystemClock.elapsedRealtime();
            C22197v parseNetworkError = take.parseNetworkError(e);
            C22175g c22175g = (C22175g) this.f61629d;
            Objects.requireNonNull(c22175g);
            take.addMarker("post-error");
            c22175g.f61619a.execute(new C22175g.RunnableC22177b(take, new C22190q(parseNetworkError), null));
            take.notifyListenerResponseNotUsable();
        } catch (Exception e2) {
            C22198w.m8484a("Unhandled exception %s", e2.toString());
            C22197v c22197v = new C22197v(e2);
            SystemClock.elapsedRealtime();
            C22175g c22175g2 = (C22175g) this.f61629d;
            Objects.requireNonNull(c22175g2);
            take.addMarker("post-error");
            c22175g2.f61619a.execute(new C22175g.RunnableC22177b(take, new C22190q(c22197v), null));
            take.notifyListenerResponseNotUsable();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                m8487a();
            } catch (InterruptedException e) {
                if (this.f61630e) {
                    Thread.currentThread().interrupt();
                    return;
                }
                C22198w.m8484a("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
