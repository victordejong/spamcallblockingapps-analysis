package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import com.google.android.gms.ads.internal.util.C5679c2;
import java.util.concurrent.TimeUnit;
@TargetApi(14)
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dk0.class */
public final class dk0 {

    /* renamed from: b */
    private long f21658b;

    /* renamed from: a */
    private final long f21657a = TimeUnit.MILLISECONDS.toNanos(((Long) C7192yr.m8714c().m14263c(C6679kw.f25838y)).longValue());

    /* renamed from: c */
    private boolean f21659c = true;

    /* renamed from: a */
    public final void m15778a() {
        this.f21659c = true;
    }

    /* renamed from: b */
    public final void m15777b(SurfaceTexture surfaceTexture, rj0 rj0Var) {
        if (rj0Var == null) {
            return;
        }
        long timestamp = surfaceTexture.getTimestamp();
        if (!this.f21659c && Math.abs(timestamp - this.f21658b) < this.f21657a) {
            return;
        }
        this.f21659c = false;
        this.f21658b = timestamp;
        C5679c2.f18451a.post(new ck0(this, rj0Var));
    }
}
