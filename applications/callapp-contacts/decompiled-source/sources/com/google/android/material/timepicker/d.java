package com.google.android.material.timepicker;

import android.os.Build;
import android.view.accessibility.AccessibilityManager;
import androidx.core.content.b;
import com.google.android.material.a;
import com.google.android.material.timepicker.ClockHandView;
import com.google.android.material.timepicker.TimePickerView;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/d.class */
final class d implements ClockHandView.a, ClockHandView.b, TimePickerView.b, TimePickerView.c, e {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f30980a = {"12", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"};

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f30981b = {"00", "2", "4", "6", "8", "10", "12", "14", "16", "18", "20", "22"};

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f30982c = {"00", "5", "10", "15", "20", "25", "30", "35", "40", "45", "50", "55"};

    /* renamed from: d  reason: collision with root package name */
    private TimePickerView f30983d;
    private TimeModel e;
    private float f;
    private float g;
    private boolean h = false;

    public d(TimePickerView timePickerView, TimeModel timeModel) {
        this.f30983d = timePickerView;
        this.e = timeModel;
        if (timeModel.format == 0) {
            this.f30983d.f30964b.setVisibility(0);
        }
        this.f30983d.f30963a.a(this);
        this.f30983d.f30966d = this;
        this.f30983d.f30965c = this;
        this.f30983d.f30963a.f30956d = this;
        a(f30980a, TimeModel.NUMBER_FORMAT);
        a(f30981b, TimeModel.NUMBER_FORMAT);
        a(f30982c, TimeModel.ZERO_LEADING_NUMBER_FORMAT);
        a();
    }

    private void a(int i, int i2) {
        if (this.e.minute != i2 || this.e.hour != i) {
            this.f30983d.performHapticFeedback(Build.VERSION.SDK_INT >= 21 ? 4 : 1);
        }
    }

    private void a(int i, boolean z) {
        boolean z2 = i == 12;
        this.f30983d.a(z2);
        this.e.selection = i;
        this.f30983d.a(z2 ? f30982c : d(), z2 ? a.j.material_minute_suffix : a.j.material_hour_suffix);
        this.f30983d.a(z2 ? this.f : this.g, z);
        this.f30983d.a(i);
        TimePickerView timePickerView = this.f30983d;
        timePickerView.a((androidx.core.view.a) new a(timePickerView.getContext(), a.j.material_hour_selection));
        TimePickerView timePickerView2 = this.f30983d;
        timePickerView2.b(new a(timePickerView2.getContext(), a.j.material_minute_selection));
    }

    private void a(String[] strArr, String str) {
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = TimeModel.formatText(this.f30983d.getResources(), strArr[i], str);
        }
    }

    private String[] d() {
        return this.e.format == 1 ? f30981b : f30980a;
    }

    private int e() {
        return this.e.format == 1 ? 15 : 30;
    }

    private void f() {
        this.f30983d.a(this.e.period, this.e.getHourForDisplay(), this.e.minute);
    }

    @Override // com.google.android.material.timepicker.e
    public final void a() {
        this.g = this.e.getHourForDisplay() * e();
        this.f = this.e.minute * 6;
        a(this.e.selection, false);
        f();
    }

    @Override // com.google.android.material.timepicker.ClockHandView.b
    public final void a(float f, boolean z) {
        if (!this.h) {
            int i = this.e.hour;
            int i2 = this.e.minute;
            int round = Math.round(f);
            if (this.e.selection == 12) {
                this.e.setMinute((round + 3) / 6);
                this.f = (float) Math.floor(this.e.minute * 6);
            } else {
                this.e.setHour((round + (e() / 2)) / e());
                this.g = this.e.getHourForDisplay() * e();
            }
            if (!z) {
                f();
                a(i, i2);
            }
        }
    }

    @Override // com.google.android.material.timepicker.TimePickerView.c
    public final void a(int i) {
        a(i, true);
    }

    @Override // com.google.android.material.timepicker.e
    public final void b() {
        this.f30983d.setVisibility(0);
    }

    @Override // com.google.android.material.timepicker.ClockHandView.a
    public final void b(float f, boolean z) {
        this.h = true;
        int i = this.e.minute;
        int i2 = this.e.hour;
        if (this.e.selection == 10) {
            this.f30983d.a(this.g, false);
            if (!((AccessibilityManager) b.a(this.f30983d.getContext(), AccessibilityManager.class)).isTouchExplorationEnabled()) {
                a(12, true);
            }
        } else {
            int round = Math.round(f);
            if (!z) {
                this.e.setMinute(((round + 15) / 30) * 5);
                this.f = this.e.minute * 6;
            }
            this.f30983d.a(this.f, z);
        }
        this.h = false;
        f();
        a(i2, i);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.b
    public final void b(int i) {
        this.e.setPeriod(i);
    }

    @Override // com.google.android.material.timepicker.e
    public final void c() {
        this.f30983d.setVisibility(8);
    }
}
