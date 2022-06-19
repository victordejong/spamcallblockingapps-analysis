package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC2708e;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/arz.class */
public final class arz extends ate<asd> {

    /* renamed from: a */
    private final ScheduledExecutorService f10253a;

    /* renamed from: b */
    private final AbstractC2708e f10254b;
    @GuardedBy("this")

    /* renamed from: c */
    private long f10255c = -1;
    @GuardedBy("this")

    /* renamed from: d */
    private long f10256d = -1;
    @GuardedBy("this")

    /* renamed from: e */
    private boolean f10257e = false;
    @GuardedBy("this")

    /* renamed from: f */
    private ScheduledFuture<?> f10258f;

    public arz(ScheduledExecutorService scheduledExecutorService, AbstractC2708e abstractC2708e) {
        super(Collections.emptySet());
        this.f10253a = scheduledExecutorService;
        this.f10254b = abstractC2708e;
    }

    /* renamed from: a */
    private final void m12786a(long j) {
        synchronized (this) {
            if (this.f10258f != null && !this.f10258f.isDone()) {
                this.f10258f.cancel(true);
            }
            this.f10255c = this.f10254b.mo13861b() + j;
            this.f10258f = this.f10253a.schedule(new asa(this), j, TimeUnit.MILLISECONDS);
        }
    }

    /* renamed from: d */
    public final void m12782d() {
        m12775a(ary.f10252a);
    }

    /* renamed from: a */
    public final void m12788a() {
        synchronized (this) {
            if (!this.f10257e) {
                if (this.f10258f == null || this.f10258f.isCancelled()) {
                    this.f10256d = -1L;
                } else {
                    this.f10258f.cancel(true);
                    this.f10256d = this.f10255c - this.f10254b.mo13861b();
                }
                this.f10257e = true;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: a */
    public final void m12787a(int i) {
        synchronized (this) {
            if (i > 0) {
                char millis = TimeUnit.SECONDS.toMillis(i);
                if (this.f10257e) {
                    if (this.f10256d <= 0 || millis >= this.f10256d) {
                        millis = this.f10256d;
                    }
                    this.f10256d = millis;
                } else if (this.f10254b.mo13861b() > this.f10255c || this.f10255c - this.f10254b.mo13861b() > millis) {
                    m12786a((long) millis);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m12784b() {
        synchronized (this) {
            if (this.f10257e) {
                if (this.f10256d > 0 && this.f10258f.isCancelled()) {
                    m12786a(this.f10256d);
                }
                this.f10257e = false;
            }
        }
    }

    /* renamed from: c */
    public final void m12783c() {
        synchronized (this) {
            this.f10257e = false;
            m12786a(0L);
        }
    }
}
