package com.google.android.gms.ads.internal;

import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.ctl;
/* renamed from: com.google.android.gms.ads.internal.n */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/n.class */
public final class View$OnTouchListenerC2312n implements View.OnTouchListener {

    /* renamed from: a */
    private final /* synthetic */ BinderC2310l f6667a;

    public View$OnTouchListenerC2312n(BinderC2310l binderC2310l) {
        this.f6667a = binderC2310l;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        ctl ctlVar;
        ctl ctlVar2;
        ctlVar = this.f6667a.f6664h;
        if (ctlVar != null) {
            ctlVar2 = this.f6667a.f6664h;
            ctlVar2.m10665a(motionEvent);
            return false;
        }
        return false;
    }
}
