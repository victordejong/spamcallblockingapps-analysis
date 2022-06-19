package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.format.DateUtils;
import e.m.a.g.j.w;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.TimeZone;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/datepicker/Month.class */
public final class Month implements Comparable<Month>, Parcelable {
    public static final Parcelable.Creator<Month> CREATOR = new C2092a();

    /* renamed from: a */
    public final Calendar f6690a;

    /* renamed from: b */
    public final int f6691b;

    /* renamed from: c */
    public final int f6692c;

    /* renamed from: d */
    public final int f6693d;

    /* renamed from: e */
    public final int f6694e;

    /* renamed from: f */
    public final long f6695f;

    /* renamed from: g */
    public String f6696g;

    /* renamed from: com.google.android.material.datepicker.Month$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/datepicker/Month$a.class */
    public static final class C2092a implements Parcelable.Creator<Month> {
        @Override // android.os.Parcelable.Creator
        public Month createFromParcel(Parcel parcel) {
            return Month.m38440c(parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public Month[] newArray(int i) {
            return new Month[i];
        }
    }

    public Month(Calendar calendar) {
        calendar.set(5, 1);
        Calendar b = w.b(calendar);
        this.f6690a = b;
        this.f6691b = b.get(2);
        this.f6692c = b.get(1);
        this.f6693d = b.getMaximum(7);
        this.f6694e = b.getActualMaximum(5);
        this.f6695f = b.getTimeInMillis();
    }

    /* renamed from: c */
    public static Month m38440c(int i, int i2) {
        Calendar e = w.e();
        e.set(1, i);
        e.set(2, i2);
        return new Month(e);
    }

    /* renamed from: d */
    public static Month m38439d(long j) {
        Calendar e = w.e();
        e.setTimeInMillis(j);
        return new Month(e);
    }

    /* renamed from: a */
    public int compareTo(Month month) {
        return this.f6690a.compareTo(month.f6690a);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public int m38438e() {
        int firstDayOfWeek = this.f6690a.get(7) - this.f6690a.getFirstDayOfWeek();
        int i = firstDayOfWeek;
        if (firstDayOfWeek < 0) {
            i = firstDayOfWeek + this.f6693d;
        }
        return i;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Month)) {
            return false;
        }
        Month month = (Month) obj;
        if (this.f6691b != month.f6691b || this.f6692c != month.f6692c) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public String m38437f(Context context) {
        if (this.f6696g == null) {
            long timeInMillis = this.f6690a.getTimeInMillis();
            this.f6696g = DateUtils.formatDateTime(context, timeInMillis - TimeZone.getDefault().getOffset(timeInMillis), 36);
        }
        return this.f6696g;
    }

    /* renamed from: g */
    public Month m38436g(int i) {
        Calendar b = w.b(this.f6690a);
        b.add(2, i);
        return new Month(b);
    }

    /* renamed from: h */
    public int m38435h(Month month) {
        if (this.f6690a instanceof GregorianCalendar) {
            return (month.f6691b - this.f6691b) + ((month.f6692c - this.f6692c) * 12);
        }
        throw new IllegalArgumentException("Only Gregorian calendars are supported.");
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f6691b), Integer.valueOf(this.f6692c)});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f6692c);
        parcel.writeInt(this.f6691b);
    }
}
