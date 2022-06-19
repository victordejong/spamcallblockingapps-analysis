package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC12102f;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/atx.class */
public final class atx extends awl<aub> {

    /* renamed from: a */
    private final ScheduledExecutorService f43165a;

    /* renamed from: b */
    private final AbstractC12102f f43166b;

    /* renamed from: c */
    private long f43167c = -1;

    /* renamed from: d */
    private long f43168d = -1;

    /* renamed from: e */
    private boolean f43169e = false;

    /* renamed from: f */
    private ScheduledFuture<?> f43170f;

    public atx(ScheduledExecutorService scheduledExecutorService, AbstractC12102f abstractC12102f) {
        super(Collections.emptySet());
        this.f43165a = scheduledExecutorService;
        this.f43166b = abstractC12102f;
    }

    /* renamed from: a */
    private final void m18411a(long j) {
        synchronized (this) {
            ScheduledFuture<?> scheduledFuture = this.f43170f;
            if (scheduledFuture != null && !scheduledFuture.isDone()) {
                this.f43170f.cancel(true);
            }
            this.f43167c = this.f43166b.mo19038b() + j;
            this.f43170f = this.f43165a.schedule(new aty(this), j, TimeUnit.MILLISECONDS);
        }
    }

    /* renamed from: a */
    public final void m18413a() {
        synchronized (this) {
            if (!this.f43169e) {
                ScheduledFuture<?> scheduledFuture = this.f43170f;
                if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                    this.f43168d = -1L;
                } else {
                    this.f43170f.cancel(true);
                    this.f43168d = this.f43167c - this.f43166b.mo19038b();
                }
                this.f43169e = true;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: a */
    public final void m18412a(int i) {
        synchronized (this) {
            if (i <= 0) {
                return;
            }
            char millis = TimeUnit.SECONDS.toMillis(i);
            if (this.f43169e) {
                ?? r0 = this.f43168d;
                if (r0 <= 0 || millis >= r0) {
                    millis = r0;
                }
                this.f43168d = millis;
                return;
            }
            long mo19038b = this.f43166b.mo19038b();
            long j = this.f43167c;
            if (mo19038b > j || j - this.f43166b.mo19038b() > millis) {
                m18411a((long) millis);
            }
        }
    }

    /* renamed from: b */
    public final void m18409b() {
        synchronized (this) {
            if (this.f43169e) {
                if (this.f43168d > 0 && this.f43170f.isCancelled()) {
                    m18411a(this.f43168d);
                }
                this.f43169e = false;
            }
        }
    }

    /* renamed from: c */
    public final void m18408c() {
        synchronized (this) {
            this.f43169e = false;
            m18411a(0L);
        }
    }
}
