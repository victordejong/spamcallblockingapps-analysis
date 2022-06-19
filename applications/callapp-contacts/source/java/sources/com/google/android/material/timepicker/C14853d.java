package com.google.android.material.timepicker;

import android.os.Build;
import android.view.accessibility.AccessibilityManager;
import androidx.core.content.C0790b;
import androidx.core.view.C0865a;
import com.google.android.material.C14376a;
import com.google.android.material.timepicker.ClockHandView;
import com.google.android.material.timepicker.TimePickerView;
/* renamed from: com.google.android.material.timepicker.d */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/d.class */
final class C14853d implements ClockHandView.AbstractC14835a, ClockHandView.AbstractC14836b, TimePickerView.AbstractC14844b, TimePickerView.AbstractC14845c, AbstractC14854e {

    /* renamed from: a */
    private static final String[] f54239a = {"12", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"};

    /* renamed from: b */
    private static final String[] f54240b = {"00", "2", "4", "6", "8", "10", "12", "14", "16", "18", "20", "22"};

    /* renamed from: c */
    private static final String[] f54241c = {"00", "5", "10", "15", "20", "25", "30", "35", "40", "45", "50", "55"};

    /* renamed from: d */
    private TimePickerView f54242d;

    /* renamed from: e */
    private TimeModel f54243e;

    /* renamed from: f */
    private float f54244f;

    /* renamed from: g */
    private float f54245g;

    /* renamed from: h */
    private boolean f54246h = false;

    public C14853d(TimePickerView timePickerView, TimeModel timeModel) {
        this.f54242d = timePickerView;
        this.f54243e = timeModel;
        if (timeModel.format == 0) {
            this.f54242d.f54203b.setVisibility(0);
        }
        this.f54242d.f54202a.m9905a(this);
        this.f54242d.f54205d = this;
        this.f54242d.f54204c = this;
        this.f54242d.f54202a.f54182d = this;
        m9870a(f54239a, TimeModel.NUMBER_FORMAT);
        m9870a(f54240b, TimeModel.NUMBER_FORMAT);
        m9870a(f54241c, TimeModel.ZERO_LEADING_NUMBER_FORMAT);
        mo9863a();
    }

    /* renamed from: a */
    private void m9872a(int i, int i2) {
        if (this.f54243e.minute == i2 && this.f54243e.hour == i) {
            return;
        }
        this.f54242d.performHapticFeedback(Build.VERSION.SDK_INT >= 21 ? 4 : 1);
    }

    /* renamed from: a */
    private void m9871a(int i, boolean z) {
        boolean z2 = i == 12;
        this.f54242d.m9891a(z2);
        this.f54243e.selection = i;
        this.f54242d.m9890a(z2 ? f54241c : m9867d(), z2 ? C14376a.C14386j.material_minute_suffix : C14376a.C14386j.material_hour_suffix);
        this.f54242d.m9896a(z2 ? this.f54244f : this.f54245g, z);
        this.f54242d.m9895a(i);
        TimePickerView timePickerView = this.f54242d;
        timePickerView.m9893a((C0865a) new C14846a(timePickerView.getContext(), C14376a.C14386j.material_hour_selection));
        TimePickerView timePickerView2 = this.f54242d;
        timePickerView2.m9889b(new C14846a(timePickerView2.getContext(), C14376a.C14386j.material_minute_selection));
    }

    /* renamed from: a */
    private void m9870a(String[] strArr, String str) {
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = TimeModel.formatText(this.f54242d.getResources(), strArr[i], str);
        }
    }

    /* renamed from: d */
    private String[] m9867d() {
        return this.f54243e.format == 1 ? f54240b : f54239a;
    }

    /* renamed from: e */
    private int m9866e() {
        return this.f54243e.format == 1 ? 15 : 30;
    }

    /* renamed from: f */
    private void m9865f() {
        this.f54242d.m9894a(this.f54243e.period, this.f54243e.getHourForDisplay(), this.f54243e.minute);
    }

    @Override // com.google.android.material.timepicker.AbstractC14854e
    /* renamed from: a */
    public final void mo9863a() {
        this.f54245g = this.f54243e.getHourForDisplay() * m9866e();
        this.f54244f = this.f54243e.minute * 6;
        m9871a(this.f54243e.selection, false);
        m9865f();
    }

    @Override // com.google.android.material.timepicker.ClockHandView.AbstractC14836b
    /* renamed from: a */
    public final void mo9873a(float f, boolean z) {
        if (this.f54246h) {
            return;
        }
        int i = this.f54243e.hour;
        int i2 = this.f54243e.minute;
        int round = Math.round(f);
        if (this.f54243e.selection == 12) {
            this.f54243e.setMinute((round + 3) / 6);
            this.f54244f = (float) Math.floor(this.f54243e.minute * 6);
        } else {
            this.f54243e.setHour((round + (m9866e() / 2)) / m9866e());
            this.f54245g = this.f54243e.getHourForDisplay() * m9866e();
        }
        if (z) {
            return;
        }
        m9865f();
        m9872a(i, i2);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.AbstractC14845c
    /* renamed from: a */
    public final void mo9862a(int i) {
        m9871a(i, true);
    }

    @Override // com.google.android.material.timepicker.AbstractC14854e
    /* renamed from: b */
    public final void mo9859b() {
        this.f54242d.setVisibility(0);
    }

    @Override // com.google.android.material.timepicker.ClockHandView.AbstractC14835a
    /* renamed from: b */
    public final void mo9869b(float f, boolean z) {
        this.f54246h = true;
        int i = this.f54243e.minute;
        int i2 = this.f54243e.hour;
        if (this.f54243e.selection == 10) {
            this.f54242d.m9896a(this.f54245g, false);
            if (!((AccessibilityManager) C0790b.m44499a(this.f54242d.getContext(), AccessibilityManager.class)).isTouchExplorationEnabled()) {
                m9871a(12, true);
            }
        } else {
            int round = Math.round(f);
            if (!z) {
                this.f54243e.setMinute(((round + 15) / 30) * 5);
                this.f54244f = this.f54243e.minute * 6;
            }
            this.f54242d.m9896a(this.f54244f, z);
        }
        this.f54246h = false;
        m9865f();
        m9872a(i2, i);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.AbstractC14844b
    /* renamed from: b */
    public final void mo9868b(int i) {
        this.f54243e.setPeriod(i);
    }

    @Override // com.google.android.material.timepicker.AbstractC14854e
    /* renamed from: c */
    public final void mo9858c() {
        this.f54242d.setVisibility(8);
    }
}
