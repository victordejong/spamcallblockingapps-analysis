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
import p078c.p084c.p085a.p096b.C1892h;
import p078c.p084c.p085a.p096b.C1894j;
/* renamed from: com.google.android.material.datepicker.e */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/e.class */
class C8105e extends BaseAdapter {

    /* renamed from: d */
    private static final int f36649d;

    /* renamed from: e */
    private final Calendar f36650e;

    /* renamed from: f */
    private final int f36651f;

    /* renamed from: g */
    private final int f36652g;

    static {
        f36649d = Build.VERSION.SDK_INT >= 26 ? 4 : 1;
    }

    public C8105e() {
        Calendar m4839q = C8123o.m4839q();
        this.f36650e = m4839q;
        this.f36651f = m4839q.getMaximum(7);
        this.f36652g = m4839q.getFirstDayOfWeek();
    }

    /* renamed from: b */
    private int m4914b(int i) {
        int i2 = i + this.f36652g;
        int i3 = this.f36651f;
        int i4 = i2;
        if (i2 > i3) {
            i4 = i2 - i3;
        }
        return i4;
    }

    /* renamed from: a */
    public Integer getItem(int i) {
        if (i >= this.f36651f) {
            return null;
        }
        return Integer.valueOf(m4914b(i));
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f36651f;
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
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(C1892h.mtrl_calendar_day_of_week, viewGroup, false);
        }
        this.f36650e.set(7, m4914b(i));
        textView.setText(this.f36650e.getDisplayName(7, f36649d, textView.getResources().getConfiguration().locale));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(C1894j.mtrl_picker_day_of_week_column_header), this.f36650e.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }
}
