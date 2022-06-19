package com.google.android.material.timepicker;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.C0309b;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;
import java.util.Objects;
import java.util.WeakHashMap;
import p163m0.C3589v;
import p163m0.C3611y;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/material/timepicker/TimePickerView.class */
public class TimePickerView extends ConstraintLayout {

    /* renamed from: w */
    public static final /* synthetic */ int f6926w = 0;

    /* renamed from: s */
    public final Chip f6927s;

    /* renamed from: t */
    public final Chip f6928t;

    /* renamed from: u */
    public final MaterialButtonToggleGroup f6929u;

    /* renamed from: v */
    public final View.OnClickListener f6930v;

    /* renamed from: com.google.android.material.timepicker.TimePickerView$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/timepicker/TimePickerView$a.class */
    public class View$OnClickListenerC1835a implements View.OnClickListener {
        public View$OnClickListenerC1835a() {
            TimePickerView.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TimePickerView timePickerView = TimePickerView.this;
            int i = TimePickerView.f6926w;
            Objects.requireNonNull(timePickerView);
        }
    }

    public TimePickerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        View$OnClickListenerC1835a view$OnClickListenerC1835a = new View$OnClickListenerC1835a();
        this.f6930v = view$OnClickListenerC1835a;
        LayoutInflater.from(context).inflate(2131492982, this);
        ClockFaceView clockFaceView = (ClockFaceView) findViewById(2131296750);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(2131296754);
        this.f6929u = materialButtonToggleGroup;
        materialButtonToggleGroup.f6390d.add(new C1840d(this));
        Chip chip = (Chip) findViewById(2131296759);
        this.f6927s = chip;
        Chip chip2 = (Chip) findViewById(2131296756);
        this.f6928t = chip2;
        ClockHandView clockHandView = (ClockHandView) findViewById(2131296751);
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3596g.m2055f(chip, 2);
        C3589v.C3596g.m2055f(chip2, 2);
        View$OnTouchListenerC1842f view$OnTouchListenerC1842f = new View$OnTouchListenerC1842f(this, new GestureDetector(getContext(), new C1841e(this)));
        chip.setOnTouchListener(view$OnTouchListenerC1842f);
        chip2.setOnTouchListener(view$OnTouchListenerC1842f);
        chip.setTag(2131297005, 12);
        chip2.setTag(2131297005, 10);
        chip.setOnClickListener(view$OnClickListenerC1835a);
        chip2.setOnClickListener(view$OnClickListenerC1835a);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m4493s();
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (view == this && i == 0) {
            m4493s();
        }
    }

    /* renamed from: s */
    public final void m4493s() {
        C0309b.C0310a c0310a;
        if (this.f6929u.getVisibility() == 0) {
            C0309b c0309b = new C0309b();
            c0309b.m8357c(this);
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            boolean z = C3589v.C3594e.m2071d(this) == 0 ? true : true;
            if (c0309b.f1291c.containsKey(2131296749) && (c0310a = c0309b.f1291c.get(2131296749)) != null) {
                switch (z) {
                    case true:
                        C0309b.C0312b c0312b = c0310a.f1295d;
                        c0312b.f1356j = -1;
                        c0312b.f1354i = -1;
                        c0312b.f1318G = -1;
                        c0312b.f1325N = Integer.MIN_VALUE;
                        break;
                    case true:
                        C0309b.C0312b c0312b2 = c0310a.f1295d;
                        c0312b2.f1360l = -1;
                        c0312b2.f1358k = -1;
                        c0312b2.f1319H = -1;
                        c0312b2.f1327P = Integer.MIN_VALUE;
                        break;
                    case true:
                        C0309b.C0312b c0312b3 = c0310a.f1295d;
                        c0312b3.f1364n = -1;
                        c0312b3.f1362m = -1;
                        c0312b3.f1320I = 0;
                        c0312b3.f1326O = Integer.MIN_VALUE;
                        break;
                    case true:
                        C0309b.C0312b c0312b4 = c0310a.f1295d;
                        c0312b4.f1366o = -1;
                        c0312b4.f1368p = -1;
                        c0312b4.f1321J = 0;
                        c0312b4.f1328Q = Integer.MIN_VALUE;
                        break;
                    case true:
                        C0309b.C0312b c0312b5 = c0310a.f1295d;
                        c0312b5.f1370q = -1;
                        c0312b5.f1371r = -1;
                        c0312b5.f1372s = -1;
                        c0312b5.f1324M = 0;
                        c0312b5.f1331T = Integer.MIN_VALUE;
                        break;
                    case true:
                        C0309b.C0312b c0312b6 = c0310a.f1295d;
                        c0312b6.f1373t = -1;
                        c0312b6.f1374u = -1;
                        c0312b6.f1323L = 0;
                        c0312b6.f1330S = Integer.MIN_VALUE;
                        break;
                    case true:
                        C0309b.C0312b c0312b7 = c0310a.f1295d;
                        c0312b7.f1375v = -1;
                        c0312b7.f1376w = -1;
                        c0312b7.f1322K = 0;
                        c0312b7.f1329R = Integer.MIN_VALUE;
                        break;
                    case true:
                        C0309b.C0312b c0312b8 = c0310a.f1295d;
                        c0312b8.f1314C = -1.0f;
                        c0312b8.f1313B = -1;
                        c0312b8.f1312A = -1;
                        break;
                    default:
                        throw new IllegalArgumentException("unknown constraint");
                }
            }
            c0309b.m8358b(this, true);
            setConstraintSet(null);
            requestLayout();
        }
    }
}
