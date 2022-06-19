package com.google.android.material.datepicker;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.material.C4492a;
import java.util.Calendar;
import java.util.Locale;
/* renamed from: com.google.android.material.datepicker.g */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/g.class */
class C4604g extends BaseAdapter {

    /* renamed from: d */
    private static final int f20055d;

    /* renamed from: a */
    private final Calendar f20056a = C4636r.m3106b();

    /* renamed from: b */
    private final int f20057b = this.f20056a.getMaximum(7);

    /* renamed from: c */
    private final int f20058c = this.f20056a.getFirstDayOfWeek();

    static {
        f20055d = Build.VERSION.SDK_INT >= 26 ? 4 : 1;
    }

    /* renamed from: b */
    private int m3198b(int i) {
        int i2 = this.f20058c + i;
        int i3 = i2;
        if (i2 > this.f20057b) {
            i3 = i2 - this.f20057b;
        }
        return i3;
    }

    /* renamed from: a */
    public Integer getItem(int i) {
        return i >= this.f20057b ? null : Integer.valueOf(m3198b(i));
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f20057b;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    @SuppressLint({"WrongConstant"})
    public View getView(int i, View view, ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(C4492a.C4500h.mtrl_calendar_day_of_week, viewGroup, false);
        }
        this.f20056a.set(7, m3198b(i));
        textView.setText(this.f20056a.getDisplayName(7, f20055d, Locale.getDefault()));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(C4492a.C4502j.mtrl_picker_day_of_week_column_header), this.f20056a.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }
}
