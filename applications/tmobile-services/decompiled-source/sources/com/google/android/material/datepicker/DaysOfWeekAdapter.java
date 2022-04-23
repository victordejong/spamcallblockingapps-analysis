package com.google.android.material.datepicker;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.C1027R;
import java.util.Calendar;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/DaysOfWeekAdapter.class */
class DaysOfWeekAdapter extends BaseAdapter {

    /* renamed from: i */
    private static final int f10523i;
    @NonNull

    /* renamed from: f */
    private final Calendar f10524f;

    /* renamed from: g */
    private final int f10525g;

    /* renamed from: h */
    private final int f10526h;

    static {
        f10523i = Build.VERSION.SDK_INT >= 26 ? 4 : 1;
    }

    public DaysOfWeekAdapter() {
        Calendar r = UtcDates.m9836r();
        this.f10524f = r;
        this.f10525g = r.getMaximum(7);
        this.f10526h = this.f10524f.getFirstDayOfWeek();
    }

    /* renamed from: b */
    private int m9968b(int i) {
        int i2 = i + this.f10526h;
        int i3 = this.f10525g;
        int i4 = i2;
        if (i2 > i3) {
            i4 = i2 - i3;
        }
        return i4;
    }

    @Nullable
    /* renamed from: a */
    public Integer getItem(int i) {
        if (i >= this.f10525g) {
            return null;
        }
        return Integer.valueOf(m9968b(i));
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f10525g;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    @Nullable
    @SuppressLint({"WrongConstant"})
    public View getView(int i, @Nullable View view, @NonNull ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(C1027R.layout.mtrl_calendar_day_of_week, viewGroup, false);
        }
        this.f10524f.set(7, m9968b(i));
        textView.setText(this.f10524f.getDisplayName(7, f10523i, Locale.getDefault()));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(C1027R.string.mtrl_picker_day_of_week_column_header), this.f10524f.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }
}
