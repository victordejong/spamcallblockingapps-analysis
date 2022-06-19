package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.format.DateUtils;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.TimeZone;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/Month.class */
public final class Month implements Parcelable, Comparable<Month> {
    public static final Parcelable.Creator<Month> CREATOR = new Parcelable.Creator<Month>() { // from class: com.google.android.material.datepicker.Month.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ Month createFromParcel(Parcel parcel) {
            return Month.create(parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ Month[] newArray(int i) {
            return new Month[i];
        }
    };
    final int daysInMonth;
    final int daysInWeek;
    private final Calendar firstOfMonth;
    private String longName;
    final int month;
    final long timeInMillis;
    final int year;

    private Month(Calendar calendar) {
        calendar.set(5, 1);
        Calendar m10791a = C14548o.m10791a(calendar);
        this.firstOfMonth = m10791a;
        this.month = m10791a.get(2);
        this.year = m10791a.get(1);
        this.daysInWeek = m10791a.getMaximum(7);
        this.daysInMonth = m10791a.getActualMaximum(5);
        this.timeInMillis = m10791a.getTimeInMillis();
    }

    public static Month create(int i, int i2) {
        Calendar m10789b = C14548o.m10789b();
        m10789b.set(1, i);
        m10789b.set(2, i2);
        return new Month(m10789b);
    }

    public static Month create(long j) {
        Calendar m10789b = C14548o.m10789b();
        m10789b.setTimeInMillis(j);
        return new Month(m10789b);
    }

    public static Month current() {
        return new Month(C14548o.m10797a());
    }

    public final int compareTo(Month month) {
        return this.firstOfMonth.compareTo(month.firstOfMonth);
    }

    public final int daysFromStartOfWeekToFirstOfMonth() {
        int firstDayOfWeek = this.firstOfMonth.get(7) - this.firstOfMonth.getFirstDayOfWeek();
        int i = firstDayOfWeek;
        if (firstDayOfWeek < 0) {
            i = firstDayOfWeek + this.daysInWeek;
        }
        return i;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Month)) {
            return false;
        }
        Month month = (Month) obj;
        return this.month == month.month && this.year == month.year;
    }

    public final long getDay(int i) {
        Calendar m10791a = C14548o.m10791a(this.firstOfMonth);
        m10791a.set(5, i);
        return m10791a.getTimeInMillis();
    }

    public final int getDayOfMonth(long j) {
        Calendar m10791a = C14548o.m10791a(this.firstOfMonth);
        m10791a.setTimeInMillis(j);
        return m10791a.get(5);
    }

    public final String getLongName(Context context) {
        if (this.longName == null) {
            long timeInMillis = this.firstOfMonth.getTimeInMillis();
            this.longName = DateUtils.formatDateTime(context, timeInMillis - TimeZone.getDefault().getOffset(timeInMillis), 36);
        }
        return this.longName;
    }

    public final long getStableId() {
        return this.firstOfMonth.getTimeInMillis();
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.month), Integer.valueOf(this.year)});
    }

    public final Month monthsLater(int i) {
        Calendar m10791a = C14548o.m10791a(this.firstOfMonth);
        m10791a.add(2, i);
        return new Month(m10791a);
    }

    public final int monthsUntil(Month month) {
        if (this.firstOfMonth instanceof GregorianCalendar) {
            return ((month.year - this.year) * 12) + (month.month - this.month);
        }
        throw new IllegalArgumentException("Only Gregorian calendars are supported.");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.year);
        parcel.writeInt(this.month);
    }
}
