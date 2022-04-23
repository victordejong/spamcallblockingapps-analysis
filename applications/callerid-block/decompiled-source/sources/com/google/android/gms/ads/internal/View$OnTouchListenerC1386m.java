package com.google.android.gms.ads.internal;

import android.view.MotionEvent;
import android.view.View;
/* renamed from: com.google.android.gms.ads.internal.m */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/m.class */
final class View$OnTouchListenerC1386m implements View.OnTouchListener {

    /* renamed from: b */
    final /* synthetic */ q f5502b;

    View$OnTouchListenerC1386m(q qVar) {
        this.f5502b = qVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (q.G6(this.f5502b) == null) {
            return false;
        }
        q.G6(this.f5502b).m4631d(motionEvent);
        return false;
    }
}
