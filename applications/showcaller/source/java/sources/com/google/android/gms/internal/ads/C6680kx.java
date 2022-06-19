package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.MotionEvent;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.internal.ads.kx */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kx.class */
public final class C6680kx {

    /* renamed from: a */
    private MotionEvent f25866a = MotionEvent.obtain(0, 0, 1, 0.0f, 0.0f, 0);

    /* renamed from: b */
    private MotionEvent f25867b = MotionEvent.obtain(0, 0, 0, 0.0f, 0.0f, 0);

    /* renamed from: c */
    private final Context f25868c;

    /* renamed from: d */
    private final ScheduledExecutorService f25869d;

    /* renamed from: e */
    private final C6754mx f25870e;

    public C6680kx(Context context, ScheduledExecutorService scheduledExecutorService, C6754mx c6754mx, byte[] bArr) {
        this.f25868c = context;
        this.f25869d = scheduledExecutorService;
        this.f25870e = c6754mx;
    }

    /* renamed from: a */
    public final void m13762a(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1 && motionEvent.getEventTime() > this.f25866a.getEventTime()) {
            this.f25866a = MotionEvent.obtain(motionEvent);
        } else if (motionEvent.getAction() != 0 || motionEvent.getEventTime() <= this.f25867b.getEventTime()) {
        } else {
            this.f25867b = MotionEvent.obtain(motionEvent);
        }
    }

    /* renamed from: b */
    public final r03<String> m13761b() {
        return (a03) k03.m13996h(a03.m16718E(k03.m14003a(null)), C7161xx.f32333c.m12799e().longValue(), TimeUnit.MILLISECONDS, this.f25869d);
    }
}
