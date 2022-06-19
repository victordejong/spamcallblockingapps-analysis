package com.google.android.material.p150h;

import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
/* renamed from: com.google.android.material.h.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/h/a.class */
public class View$OnTouchListenerC4681a implements View.OnTouchListener {

    /* renamed from: a */
    private final Dialog f20288a;

    /* renamed from: b */
    private final int f20289b;

    /* renamed from: c */
    private final int f20290c;

    /* renamed from: d */
    private final int f20291d;

    public View$OnTouchListenerC4681a(Dialog dialog, Rect rect) {
        this.f20288a = dialog;
        this.f20289b = rect.left;
        this.f20290c = rect.top;
        this.f20291d = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int top;
        boolean z = false;
        View findViewById = view.findViewById(16908290);
        int left = this.f20289b + findViewById.getLeft();
        int width = findViewById.getWidth();
        if (!new RectF(left, this.f20290c + findViewById.getTop(), width + left, findViewById.getHeight() + top).contains(motionEvent.getX(), motionEvent.getY())) {
            MotionEvent obtain = MotionEvent.obtain(motionEvent);
            obtain.setAction(4);
            if (Build.VERSION.SDK_INT < 28) {
                obtain.setAction(0);
                obtain.setLocation((-this.f20291d) - 1, (-this.f20291d) - 1);
            }
            view.performClick();
            z = this.f20288a.onTouchEvent(obtain);
        }
        return z;
    }
}
