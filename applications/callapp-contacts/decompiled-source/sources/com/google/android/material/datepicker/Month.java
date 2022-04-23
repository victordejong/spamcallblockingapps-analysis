package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.format.DateUtils;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.TimeZone;
/* JADX INFO: Access modifiers changed from: package-private */
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
        Calendar a2 = o.a(calendar);
        this.firstOfMonth = a2;
        this.month = a2.get(2);
        this.year = a2.get(1);
        this.daysInWeek = a2.getMaximum(7);
        this.daysInMonth = a2.getActualMaximum(5);
        this.timeInMillis = a2.getTimeInMillis();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Month create(int i, int i2) {
        Calendar b2 = o.b();
        b2.set(1, i);
        b2.set(2, i2);
        return new Month(b2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Month create(long j) {
        Calendar b2 = o.b();
        b2.setTimeInMillis(j);
        return new Month(b2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Month current() {
        return new Month(o.a());
    }

    public final int compareTo(Month month) {
        return this.firstOfMonth.compareTo(month.firstOfMonth);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long getDay(int i) {
        Calendar a2 = o.a(this.firstOfMonth);
        a2.set(5, i);
        return a2.getTimeInMillis();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int getDayOfMonth(long j) {
        Calendar a2 = o.a(this.firstOfMonth);
        a2.setTimeInMillis(j);
        return a2.get(5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String getLongName(Context context) {
        if (this.longName == null) {
            long timeInMillis = this.firstOfMonth.getTimeInMillis();
            this.longName = DateUtils.formatDateTime(context, timeInMillis - TimeZone.getDefault().getOffset(timeInMillis), 36);
        }
        return this.longName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long getStableId() {
        return this.firstOfMonth.getTimeInMillis();
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.month), Integer.valueOf(this.year)});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Month monthsLater(int i) {
        Calendar a2 = o.a(this.firstOfMonth);
        a2.add(2, i);
        return new Month(a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
