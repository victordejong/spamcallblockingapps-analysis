package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.format.DateUtils;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.TimeZone;
/* renamed from: com.google.android.material.datepicker.s */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/s.class */
public final class C1761s implements Comparable<C1761s>, Parcelable {
    public static final Parcelable.Creator<C1761s> CREATOR = new C1762a();

    /* renamed from: a */
    public final Calendar f6595a;

    /* renamed from: b */
    public final int f6596b;

    /* renamed from: c */
    public final int f6597c;

    /* renamed from: d */
    public final int f6598d;

    /* renamed from: e */
    public final int f6599e;

    /* renamed from: f */
    public final long f6600f;

    /* renamed from: g */
    public String f6601g;

    /* renamed from: com.google.android.material.datepicker.s$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/s$a.class */
    public static final class C1762a implements Parcelable.Creator<C1761s> {
        @Override // android.os.Parcelable.Creator
        public C1761s createFromParcel(Parcel parcel) {
            return C1761s.m4607b(parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public C1761s[] newArray(int i) {
            return new C1761s[i];
        }
    }

    public C1761s(Calendar calendar) {
        calendar.set(5, 1);
        Calendar m4641b = C1730a0.m4641b(calendar);
        this.f6595a = m4641b;
        this.f6596b = m4641b.get(2);
        this.f6597c = m4641b.get(1);
        this.f6598d = m4641b.getMaximum(7);
        this.f6599e = m4641b.getActualMaximum(5);
        this.f6600f = m4641b.getTimeInMillis();
    }

    /* renamed from: b */
    public static C1761s m4607b(int i, int i2) {
        Calendar m4638e = C1730a0.m4638e();
        m4638e.set(1, i);
        m4638e.set(2, i2);
        return new C1761s(m4638e);
    }

    /* renamed from: c */
    public static C1761s m4606c(long j) {
        Calendar m4638e = C1730a0.m4638e();
        m4638e.setTimeInMillis(j);
        return new C1761s(m4638e);
    }

    /* renamed from: a */
    public int compareTo(C1761s c1761s) {
        return this.f6595a.compareTo(c1761s.f6595a);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public int m4605e() {
        int firstDayOfWeek = this.f6595a.get(7) - this.f6595a.getFirstDayOfWeek();
        int i = firstDayOfWeek;
        if (firstDayOfWeek < 0) {
            i = firstDayOfWeek + this.f6598d;
        }
        return i;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1761s)) {
            return false;
        }
        C1761s c1761s = (C1761s) obj;
        if (this.f6596b != c1761s.f6596b || this.f6597c != c1761s.f6597c) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public String m4604f(Context context) {
        if (this.f6601g == null) {
            long timeInMillis = this.f6595a.getTimeInMillis();
            this.f6601g = DateUtils.formatDateTime(context, timeInMillis - TimeZone.getDefault().getOffset(timeInMillis), 36);
        }
        return this.f6601g;
    }

    /* renamed from: g */
    public C1761s m4603g(int i) {
        Calendar m4641b = C1730a0.m4641b(this.f6595a);
        m4641b.add(2, i);
        return new C1761s(m4641b);
    }

    /* renamed from: h */
    public int m4602h(C1761s c1761s) {
        if (this.f6595a instanceof GregorianCalendar) {
            return (c1761s.f6596b - this.f6596b) + ((c1761s.f6597c - this.f6597c) * 12);
        }
        throw new IllegalArgumentException("Only Gregorian calendars are supported.");
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f6596b), Integer.valueOf(this.f6597c)});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f6597c);
        parcel.writeInt(this.f6596b);
    }
}
