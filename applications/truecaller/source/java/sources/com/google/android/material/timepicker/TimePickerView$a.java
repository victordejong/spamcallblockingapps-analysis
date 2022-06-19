package com.google.android.material.timepicker;

import android.view.View;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/timepicker/TimePickerView$a.class */
public class TimePickerView$a implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ TimePickerView f6981a;

    public TimePickerView$a(TimePickerView timePickerView) {
        this.f6981a = timePickerView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        TimePickerView timePickerView = this.f6981a;
        int i = TimePickerView.x;
        Objects.requireNonNull(timePickerView);
    }
}
