package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.material.C14376a;
import com.google.android.material.timepicker.TimeModel;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
/* renamed from: com.google.android.material.datepicker.i */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/i.class */
public class C14539i extends BaseAdapter {

    /* renamed from: a */
    static final int f53043a = C14548o.m10789b().getMaximum(4);

    /* renamed from: b */
    final Month f53044b;

    /* renamed from: c */
    final DateSelector<?> f53045c;

    /* renamed from: d */
    Collection<Long> f53046d;

    /* renamed from: e */
    C14513b f53047e;

    /* renamed from: f */
    final CalendarConstraints f53048f;

    public C14539i(Month month, DateSelector<?> dateSelector, CalendarConstraints calendarConstraints) {
        this.f53044b = month;
        this.f53045c = dateSelector;
        this.f53048f = calendarConstraints;
        this.f53046d = dateSelector.getSelectedDays();
    }

    /* renamed from: a */
    private void m10810a(TextView textView, long j) {
        C14512a c14512a;
        if (textView == null) {
            return;
        }
        if (this.f53048f.getDateValidator().isValid(j)) {
            textView.setEnabled(true);
            c14512a = m10811a(j) ? this.f53047e.f52959b : C14548o.m10797a().getTimeInMillis() == j ? this.f53047e.f52960c : this.f53047e.f52958a;
        } else {
            textView.setEnabled(false);
            c14512a = this.f53047e.f52964g;
        }
        c14512a.m10858a(textView);
    }

    /* renamed from: a */
    private boolean m10811a(long j) {
        Iterator<Long> it2 = this.f53045c.getSelectedDays().iterator();
        while (it2.hasNext()) {
            if (C14548o.m10795a(j) == C14548o.m10795a(it2.next().longValue())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    private int m10807c(int i) {
        return (i - this.f53044b.daysFromStartOfWeekToFirstOfMonth()) + 1;
    }

    /* renamed from: a */
    public final int m10813a() {
        return (this.f53044b.daysFromStartOfWeekToFirstOfMonth() + this.f53044b.daysInMonth) - 1;
    }

    /* renamed from: a */
    public final Long getItem(int i) {
        if (i < this.f53044b.daysFromStartOfWeekToFirstOfMonth() || i > m10813a()) {
            return null;
        }
        return Long.valueOf(this.f53044b.getDay(m10807c(i)));
    }

    /* renamed from: a */
    public final void m10809a(MaterialCalendarGridView materialCalendarGridView, long j) {
        if (Month.create(j).equals(this.f53044b)) {
            m10810a((TextView) materialCalendarGridView.getChildAt(materialCalendarGridView.m10861a().m10808b(this.f53044b.getDayOfMonth(j)) - materialCalendarGridView.getFirstVisiblePosition()), j);
        }
    }

    /* renamed from: b */
    public final int m10808b(int i) {
        return this.f53044b.daysFromStartOfWeekToFirstOfMonth() + (i - 1);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f53044b.daysInMonth + this.f53044b.daysFromStartOfWeekToFirstOfMonth();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i / this.f53044b.daysInWeek;
    }

    @Override // android.widget.Adapter
    public /* synthetic */ View getView(int i, View view, ViewGroup viewGroup) {
        Context context = viewGroup.getContext();
        if (this.f53047e == null) {
            this.f53047e = new C14513b(context);
        }
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(C14376a.C14384h.mtrl_calendar_day, viewGroup, false);
        }
        int daysFromStartOfWeekToFirstOfMonth = i - this.f53044b.daysFromStartOfWeekToFirstOfMonth();
        if (daysFromStartOfWeekToFirstOfMonth < 0 || daysFromStartOfWeekToFirstOfMonth >= this.f53044b.daysInMonth) {
            textView.setVisibility(8);
            textView.setEnabled(false);
        } else {
            int i2 = daysFromStartOfWeekToFirstOfMonth + 1;
            textView.setTag(this.f53044b);
            textView.setText(String.format(textView.getResources().getConfiguration().locale, TimeModel.NUMBER_FORMAT, Integer.valueOf(i2)));
            long day = this.f53044b.getDay(i2);
            if (this.f53044b.year == Month.current().year) {
                Locale locale = Locale.getDefault();
                textView.setContentDescription(Build.VERSION.SDK_INT >= 24 ? C14548o.m10785c(locale).format(new Date(day)) : C14548o.m10781g(locale).format(new Date(day)));
            } else {
                Locale locale2 = Locale.getDefault();
                textView.setContentDescription(Build.VERSION.SDK_INT >= 24 ? C14548o.m10784d(locale2).format(new Date(day)) : C14548o.m10781g(locale2).format(new Date(day)));
            }
            textView.setVisibility(0);
            textView.setEnabled(true);
        }
        Long item = getItem(i);
        if (item == null) {
            return textView;
        }
        m10810a(textView, item.longValue());
        return textView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }
}
