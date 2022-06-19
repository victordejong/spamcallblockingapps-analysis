package com.google.android.gms.ads.internal;

import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.C7016u;
/* renamed from: com.google.android.gms.ads.internal.m */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/m.class */
public final class View$OnTouchListenerC5636m implements View.OnTouchListener {

    /* renamed from: d */
    final /* synthetic */ BinderC5666r f18308d;

    public View$OnTouchListenerC5636m(BinderC5666r binderC5666r) {
        this.f18308d = binderC5666r;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        C7016u c7016u;
        C7016u c7016u2;
        c7016u = this.f18308d.f18403k;
        if (c7016u != null) {
            c7016u2 = this.f18308d.f18403k;
            c7016u2.m10448d(motionEvent);
            return false;
        }
        return false;
    }
}
