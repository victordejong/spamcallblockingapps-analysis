package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cua.class */
final class cua implements cty {

    /* renamed from: a  reason: collision with root package name */
    final cty f26396a;

    /* renamed from: b  reason: collision with root package name */
    final Queue<ctz> f26397b = new LinkedBlockingQueue();

    /* renamed from: c  reason: collision with root package name */
    private final int f26398c = ((Integer) ekb.e().a(aq.fh)).intValue();

    /* renamed from: d  reason: collision with root package name */
    private final AtomicBoolean f26399d = new AtomicBoolean(false);

    public cua(cty ctyVar, ScheduledExecutorService scheduledExecutorService) {
        this.f26396a = ctyVar;
        long intValue = ((Integer) ekb.e().a(aq.fg)).intValue();
        scheduledExecutorService.scheduleAtFixedRate(new Runnable(this) { // from class: com.google.android.gms.internal.ads.cue

            /* renamed from: a  reason: collision with root package name */
            private final cua f26407a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26407a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                cua cuaVar = this.f26407a;
                while (!cuaVar.f26397b.isEmpty()) {
                    cuaVar.f26396a.a(cuaVar.f26397b.remove());
                }
            }
        }, intValue, intValue, TimeUnit.MILLISECONDS);
    }

    @Override // com.google.android.gms.internal.ads.cty
    public final void a(ctz ctzVar) {
        if (this.f26397b.size() < this.f26398c) {
            this.f26397b.offer(ctzVar);
        } else if (!this.f26399d.getAndSet(true)) {
            Queue<ctz> queue = this.f26397b;
            ctz a2 = ctz.a("dropped_event");
            Map<String, String> a3 = ctzVar.a();
            if (a3.containsKey("action")) {
                a2.a("dropped_action", a3.get("action"));
            }
            queue.offer(a2);
        }
    }

    @Override // com.google.android.gms.internal.ads.cty
    public final String b(ctz ctzVar) {
        return this.f26396a.b(ctzVar);
    }
}
