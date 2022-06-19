package com.google.android.material.timepicker;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
import androidx.constraintlayout.widget.C0680c;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.C0865a;
import androidx.core.view.C0926v;
import com.google.android.material.C14376a;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/TimePickerView.class */
public class TimePickerView extends ConstraintLayout {

    /* renamed from: a */
    final ClockHandView f54202a;

    /* renamed from: b */
    final MaterialButtonToggleGroup f54203b;

    /* renamed from: c */
    AbstractC14844b f54204c;

    /* renamed from: d */
    AbstractC14845c f54205d;

    /* renamed from: e */
    AbstractC14843a f54206e;

    /* renamed from: f */
    private final Chip f54207f;

    /* renamed from: g */
    private final Chip f54208g;

    /* renamed from: h */
    private final ClockFaceView f54209h;

    /* renamed from: i */
    private final View.OnClickListener f54210i;

    /* renamed from: com.google.android.material.timepicker.TimePickerView$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/TimePickerView$a.class */
    interface AbstractC14843a {
        /* renamed from: a */
        void mo9874a();
    }

    /* renamed from: com.google.android.material.timepicker.TimePickerView$b */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/TimePickerView$b.class */
    interface AbstractC14844b {
        /* renamed from: b */
        void mo9868b(int i);
    }

    /* renamed from: com.google.android.material.timepicker.TimePickerView$c */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/TimePickerView$c.class */
    interface AbstractC14845c {
        /* renamed from: a */
        void mo9862a(int i);
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
                if (TimePickerView.this.f54205d != null) {
                    TimePickerView.this.f54205d.mo9862a(((Integer) view.getTag(C14376a.C14382f.selection_type)).intValue());
                }
            }
        };
        this.f54210i = onClickListener;
        LayoutInflater.from(context).inflate(C14376a.C14384h.material_timepicker, this);
        this.f54209h = (ClockFaceView) findViewById(C14376a.C14382f.material_clock_face);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(C14376a.C14382f.material_clock_period_toggle);
        this.f54203b = materialButtonToggleGroup;
        materialButtonToggleGroup.m11054a(new MaterialButtonToggleGroup.AbstractC14470c() { // from class: com.google.android.material.timepicker.TimePickerView.2
            @Override // com.google.android.material.button.MaterialButtonToggleGroup.AbstractC14470c
            /* renamed from: a */
            public final void mo9853a(int i2, boolean z) {
                int i3 = i2 == C14376a.C14382f.material_clock_period_pm_button ? 1 : 0;
                if (TimePickerView.this.f54204c == null || !z) {
                    return;
                }
                TimePickerView.this.f54204c.mo9868b(i3);
            }
        });
        Chip chip = (Chip) findViewById(C14376a.C14382f.material_minute_tv);
        this.f54207f = chip;
        Chip chip2 = (Chip) findViewById(C14376a.C14382f.material_hour_tv);
        this.f54208g = chip2;
        this.f54202a = (ClockHandView) findViewById(C14376a.C14382f.material_clock_hand);
        final GestureDetector gestureDetector = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.google.android.material.timepicker.TimePickerView.3
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public final boolean onDoubleTap(MotionEvent motionEvent) {
                boolean onDoubleTap = super.onDoubleTap(motionEvent);
                if (TimePickerView.this.f54206e != null) {
                    TimePickerView.this.f54206e.mo9874a();
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
        chip.setTag(C14376a.C14382f.selection_type, 12);
        chip2.setTag(C14376a.C14382f.selection_type, 10);
        chip.setOnClickListener(onClickListener);
        chip2.setOnClickListener(onClickListener);
    }

    /* renamed from: a */
    private void m9897a() {
        if (this.f54203b.getVisibility() == 0) {
            C0680c c0680c = new C0680c();
            c0680c.m44701a(this);
            int i = 1;
            if (C0926v.m44097f(this) == 0) {
                i = 2;
            }
            c0680c.m44712a(C14376a.C14382f.material_clock_display, i);
            c0680c.m44693b(this);
        }
    }

    /* renamed from: a */
    public final void m9896a(float f, boolean z) {
        this.f54202a.m9906a(f, z);
    }

    /* renamed from: a */
    public final void m9895a(int i) {
        this.f54207f.setChecked(i == 12);
        this.f54208g.setChecked(i == 10);
    }

    /* renamed from: a */
    public final void m9894a(int i, int i2, int i3) {
        this.f54203b.m11058a(i == 1 ? C14376a.C14382f.material_clock_period_pm_button : C14376a.C14382f.material_clock_period_am_button);
        Locale locale = getResources().getConfiguration().locale;
        String format = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i3));
        String format2 = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i2));
        this.f54207f.setText(format);
        this.f54208g.setText(format2);
    }

    /* renamed from: a */
    public final void m9893a(C0865a c0865a) {
        C0926v.m44123a(this.f54208g, c0865a);
    }

    /* renamed from: a */
    public final void m9891a(boolean z) {
        this.f54202a.f54179a = z;
    }

    /* renamed from: a */
    public final void m9890a(String[] strArr, int i) {
        this.f54209h.m9913a(strArr, i);
    }

    /* renamed from: b */
    public final void m9889b(C0865a c0865a) {
        C0926v.m44123a(this.f54207f, c0865a);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        m9897a();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (view == this && i == 0) {
            m9897a();
        }
    }
}
