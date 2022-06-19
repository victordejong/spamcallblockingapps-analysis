package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC6227e;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/o51.class */
public final class o51 extends m81<p51> {

    /* renamed from: e */
    private final ScheduledExecutorService f27434e;

    /* renamed from: f */
    private final AbstractC6227e f27435f;

    /* renamed from: g */
    private long f27436g = -1;

    /* renamed from: h */
    private long f27437h = -1;

    /* renamed from: i */
    private boolean f27438i = false;

    /* renamed from: j */
    private ScheduledFuture<?> f27439j;

    public o51(ScheduledExecutorService scheduledExecutorService, AbstractC6227e abstractC6227e) {
        super(Collections.emptySet());
        this.f27434e = scheduledExecutorService;
        this.f27435f = abstractC6227e;
    }

    /* renamed from: T0 */
    private final void m12728T0(long j) {
        synchronized (this) {
            ScheduledFuture<?> scheduledFuture = this.f27439j;
            if (scheduledFuture != null && !scheduledFuture.isDone()) {
                this.f27439j.cancel(true);
            }
            this.f27436g = this.f27435f.mo16806b() + j;
            this.f27439j = this.f27434e.schedule(new n51(this, null), j, TimeUnit.MILLISECONDS);
        }
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: S0 */
    public final void m12729S0(int i) {
        synchronized (this) {
            if (i <= 0) {
                return;
            }
            char millis = TimeUnit.SECONDS.toMillis(i);
            if (this.f27438i) {
                ?? r0 = this.f27437h;
                if (r0 <= 0 || millis >= r0) {
                    millis = r0;
                }
                this.f27437h = millis;
                return;
            }
            long mo16806b = this.f27435f.mo16806b();
            long j = this.f27436g;
            if (mo16806b <= j && j - this.f27435f.mo16806b() <= millis) {
                return;
            }
            m12728T0(millis);
        }
    }

    /* renamed from: b */
    public final void m12727b() {
        synchronized (this) {
            if (this.f27438i) {
                if (this.f27437h > 0 && this.f27439j.isCancelled()) {
                    m12728T0(this.f27437h);
                }
                this.f27438i = false;
            }
        }
    }

    /* renamed from: c */
    public final void m12726c() {
        synchronized (this) {
            this.f27438i = false;
            m12728T0(0L);
        }
    }

    public final void zza() {
        synchronized (this) {
            if (!this.f27438i) {
                ScheduledFuture<?> scheduledFuture = this.f27439j;
                if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                    this.f27437h = -1L;
                } else {
                    this.f27439j.cancel(true);
                    this.f27437h = this.f27436g - this.f27435f.mo16806b();
                }
                this.f27438i = true;
            }
        }
    }
}
