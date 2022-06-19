package com.google.android.material.timepicker;

import android.view.GestureDetector;
import android.view.MotionEvent;
import java.util.Objects;
/* renamed from: com.google.android.material.timepicker.e */
/* loaded from: classes-dex2jar.jar:com/google/android/material/timepicker/e.class */
public class C1841e extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: a */
    public final /* synthetic */ TimePickerView f6939a;

    public C1841e(TimePickerView timePickerView) {
        this.f6939a = timePickerView;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        TimePickerView timePickerView = this.f6939a;
        int i = TimePickerView.f6926w;
        Objects.requireNonNull(timePickerView);
        return false;
    }
}
