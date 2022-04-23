package com.google.android.material.datepicker;

import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.material.a;
import java.util.Calendar;
import java.util.Locale;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/e.class */
final class e extends BaseAdapter {

    /* renamed from: d  reason: collision with root package name */
    private static final int f30435d;

    /* renamed from: a  reason: collision with root package name */
    private final Calendar f30436a;

    /* renamed from: b  reason: collision with root package name */
    private final int f30437b;

    /* renamed from: c  reason: collision with root package name */
    private final int f30438c;

    static {
        f30435d = Build.VERSION.SDK_INT >= 26 ? 4 : 1;
    }

    public e() {
        Calendar b2 = o.b();
        this.f30436a = b2;
        this.f30437b = b2.getMaximum(7);
        this.f30438c = b2.getFirstDayOfWeek();
    }

    private int a(int i) {
        int i2 = i + this.f30438c;
        int i3 = this.f30437b;
        int i4 = i2;
        if (i2 > i3) {
            i4 = i2 - i3;
        }
        return i4;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f30437b;
    }

    @Override // android.widget.Adapter
    public final /* synthetic */ Object getItem(int i) {
        if (i >= this.f30437b) {
            return null;
        }
        return Integer.valueOf(a(i));
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(a.h.mtrl_calendar_day_of_week, viewGroup, false);
        }
        this.f30436a.set(7, a(i));
        textView.setText(this.f30436a.getDisplayName(7, f30435d, textView.getResources().getConfiguration().locale));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(a.j.mtrl_picker_day_of_week_column_header), this.f30436a.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }
}
