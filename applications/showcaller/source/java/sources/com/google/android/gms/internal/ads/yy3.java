package com.google.android.gms.internal.ads;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yy3.class */
public final class yy3 extends Thread {

    /* renamed from: d */
    private final BlockingQueue<dz3<?>> f32719d;

    /* renamed from: e */
    private final xy3 f32720e;

    /* renamed from: f */
    private final py3 f32721f;

    /* renamed from: g */
    private volatile boolean f32722g = false;

    /* renamed from: h */
    private final vy3 f32723h;

    /* JADX WARN: Multi-variable type inference failed */
    public yy3(BlockingQueue blockingQueue, BlockingQueue<dz3<?>> blockingQueue2, xy3 xy3Var, py3 py3Var, vy3 vy3Var) {
        this.f32719d = blockingQueue;
        this.f32720e = blockingQueue2;
        this.f32721f = xy3Var;
        this.f32723h = py3Var;
    }

    /* renamed from: b */
    private void m8648b() {
        dz3<?> take = this.f32719d.take();
        SystemClock.elapsedRealtime();
        take.m15637h(3);
        try {
            take.m15639f("network-queue-take");
            take.m15630o();
            TrafficStats.setThreadStatsTag(take.m15640e());
            zy3 mo9014a = this.f32720e.mo9014a(take);
            take.m15639f("network-http-complete");
            if (mo9014a.f33459e && take.m15625t()) {
                take.m15638g("not-modified");
                take.m15620z();
                return;
            }
            jz3<?> mo14999u = take.mo14999u(mo9014a);
            take.m15639f("network-parse-complete");
            if (mo14999u.f25036b != null) {
                this.f32721f.mo9411a(take.m15633l(), mo14999u.f25036b);
                take.m15639f("network-cache-written");
            }
            take.m15626s();
            this.f32723h.m9835a(take, mo14999u, null);
            take.m15621y(mo14999u);
        } catch (zzwl e) {
            SystemClock.elapsedRealtime();
            this.f32723h.m9834b(take, e);
            take.m15620z();
        } catch (Exception e2) {
            mz3.m13037d(e2, "Unhandled exception %s", e2.toString());
            zzwl zzwlVar = new zzwl(e2);
            SystemClock.elapsedRealtime();
            this.f32723h.m9834b(take, zzwlVar);
            take.m15620z();
        } finally {
            take.m15637h(4);
        }
    }

    /* renamed from: a */
    public final void m8649a() {
        this.f32722g = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                m8648b();
            } catch (InterruptedException e) {
                if (this.f32722g) {
                    Thread.currentThread().interrupt();
                    return;
                }
                mz3.m13038c("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
