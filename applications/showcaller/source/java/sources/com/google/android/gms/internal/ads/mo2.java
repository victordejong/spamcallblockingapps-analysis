package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mo2.class */
public final class mo2 implements jo2 {

    /* renamed from: a */
    private final jo2 f26692a;

    /* renamed from: b */
    private final Queue<io2> f26693b = new LinkedBlockingQueue();

    /* renamed from: c */
    private final int f26694c = ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25741l6)).intValue();

    /* renamed from: d */
    private final AtomicBoolean f26695d = new AtomicBoolean(false);

    public mo2(jo2 jo2Var, ScheduledExecutorService scheduledExecutorService) {
        this.f26692a = jo2Var;
        long intValue = ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25733k6)).intValue();
        scheduledExecutorService.scheduleAtFixedRate(new Runnable(this) { // from class: com.google.android.gms.internal.ads.lo2

            /* renamed from: d */
            private final mo2 f26190d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26190d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f26190d.m13138c();
            }
        }, intValue, intValue, TimeUnit.MILLISECONDS);
    }

    @Override // com.google.android.gms.internal.ads.jo2
    /* renamed from: a */
    public final String mo9503a(io2 io2Var) {
        return this.f26692a.mo9503a(io2Var);
    }

    @Override // com.google.android.gms.internal.ads.jo2
    /* renamed from: b */
    public final void mo9502b(io2 io2Var) {
        if (this.f26693b.size() < this.f26694c) {
            this.f26693b.offer(io2Var);
        } else if (this.f26695d.getAndSet(true)) {
        } else {
            Queue<io2> queue = this.f26693b;
            io2 m14338a = io2.m14338a("dropped_event");
            Map<String, String> m14329j = io2Var.m14329j();
            if (m14329j.containsKey("action")) {
                m14338a.m14336c("dropped_action", m14329j.get("action"));
            }
            queue.offer(m14338a);
        }
    }

    /* renamed from: c */
    public final /* bridge */ /* synthetic */ void m13138c() {
        while (!this.f26693b.isEmpty()) {
            this.f26692a.mo9502b(this.f26693b.remove());
        }
    }
}
