package com.google.android.material.p366c;

import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
/* renamed from: com.google.android.material.c.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/c/a.class */
public final class View$OnTouchListenerC14473a implements View.OnTouchListener {

    /* renamed from: a */
    private final Dialog f52770a;

    /* renamed from: b */
    private final int f52771b;

    /* renamed from: c */
    private final int f52772c;

    /* renamed from: d */
    private final int f52773d;

    public View$OnTouchListenerC14473a(Dialog dialog, Rect rect) {
        this.f52770a = dialog;
        this.f52771b = rect.left;
        this.f52772c = rect.top;
        this.f52773d = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        View findViewById = view.findViewById(16908290);
        int left = this.f52771b + findViewById.getLeft();
        int width = findViewById.getWidth();
        int top = this.f52772c + findViewById.getTop();
        if (new RectF(left, top, width + left, findViewById.getHeight() + top).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            obtain.setAction(4);
        }
        if (Build.VERSION.SDK_INT < 28) {
            obtain.setAction(0);
            int i = this.f52773d;
            obtain.setLocation((-i) - 1, (-i) - 1);
        }
        view.performClick();
        return this.f52770a.onTouchEvent(obtain);
    }
}
