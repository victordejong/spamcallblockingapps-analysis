package com.google.android.material.timepicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
import androidx.constraintlayout.widget.C0515b;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;
import p020b.p041h.p050l.C1679w;
import p078c.p084c.p085a.p096b.C1890f;
import p078c.p084c.p085a.p096b.C1892h;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/timepicker/TimePickerView.class */
public class TimePickerView extends ConstraintLayout {

    /* renamed from: A */
    private final Chip f37598A;

    /* renamed from: B */
    private final Chip f37599B;

    /* renamed from: C */
    private final ClockHandView f37600C;

    /* renamed from: D */
    private final ClockFaceView f37601D;

    /* renamed from: E */
    private final MaterialButtonToggleGroup f37602E;

    /* renamed from: F */
    private final View.OnClickListener f37603F;

    /* renamed from: G */
    private AbstractC8344f f37604G;

    /* renamed from: H */
    private AbstractC8345g f37605H;

    /* renamed from: I */
    private AbstractC8343e f37606I;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.timepicker.TimePickerView$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/timepicker/TimePickerView$a.class */
    public class View$OnClickListenerC8339a implements View.OnClickListener {
        View$OnClickListenerC8339a() {
            TimePickerView.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (TimePickerView.this.f37605H != null) {
                TimePickerView.this.f37605H.m3833a(((Integer) view.getTag(C1890f.selection_type)).intValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.timepicker.TimePickerView$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/timepicker/TimePickerView$b.class */
    public class C8340b implements MaterialButtonToggleGroup.AbstractC8048e {
        C8340b() {
            TimePickerView.this = r4;
        }

        @Override // com.google.android.material.button.MaterialButtonToggleGroup.AbstractC8048e
        /* renamed from: a */
        public void mo3836a(MaterialButtonToggleGroup materialButtonToggleGroup, int i, boolean z) {
            int i2 = i == C1890f.material_clock_period_pm_button ? 1 : 0;
            if (TimePickerView.this.f37604G == null || !z) {
                return;
            }
            TimePickerView.this.f37604G.m3834a(i2);
        }
    }

    /* renamed from: com.google.android.material.timepicker.TimePickerView$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/timepicker/TimePickerView$c.class */
    public class C8341c extends GestureDetector.SimpleOnGestureListener {
        C8341c() {
            TimePickerView.this = r4;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            boolean onDoubleTap = super.onDoubleTap(motionEvent);
            if (TimePickerView.this.f37606I != null) {
                TimePickerView.this.f37606I.m3835a();
            }
            return onDoubleTap;
        }
    }

    /* renamed from: com.google.android.material.timepicker.TimePickerView$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/timepicker/TimePickerView$d.class */
    public class View$OnTouchListenerC8342d implements View.OnTouchListener {

        /* renamed from: d */
        final /* synthetic */ GestureDetector f37610d;

        View$OnTouchListenerC8342d(GestureDetector gestureDetector) {
            TimePickerView.this = r4;
            this.f37610d = gestureDetector;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (((Checkable) view).isChecked()) {
                return this.f37610d.onTouchEvent(motionEvent);
            }
            return false;
        }
    }

    /* renamed from: com.google.android.material.timepicker.TimePickerView$e */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/timepicker/TimePickerView$e.class */
    interface AbstractC8343e {
        /* renamed from: a */
        void m3835a();
    }

    /* renamed from: com.google.android.material.timepicker.TimePickerView$f */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/timepicker/TimePickerView$f.class */
    interface AbstractC8344f {
        /* renamed from: a */
        void m3834a(int i);
    }

    /* renamed from: com.google.android.material.timepicker.TimePickerView$g */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/timepicker/TimePickerView$g.class */
    interface AbstractC8345g {
        /* renamed from: a */
        void m3833a(int i);
    }

    public TimePickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TimePickerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f37603F = new View$OnClickListenerC8339a();
        LayoutInflater.from(context).inflate(C1892h.material_timepicker, this);
        this.f37601D = (ClockFaceView) findViewById(C1890f.material_clock_face);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(C1890f.material_clock_period_toggle);
        this.f37602E = materialButtonToggleGroup;
        materialButtonToggleGroup.m5373g(new C8340b());
        this.f37598A = (Chip) findViewById(C1890f.material_minute_tv);
        this.f37599B = (Chip) findViewById(C1890f.material_hour_tv);
        this.f37600C = (ClockHandView) findViewById(C1890f.material_clock_hand);
        m3839D();
        m3840C();
    }

    /* renamed from: C */
    private void m3840C() {
        Chip chip = this.f37598A;
        int i = C1890f.selection_type;
        chip.setTag(i, 12);
        this.f37599B.setTag(i, 10);
        this.f37598A.setOnClickListener(this.f37603F);
        this.f37599B.setOnClickListener(this.f37603F);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: D */
    private void m3839D() {
        View$OnTouchListenerC8342d view$OnTouchListenerC8342d = new View$OnTouchListenerC8342d(new GestureDetector(getContext(), new C8341c()));
        this.f37598A.setOnTouchListener(view$OnTouchListenerC8342d);
        this.f37599B.setOnTouchListener(view$OnTouchListenerC8342d);
    }

    /* renamed from: E */
    private void m3838E() {
        if (this.f37602E.getVisibility() == 0) {
            C0515b c0515b = new C0515b();
            c0515b.m33638j(this);
            int i = 1;
            if (C1679w.m29346C(this) == 0) {
                i = 2;
            }
            c0515b.m33640h(C1890f.material_clock_display, i);
            c0515b.m33644d(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        m3838E();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (view == this && i == 0) {
            m3838E();
        }
    }
}
