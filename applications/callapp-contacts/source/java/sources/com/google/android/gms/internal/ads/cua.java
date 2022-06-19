package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cua.class */
public final class cua implements cty {

    /* renamed from: a */
    final cty f46545a;

    /* renamed from: b */
    final Queue<ctz> f46546b = new LinkedBlockingQueue();

    /* renamed from: c */
    private final int f46547c = ((Integer) ekb.m14831e().m18571a(C12187aq.f42936fh)).intValue();

    /* renamed from: d */
    private final AtomicBoolean f46548d = new AtomicBoolean(false);

    public cua(cty ctyVar, ScheduledExecutorService scheduledExecutorService) {
        this.f46545a = ctyVar;
        long intValue = ((Integer) ekb.m14831e().m18571a(C12187aq.f42935fg)).intValue();
        scheduledExecutorService.scheduleAtFixedRate(new Runnable(this) { // from class: com.google.android.gms.internal.ads.cue

            /* renamed from: a */
            private final cua f46556a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f46556a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                cua cuaVar = this.f46556a;
                while (!cuaVar.f46546b.isEmpty()) {
                    cuaVar.f46545a.mo17215a(cuaVar.f46546b.remove());
                }
            }
        }, intValue, intValue, TimeUnit.MILLISECONDS);
    }

    @Override // com.google.android.gms.internal.ads.cty
    /* renamed from: a */
    public final void mo17215a(ctz ctzVar) {
        if (this.f46546b.size() < this.f46547c) {
            this.f46546b.offer(ctzVar);
        } else if (this.f46548d.getAndSet(true)) {
        } else {
            Queue<ctz> queue = this.f46546b;
            ctz m17226a = ctz.m17226a("dropped_event");
            Map<String, String> m17230a = ctzVar.m17230a();
            if (m17230a.containsKey("action")) {
                m17226a.m17225a("dropped_action", m17230a.get("action"));
            }
            queue.offer(m17226a);
        }
    }

    @Override // com.google.android.gms.internal.ads.cty
    /* renamed from: b */
    public final String mo17214b(ctz ctzVar) {
        return this.f46545a.mo17214b(ctzVar);
    }
}
