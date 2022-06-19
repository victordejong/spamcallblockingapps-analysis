package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
/* renamed from: com.google.android.material.datepicker.l */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/l.class */
public final class C4626l implements Parcelable, Comparable<C4626l> {
    public static final Parcelable.Creator<C4626l> CREATOR = new Parcelable.Creator<C4626l>() { // from class: com.google.android.material.datepicker.l.1
        /* renamed from: a */
        public C4626l createFromParcel(Parcel parcel) {
            return C4626l.m3144a(parcel.readInt(), parcel.readInt());
        }

        /* renamed from: a */
        public C4626l[] newArray(int i) {
            return new C4626l[i];
        }
    };

    /* renamed from: a */
    final int f20120a;

    /* renamed from: b */
    final int f20121b;

    /* renamed from: c */
    final int f20122c;

    /* renamed from: d */
    final int f20123d;

    /* renamed from: e */
    final long f20124e;

    /* renamed from: f */
    private final Calendar f20125f;

    /* renamed from: g */
    private final String f20126g;

    private C4626l(Calendar calendar) {
        calendar.set(5, 1);
        this.f20125f = C4636r.m3104b(calendar);
        this.f20120a = this.f20125f.get(2);
        this.f20121b = this.f20125f.get(1);
        this.f20122c = this.f20125f.getMaximum(7);
        this.f20123d = this.f20125f.getActualMaximum(5);
        this.f20126g = C4636r.m3102c().format(this.f20125f.getTime());
        this.f20124e = this.f20125f.getTimeInMillis();
    }

    /* renamed from: a */
    public static C4626l m3146a() {
        return new C4626l(C4636r.m3112a());
    }

    /* renamed from: a */
    public static C4626l m3144a(int i, int i2) {
        Calendar m3106b = C4636r.m3106b();
        m3106b.set(1, i);
        m3106b.set(2, i2);
        return new C4626l(m3106b);
    }

    /* renamed from: a */
    public static C4626l m3143a(long j) {
        Calendar m3106b = C4636r.m3106b();
        m3106b.setTimeInMillis(j);
        return new C4626l(m3106b);
    }

    /* renamed from: a */
    public int compareTo(C4626l c4626l) {
        return this.f20125f.compareTo(c4626l.f20125f);
    }

    /* renamed from: a */
    public long m3145a(int i) {
        Calendar m3104b = C4636r.m3104b(this.f20125f);
        m3104b.set(5, i);
        return m3104b.getTimeInMillis();
    }

    /* renamed from: b */
    public int m3141b() {
        int firstDayOfWeek = this.f20125f.get(7) - this.f20125f.getFirstDayOfWeek();
        int i = firstDayOfWeek;
        if (firstDayOfWeek < 0) {
            i = firstDayOfWeek + this.f20122c;
        }
        return i;
    }

    /* renamed from: b */
    public int m3139b(C4626l c4626l) {
        if (this.f20125f instanceof GregorianCalendar) {
            return ((c4626l.f20121b - this.f20121b) * 12) + (c4626l.f20120a - this.f20120a);
        }
        throw new IllegalArgumentException("Only Gregorian calendars are supported.");
    }

    /* renamed from: b */
    public C4626l m3140b(int i) {
        Calendar m3104b = C4636r.m3104b(this.f20125f);
        m3104b.add(2, i);
        return new C4626l(m3104b);
    }

    /* renamed from: c */
    public long m3138c() {
        return this.f20125f.getTimeInMillis();
    }

    /* renamed from: d */
    public String m3137d() {
        return this.f20126g;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (!(obj instanceof C4626l)) {
                z = false;
            } else {
                C4626l c4626l = (C4626l) obj;
                if (this.f20120a != c4626l.f20120a || this.f20121b != c4626l.f20121b) {
                    z = false;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f20120a), Integer.valueOf(this.f20121b)});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f20121b);
        parcel.writeInt(this.f20120a);
    }
}
