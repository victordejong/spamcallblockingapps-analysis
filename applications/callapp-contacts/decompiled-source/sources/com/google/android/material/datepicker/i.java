package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.material.a;
import com.google.android.material.timepicker.TimeModel;
import java.util.Collection;
import java.util.Date;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/i.class */
public class i extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    static final int f30474a = o.b().getMaximum(4);

    /* renamed from: b  reason: collision with root package name */
    final Month f30475b;

    /* renamed from: c  reason: collision with root package name */
    final DateSelector<?> f30476c;

    /* renamed from: d  reason: collision with root package name */
    Collection<Long> f30477d;
    b e;
    final CalendarConstraints f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Month month, DateSelector<?> dateSelector, CalendarConstraints calendarConstraints) {
        this.f30475b = month;
        this.f30476c = dateSelector;
        this.f = calendarConstraints;
        this.f30477d = dateSelector.getSelectedDays();
    }

    private void a(TextView textView, long j) {
        a aVar;
        if (textView != null) {
            if (this.f.getDateValidator().isValid(j)) {
                textView.setEnabled(true);
                aVar = a(j) ? this.e.f30424b : o.a().getTimeInMillis() == j ? this.e.f30425c : this.e.f30423a;
            } else {
                textView.setEnabled(false);
                aVar = this.e.g;
            }
            aVar.a(textView);
        }
    }

    private boolean a(long j) {
        for (Long l : this.f30476c.getSelectedDays()) {
            if (o.a(j) == o.a(l.longValue())) {
                return true;
            }
        }
        return false;
    }

    private int c(int i) {
        return (i - this.f30475b.daysFromStartOfWeekToFirstOfMonth()) + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a() {
        return (this.f30475b.daysFromStartOfWeekToFirstOfMonth() + this.f30475b.daysInMonth) - 1;
    }

    /* renamed from: a */
    public final Long getItem(int i) {
        if (i < this.f30475b.daysFromStartOfWeekToFirstOfMonth() || i > a()) {
            return null;
        }
        return Long.valueOf(this.f30475b.getDay(c(i)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(MaterialCalendarGridView materialCalendarGridView, long j) {
        if (Month.create(j).equals(this.f30475b)) {
            a((TextView) materialCalendarGridView.getChildAt(materialCalendarGridView.a().b(this.f30475b.getDayOfMonth(j)) - materialCalendarGridView.getFirstVisiblePosition()), j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b(int i) {
        return this.f30475b.daysFromStartOfWeekToFirstOfMonth() + (i - 1);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f30475b.daysInMonth + this.f30475b.daysFromStartOfWeekToFirstOfMonth();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i / this.f30475b.daysInWeek;
    }

    @Override // android.widget.Adapter
    public /* synthetic */ View getView(int i, View view, ViewGroup viewGroup) {
        Context context = viewGroup.getContext();
        if (this.e == null) {
            this.e = new b(context);
        }
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(a.h.mtrl_calendar_day, viewGroup, false);
        }
        int daysFromStartOfWeekToFirstOfMonth = i - this.f30475b.daysFromStartOfWeekToFirstOfMonth();
        if (daysFromStartOfWeekToFirstOfMonth < 0 || daysFromStartOfWeekToFirstOfMonth >= this.f30475b.daysInMonth) {
            textView.setVisibility(8);
            textView.setEnabled(false);
        } else {
            int i2 = daysFromStartOfWeekToFirstOfMonth + 1;
            textView.setTag(this.f30475b);
            textView.setText(String.format(textView.getResources().getConfiguration().locale, TimeModel.NUMBER_FORMAT, Integer.valueOf(i2)));
            long day = this.f30475b.getDay(i2);
            if (this.f30475b.year == Month.current().year) {
                Locale locale = Locale.getDefault();
                textView.setContentDescription(Build.VERSION.SDK_INT >= 24 ? o.c(locale).format(new Date(day)) : o.g(locale).format(new Date(day)));
            } else {
                Locale locale2 = Locale.getDefault();
                textView.setContentDescription(Build.VERSION.SDK_INT >= 24 ? o.d(locale2).format(new Date(day)) : o.g(locale2).format(new Date(day)));
            }
            textView.setVisibility(0);
            textView.setEnabled(true);
        }
        Long a2 = getItem(i);
        if (a2 == null) {
            return textView;
        }
        a(textView, a2.longValue());
        return textView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }
}
