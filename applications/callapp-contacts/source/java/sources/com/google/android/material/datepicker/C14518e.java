package com.google.android.material.datepicker;

import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.material.C14376a;
import java.util.Calendar;
import java.util.Locale;
/* renamed from: com.google.android.material.datepicker.e */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/e.class */
final class C14518e extends BaseAdapter {

    /* renamed from: d */
    private static final int f52976d;

    /* renamed from: a */
    private final Calendar f52977a;

    /* renamed from: b */
    private final int f52978b;

    /* renamed from: c */
    private final int f52979c;

    static {
        f52976d = Build.VERSION.SDK_INT >= 26 ? 4 : 1;
    }

    public C14518e() {
        Calendar m10789b = C14548o.m10789b();
        this.f52977a = m10789b;
        this.f52978b = m10789b.getMaximum(7);
        this.f52979c = m10789b.getFirstDayOfWeek();
    }

    /* renamed from: a */
    private int m10848a(int i) {
        int i2 = i + this.f52979c;
        int i3 = this.f52978b;
        int i4 = i2;
        if (i2 > i3) {
            i4 = i2 - i3;
        }
        return i4;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f52978b;
    }

    @Override // android.widget.Adapter
    public final /* synthetic */ Object getItem(int i) {
        if (i >= this.f52978b) {
            return null;
        }
        return Integer.valueOf(m10848a(i));
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(C14376a.C14384h.mtrl_calendar_day_of_week, viewGroup, false);
        }
        this.f52977a.set(7, m10848a(i));
        textView.setText(this.f52977a.getDisplayName(7, f52976d, textView.getResources().getConfiguration().locale));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(C14376a.C14386j.mtrl_picker_day_of_week_column_header), this.f52977a.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }
}
