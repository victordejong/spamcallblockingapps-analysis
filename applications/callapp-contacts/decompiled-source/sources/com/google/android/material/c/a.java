package com.google.android.material.c;

import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/c/a.class */
public final class a implements View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    private final Dialog f30356a;

    /* renamed from: b  reason: collision with root package name */
    private final int f30357b;

    /* renamed from: c  reason: collision with root package name */
    private final int f30358c;

    /* renamed from: d  reason: collision with root package name */
    private final int f30359d;

    public a(Dialog dialog, Rect rect) {
        this.f30356a = dialog;
        this.f30357b = rect.left;
        this.f30358c = rect.top;
        this.f30359d = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        View findViewById = view.findViewById(16908290);
        int left = this.f30357b + findViewById.getLeft();
        int width = findViewById.getWidth();
        int top = this.f30358c + findViewById.getTop();
        if (new RectF(left, top, width + left, findViewById.getHeight() + top).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            obtain.setAction(4);
        }
        if (Build.VERSION.SDK_INT < 28) {
            obtain.setAction(0);
            int i = this.f30359d;
            obtain.setLocation((-i) - 1, (-i) - 1);
        }
        view.performClick();
        return this.f30356a.onTouchEvent(obtain);
    }
}
