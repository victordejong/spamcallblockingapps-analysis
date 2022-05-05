package com.android.volley;

import android.os.Process;
import com.android.volley.b;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes-dex2jar.jar:com/android/volley/c.class */
public final class c extends Thread {

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f2286b = v.f2345b;

    /* renamed from: a  reason: collision with root package name */
    volatile boolean f2287a = false;
    private final BlockingQueue<n<?>> c;
    private final BlockingQueue<n<?>> d;
    private final b e;
    private final q f;

    public c(BlockingQueue<n<?>> blockingQueue, BlockingQueue<n<?>> blockingQueue2, b bVar, q qVar) {
        this.c = blockingQueue;
        this.d = blockingQueue2;
        this.e = bVar;
        this.f = qVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (f2286b) {
            v.a("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.e.a();
        while (true) {
            try {
                final n<?> take = this.c.take();
                try {
                    take.a("cache-queue-take");
                    if (take.i) {
                        take.b("cache-discard-canceled");
                    } else {
                        b.a a2 = this.e.a(take.c());
                        if (a2 == null) {
                            take.a("cache-miss");
                            this.d.put(take);
                        } else {
                            if (a2.e < System.currentTimeMillis()) {
                                take.a("cache-hit-expired");
                                take.l = a2;
                                this.d.put(take);
                            } else {
                                take.a("cache-hit");
                                p<?> a3 = take.a(new j(a2.f2284a, a2.g));
                                take.a("cache-hit-parsed");
                                if (!(a2.f < System.currentTimeMillis())) {
                                    this.f.a(take, a3);
                                } else {
                                    take.a("cache-hit-refresh-needed");
                                    take.l = a2;
                                    a3.d = true;
                                    this.f.a(take, a3, new Runnable() { // from class: com.android.volley.c.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            try {
                                                c.this.d.put(take);
                                            } catch (InterruptedException e) {
                                            }
                                        }
                                    });
                                }
                            }
                        }
                    }
                } catch (Exception e) {
                    v.a(e, "Unhandled exception %s", e.toString());
                }
            } catch (InterruptedException e2) {
                if (this.f2287a) {
                    return;
                }
            }
        }
    }
}
