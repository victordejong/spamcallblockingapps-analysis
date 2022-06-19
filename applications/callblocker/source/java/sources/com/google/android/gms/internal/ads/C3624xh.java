package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.internal.ads.xh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xh.class */
public final class C3624xh {

    /* renamed from: a */
    private long f17589a;
    @GuardedBy("lock")

    /* renamed from: b */
    private long f17590b = Long.MIN_VALUE;

    /* renamed from: c */
    private final Object f17591c = new Object();

    public C3624xh(long j) {
        this.f17589a = j;
    }

    /* renamed from: a */
    public final void m6823a(long j) {
        synchronized (this.f17591c) {
            this.f17589a = j;
        }
    }

    /* renamed from: a */
    public final boolean m6824a() {
        boolean z;
        synchronized (this.f17591c) {
            long mo13861b = C2341q.m14737j().mo13861b();
            if (this.f17590b + this.f17589a > mo13861b) {
                z = false;
            } else {
                this.f17590b = mo13861b;
                z = true;
            }
        }
        return z;
    }
}
