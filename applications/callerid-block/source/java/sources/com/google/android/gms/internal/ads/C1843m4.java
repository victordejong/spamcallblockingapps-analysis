package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.MotionEvent;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.internal.ads.m4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/m4.class */
public final class C1843m4 {

    /* renamed from: a */
    private MotionEvent f7556a = MotionEvent.obtain(0, 0, 1, 0.0f, 0.0f, 0);

    /* renamed from: b */
    private MotionEvent f7557b = MotionEvent.obtain(0, 0, 0, 0.0f, 0.0f, 0);

    /* renamed from: c */
    private final ScheduledExecutorService f7558c;

    public C1843m4(Context context, ScheduledExecutorService scheduledExecutorService, C1871o4 c1871o4, byte[] bArr) {
        this.f7558c = scheduledExecutorService;
    }

    /* renamed from: a */
    public final void m6594a(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1 && motionEvent.getEventTime() > this.f7556a.getEventTime()) {
            this.f7556a = MotionEvent.obtain(motionEvent);
        } else if (motionEvent.getAction() != 0 || motionEvent.getEventTime() <= this.f7557b.getEventTime()) {
        } else {
            this.f7557b = MotionEvent.obtain(motionEvent);
        }
    }

    /* renamed from: b */
    public final rz1<String> m6593b() {
        return kz1.g(bz1.E(kz1.a((Object) null)), C1643a5.f5941c.m6222e().longValue(), TimeUnit.MILLISECONDS, this.f7558c);
    }
}
