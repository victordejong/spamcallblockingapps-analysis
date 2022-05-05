package com.google.android.material.dialog;

import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/dialog/InsetDialogOnTouchListener.class */
public class InsetDialogOnTouchListener implements View.OnTouchListener {
    @NonNull

    /* renamed from: f */
    private final Dialog f10633f;

    /* renamed from: g */
    private final int f10634g;

    /* renamed from: h */
    private final int f10635h;

    /* renamed from: i */
    private final int f10636i;

    public InsetDialogOnTouchListener(@NonNull Dialog dialog, @NonNull Rect rect) {
        this.f10633f = dialog;
        this.f10634g = rect.left;
        this.f10635h = rect.top;
        this.f10636i = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(@NonNull View view, @NonNull MotionEvent motionEvent) {
        View findViewById = view.findViewById(16908290);
        int left = this.f10634g + findViewById.getLeft();
        int width = findViewById.getWidth();
        int top = this.f10635h + findViewById.getTop();
        if (new RectF(left, top, width + left, findViewById.getHeight() + top).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            obtain.setAction(4);
        }
        if (Build.VERSION.SDK_INT < 28) {
            obtain.setAction(0);
            int i = this.f10636i;
            obtain.setLocation((-i) - 1, (-i) - 1);
        }
        view.performClick();
        return this.f10633f.onTouchEvent(obtain);
    }
}
