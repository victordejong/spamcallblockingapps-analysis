package com.google.android.material.datepicker;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.Calendar;
import java.util.Locale;
/* renamed from: com.google.android.material.datepicker.f */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/f.class */
public class C1739f extends BaseAdapter {

    /* renamed from: d */
    public static final int f6537d;

    /* renamed from: a */
    public final Calendar f6538a;

    /* renamed from: b */
    public final int f6539b;

    /* renamed from: c */
    public final int f6540c;

    static {
        f6537d = Build.VERSION.SDK_INT >= 26 ? 4 : 1;
    }

    public C1739f() {
        Calendar m4638e = C1730a0.m4638e();
        this.f6538a = m4638e;
        this.f6539b = m4638e.getMaximum(7);
        this.f6540c = m4638e.getFirstDayOfWeek();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f6539b;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        Integer num;
        int i2 = this.f6539b;
        if (i >= i2) {
            num = null;
        } else {
            int i3 = i + this.f6540c;
            int i4 = i3;
            if (i3 > i2) {
                i4 = i3 - i2;
            }
            num = Integer.valueOf(i4);
        }
        return num;
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
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(2131493029, viewGroup, false);
        }
        Calendar calendar = this.f6538a;
        int i2 = i + this.f6540c;
        int i3 = this.f6539b;
        int i4 = i2;
        if (i2 > i3) {
            i4 = i2 - i3;
        }
        calendar.set(7, i4);
        textView.setText(this.f6538a.getDisplayName(7, f6537d, textView.getResources().getConfiguration().locale));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(2131820895), this.f6538a.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }
}
