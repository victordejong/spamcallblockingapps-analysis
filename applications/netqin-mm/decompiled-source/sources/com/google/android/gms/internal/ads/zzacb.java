package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzacb.class */
public final class zzacb {

    /* renamed from: a */
    public MotionEvent f23954a = MotionEvent.obtain(0, 0, 1, 0.0f, 0.0f, 0);

    /* renamed from: b */
    public MotionEvent f23955b = MotionEvent.obtain(0, 0, 0, 0.0f, 0.0f, 0);

    /* renamed from: a */
    public final MotionEvent m16873a() {
        return this.f23954a;
    }

    /* renamed from: a */
    public final void m16872a(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1 && motionEvent.getEventTime() > this.f23954a.getEventTime()) {
            this.f23954a = MotionEvent.obtain(motionEvent);
        } else if (motionEvent.getAction() == 0 && motionEvent.getEventTime() > this.f23955b.getEventTime()) {
            this.f23955b = MotionEvent.obtain(motionEvent);
        }
    }

    /* renamed from: b */
    public final MotionEvent m16871b() {
        return this.f23955b;
    }
}
