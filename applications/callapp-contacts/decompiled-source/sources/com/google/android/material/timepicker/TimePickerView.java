package com.google.android.material.timepicker;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.v;
import com.google.android.material.a;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;
import java.util.Locale;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/TimePickerView.class */
class TimePickerView extends ConstraintLayout {

    /* renamed from: a  reason: collision with root package name */
    final ClockHandView f30963a;

    /* renamed from: b  reason: collision with root package name */
    final MaterialButtonToggleGroup f30964b;

    /* renamed from: c  reason: collision with root package name */
    b f30965c;

    /* renamed from: d  reason: collision with root package name */
    c f30966d;
    a e;
    private final Chip f;
    private final Chip g;
    private final ClockFaceView h;
    private final View.OnClickListener i;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/TimePickerView$a.class */
    interface a {
        void a();
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/TimePickerView$b.class */
    interface b {
        void b(int i);
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/TimePickerView$c.class */
    interface c {
        void a(int i);
    }

    public TimePickerView(Context context) {
        this(context, null);
    }

    public TimePickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TimePickerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.google.android.material.timepicker.TimePickerView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (TimePickerView.this.f30966d != null) {
                    TimePickerView.this.f30966d.a(((Integer) view.getTag(a.f.selection_type)).intValue());
                }
            }
        };
        this.i = onClickListener;
        LayoutInflater.from(context).inflate(a.h.material_timepicker, this);
        this.h = (ClockFaceView) findViewById(a.f.material_clock_face);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(a.f.material_clock_period_toggle);
        this.f30964b = materialButtonToggleGroup;
        materialButtonToggleGroup.a(new MaterialButtonToggleGroup.c() { // from class: com.google.android.material.timepicker.TimePickerView.2
            @Override // com.google.android.material.button.MaterialButtonToggleGroup.c
            public final void a(int i2, boolean z) {
                int i3 = i2 == a.f.material_clock_period_pm_button ? 1 : 0;
                if (TimePickerView.this.f30965c != null && z) {
                    TimePickerView.this.f30965c.b(i3);
                }
            }
        });
        Chip chip = (Chip) findViewById(a.f.material_minute_tv);
        this.f = chip;
        Chip chip2 = (Chip) findViewById(a.f.material_hour_tv);
        this.g = chip2;
        this.f30963a = (ClockHandView) findViewById(a.f.material_clock_hand);
        final GestureDetector gestureDetector = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.google.android.material.timepicker.TimePickerView.3
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public final boolean onDoubleTap(MotionEvent motionEvent) {
                boolean onDoubleTap = super.onDoubleTap(motionEvent);
                if (TimePickerView.this.e != null) {
                    TimePickerView.this.e.a();
                }
                return onDoubleTap;
            }
        });
        View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: com.google.android.material.timepicker.TimePickerView.4
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                if (((Checkable) view).isChecked()) {
                    return gestureDetector.onTouchEvent(motionEvent);
                }
                return false;
            }
        };
        chip.setOnTouchListener(onTouchListener);
        chip2.setOnTouchListener(onTouchListener);
        chip.setTag(a.f.selection_type, 12);
        chip2.setTag(a.f.selection_type, 10);
        chip.setOnClickListener(onClickListener);
        chip2.setOnClickListener(onClickListener);
    }

    private void a() {
        if (this.f30964b.getVisibility() == 0) {
            androidx.constraintlayout.widget.c cVar = new androidx.constraintlayout.widget.c();
            cVar.a(this);
            int i = 1;
            if (v.f(this) == 0) {
                i = 2;
            }
            cVar.a(a.f.material_clock_display, i);
            cVar.b(this);
        }
    }

    public final void a(float f, boolean z) {
        this.f30963a.a(f, z);
    }

    public final void a(int i) {
        boolean z = true;
        this.f.setChecked(i == 12);
        Chip chip = this.g;
        if (i != 10) {
            z = false;
        }
        chip.setChecked(z);
    }

    public final void a(int i, int i2, int i3) {
        this.f30964b.a(i == 1 ? a.f.material_clock_period_pm_button : a.f.material_clock_period_am_button);
        Locale locale = getResources().getConfiguration().locale;
        String format = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i3));
        String format2 = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i2));
        this.f.setText(format);
        this.g.setText(format2);
    }

    public final void a(androidx.core.view.a aVar) {
        v.a(this.g, aVar);
    }

    public final void a(boolean z) {
        this.f30963a.f30953a = z;
    }

    public final void a(String[] strArr, int i) {
        this.h.a(strArr, i);
    }

    public final void b(androidx.core.view.a aVar) {
        v.a(this.f, aVar);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        a();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (view == this && i == 0) {
            a();
        }
    }
}
