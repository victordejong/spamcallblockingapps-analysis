package com.google.android.material.timepicker;

import android.view.ViewTreeObserver;
/* renamed from: com.google.android.material.timepicker.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/timepicker/a.class */
public class ViewTreeObserver$OnPreDrawListenerC1836a implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a */
    public final /* synthetic */ ClockFaceView f6932a;

    public ViewTreeObserver$OnPreDrawListenerC1836a(ClockFaceView clockFaceView) {
        this.f6932a = clockFaceView;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        if (!this.f6932a.isShown()) {
            return true;
        }
        this.f6932a.getViewTreeObserver().removeOnPreDrawListener(this);
        int height = this.f6932a.getHeight() / 2;
        ClockFaceView clockFaceView = this.f6932a;
        int i = (height - clockFaceView.f6905v.f6916f) - clockFaceView.f6898C;
        if (i == clockFaceView.f6935t) {
            return true;
        }
        clockFaceView.f6935t = i;
        clockFaceView.m4492s();
        ClockHandView clockHandView = clockFaceView.f6905v;
        clockHandView.f6924n = clockFaceView.f6935t;
        clockHandView.invalidate();
        return true;
    }
}
