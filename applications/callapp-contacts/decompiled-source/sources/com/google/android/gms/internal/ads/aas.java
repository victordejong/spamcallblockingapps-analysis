package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import com.google.android.gms.ads.internal.util.zzj;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aas.class */
public final class aas {

    /* renamed from: c  reason: collision with root package name */
    private long f23021c;

    /* renamed from: b  reason: collision with root package name */
    private final long f23020b = TimeUnit.MILLISECONDS.toNanos(((Long) ekb.e().a(aq.w)).longValue());

    /* renamed from: a  reason: collision with root package name */
    boolean f23019a = true;

    public final void a(SurfaceTexture surfaceTexture, aak aakVar) {
        if (aakVar != null) {
            long timestamp = surfaceTexture.getTimestamp();
            if (this.f23019a || Math.abs(timestamp - this.f23021c) >= this.f23020b) {
                this.f23019a = false;
                this.f23021c = timestamp;
                zzj.zzegq.post(new aav(this, aakVar));
            }
        }
    }
}
