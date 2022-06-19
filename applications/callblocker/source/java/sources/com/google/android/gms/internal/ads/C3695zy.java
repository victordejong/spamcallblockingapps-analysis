package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import java.util.concurrent.TimeUnit;
@TargetApi(14)
/* renamed from: com.google.android.gms.internal.ads.zy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zy.class */
public final class C3695zy {

    /* renamed from: b */
    private long f17727b;

    /* renamed from: a */
    private final long f17726a = TimeUnit.MILLISECONDS.toNanos(((Long) dyx.m8158e().m7876a(edi.f16609u)).longValue());

    /* renamed from: c */
    private boolean f17728c = true;

    /* renamed from: a */
    public final void m6646a() {
        this.f17728c = true;
    }

    /* renamed from: a */
    public final void m6645a(SurfaceTexture surfaceTexture, AbstractC3682zl abstractC3682zl) {
        if (abstractC3682zl == null) {
            return;
        }
        long timestamp = surfaceTexture.getTimestamp();
        if (!this.f17728c && Math.abs(timestamp - this.f17727b) < this.f17726a) {
            return;
        }
        this.f17728c = false;
        this.f17727b = timestamp;
        C3567ve.f17498a.post(new RunnableC3694zx(this, abstractC3682zl));
    }
}
