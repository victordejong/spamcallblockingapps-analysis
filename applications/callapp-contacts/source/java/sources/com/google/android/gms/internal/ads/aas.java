package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import com.google.android.gms.ads.internal.util.zzj;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aas.class */
public final class aas {

    /* renamed from: c */
    private long f39724c;

    /* renamed from: b */
    private final long f39723b = TimeUnit.MILLISECONDS.toNanos(((Long) ekb.m14831e().m18571a(C12187aq.f42997w)).longValue());

    /* renamed from: a */
    boolean f39722a = true;

    /* renamed from: a */
    public final void m18947a(SurfaceTexture surfaceTexture, aak aakVar) {
        if (aakVar == null) {
            return;
        }
        long timestamp = surfaceTexture.getTimestamp();
        if (!this.f39722a && Math.abs(timestamp - this.f39724c) < this.f39723b) {
            return;
        }
        this.f39722a = false;
        this.f39724c = timestamp;
        zzj.zzegq.post(new aav(this, aakVar));
    }
}
