package com.google.android.material.timepicker;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
/* renamed from: com.google.android.material.timepicker.f */
/* loaded from: classes-dex2jar.jar:com/google/android/material/timepicker/f.class */
public class View$OnTouchListenerC1842f implements View.OnTouchListener {

    /* renamed from: a */
    public final /* synthetic */ GestureDetector f6940a;

    public View$OnTouchListenerC1842f(TimePickerView timePickerView, GestureDetector gestureDetector) {
        this.f6940a = gestureDetector;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (((Checkable) view).isChecked()) {
            return this.f6940a.onTouchEvent(motionEvent);
        }
        return false;
    }
}
