package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import com.google.android.gms.ads.internal.util.C1433l1;
import java.util.concurrent.TimeUnit;
@TargetApi(14)
/* renamed from: com.google.android.gms.internal.ads.lq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/lq.class */
public final class C1836lq {

    /* renamed from: b */
    private long f7137b;

    /* renamed from: a */
    private final long f7136a = TimeUnit.MILLISECONDS.toNanos(((Long) C1674c.m7906c().m6878b(C1842m3.f7524w)).longValue());

    /* renamed from: c */
    private boolean f7138c = true;

    C1836lq() {
    }

    /* renamed from: a */
    public final void m6677a() {
        this.f7138c = true;
    }

    /* renamed from: b */
    public final void m6676b(SurfaceTexture surfaceTexture, AbstractC1653aq abstractC1653aq) {
        if (abstractC1653aq == null) {
            return;
        }
        long timestamp = surfaceTexture.getTimestamp();
        if (!this.f7138c && Math.abs(timestamp - this.f7137b) < this.f7136a) {
            return;
        }
        this.f7138c = false;
        this.f7137b = timestamp;
        C1433l1.f5594i.post(new RunnableC1820kq(this, abstractC1653aq));
    }
}
