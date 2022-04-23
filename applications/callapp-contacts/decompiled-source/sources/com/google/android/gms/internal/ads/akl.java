package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.f;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/akl.class */
public final class akl implements efc {

    /* renamed from: a  reason: collision with root package name */
    private final ScheduledExecutorService f23490a;

    /* renamed from: b  reason: collision with root package name */
    private final f f23491b;

    /* renamed from: c  reason: collision with root package name */
    private ScheduledFuture<?> f23492c;

    /* renamed from: d  reason: collision with root package name */
    private long f23493d = -1;
    private long e = -1;
    private Runnable f = null;
    private boolean g = false;

    public akl(ScheduledExecutorService scheduledExecutorService, f fVar) {
        this.f23490a = scheduledExecutorService;
        this.f23491b = fVar;
        zzr.zzky().a(this);
    }

    private final void a() {
        synchronized (this) {
            if (!this.g) {
                ScheduledFuture<?> scheduledFuture = this.f23492c;
                if (scheduledFuture == null || scheduledFuture.isDone()) {
                    this.e = -1L;
                } else {
                    this.f23492c.cancel(true);
                    this.e = this.f23493d - this.f23491b.b();
                }
                this.g = true;
            }
        }
    }

    private final void b() {
        ScheduledFuture<?> scheduledFuture;
        synchronized (this) {
            if (this.g) {
                if (this.e > 0 && (scheduledFuture = this.f23492c) != null && scheduledFuture.isCancelled()) {
                    this.f23492c = this.f23490a.schedule(this.f, this.e, TimeUnit.MILLISECONDS);
                }
                this.g = false;
            }
        }
    }

    public final void a(int i, Runnable runnable) {
        synchronized (this) {
            this.f = runnable;
            long j = i;
            this.f23493d = this.f23491b.b() + j;
            this.f23492c = this.f23490a.schedule(runnable, j, TimeUnit.MILLISECONDS);
        }
    }

    @Override // com.google.android.gms.internal.ads.efc
    public final void a(boolean z) {
        if (z) {
            b();
        } else {
            a();
        }
    }
}
