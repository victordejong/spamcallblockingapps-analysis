package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/Month.class */
public final class Month implements Comparable<Month>, Parcelable {
    public static final Parcelable.Creator<Month> CREATOR = new C8093a();

    /* renamed from: d */
    private final Calendar f36601d;

    /* renamed from: e */
    final int f36602e;

    /* renamed from: f */
    final int f36603f;

    /* renamed from: g */
    final int f36604g;

    /* renamed from: h */
    final int f36605h;

    /* renamed from: i */
    final long f36606i;

    /* renamed from: j */
    private String f36607j;

    /* renamed from: com.google.android.material.datepicker.Month$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/Month$a.class */
    static final class C8093a implements Parcelable.Creator<Month> {
        C8093a() {
        }

        /* renamed from: a */
        public Month createFromParcel(Parcel parcel) {
            return Month.m4977d(parcel.readInt(), parcel.readInt());
        }

        /* renamed from: b */
        public Month[] newArray(int i) {
            return new Month[i];
        }
    }

    private Month(Calendar calendar) {
        calendar.set(5, 1);
        Calendar m4850f = C8123o.m4850f(calendar);
        this.f36601d = m4850f;
        this.f36602e = m4850f.get(2);
        this.f36603f = m4850f.get(1);
        this.f36604g = m4850f.getMaximum(7);
        this.f36605h = m4850f.getActualMaximum(5);
        this.f36606i = m4850f.getTimeInMillis();
    }

    /* renamed from: d */
    public static Month m4977d(int i, int i2) {
        Calendar m4839q = C8123o.m4839q();
        m4839q.set(1, i);
        m4839q.set(2, i2);
        return new Month(m4839q);
    }

    /* renamed from: e */
    public static Month m4976e(long j) {
        Calendar m4839q = C8123o.m4839q();
        m4839q.setTimeInMillis(j);
        return new Month(m4839q);
    }

    /* renamed from: f */
    public static Month m4975f() {
        return new Month(C8123o.m4841o());
    }

    /* renamed from: a */
    public int compareTo(Month month) {
        return this.f36601d.compareTo(month.f36601d);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
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
        if (this.f36602e != month.f36602e || this.f36603f != month.f36603f) {
            z = false;
        }
        return z;
    }

    /* renamed from: g */
    public int m4974g() {
        int firstDayOfWeek = this.f36601d.get(7) - this.f36601d.getFirstDayOfWeek();
        int i = firstDayOfWeek;
        if (firstDayOfWeek < 0) {
            i = firstDayOfWeek + this.f36604g;
        }
        return i;
    }

    /* renamed from: h */
    public long m4973h(int i) {
        Calendar m4850f = C8123o.m4850f(this.f36601d);
        m4850f.set(5, i);
        return m4850f.getTimeInMillis();
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f36602e), Integer.valueOf(this.f36603f)});
    }

    /* renamed from: i */
    public int m4972i(long j) {
        Calendar m4850f = C8123o.m4850f(this.f36601d);
        m4850f.setTimeInMillis(j);
        return m4850f.get(5);
    }

    /* renamed from: j */
    public String m4971j(Context context) {
        if (this.f36607j == null) {
            this.f36607j = C8104d.m4920i(context, this.f36601d.getTimeInMillis());
        }
        return this.f36607j;
    }

    /* renamed from: k */
    public long m4970k() {
        return this.f36601d.getTimeInMillis();
    }

    /* renamed from: l */
    public Month m4969l(int i) {
        Calendar m4850f = C8123o.m4850f(this.f36601d);
        m4850f.add(2, i);
        return new Month(m4850f);
    }

    /* renamed from: m */
    public int m4968m(Month month) {
        if (this.f36601d instanceof GregorianCalendar) {
            return ((month.f36603f - this.f36603f) * 12) + (month.f36602e - this.f36602e);
        }
        throw new IllegalArgumentException("Only Gregorian calendars are supported.");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f36603f);
        parcel.writeInt(this.f36602e);
    }
}
