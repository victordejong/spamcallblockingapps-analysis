package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/Month.class */
public final class Month implements Comparable<Month>, Parcelable {
    public static final Parcelable.Creator<Month> CREATOR = new Parcelable.Creator<Month>() { // from class: com.google.android.material.datepicker.Month.1
        @NonNull
        /* renamed from: a */
        public Month createFromParcel(@NonNull Parcel parcel) {
            return Month.m9917b(parcel.readInt(), parcel.readInt());
        }

        @NonNull
        /* renamed from: b */
        public Month[] newArray(int i) {
            return new Month[i];
        }
    };
    @NonNull

    /* renamed from: f */
    private final Calendar f10588f;
    @NonNull

    /* renamed from: g */
    private final String f10589g;

    /* renamed from: h */
    final int f10590h;

    /* renamed from: i */
    final int f10591i;

    /* renamed from: j */
    final int f10592j;

    /* renamed from: k */
    final int f10593k;

    /* renamed from: l */
    final long f10594l;

    private Month(@NonNull Calendar calendar) {
        calendar.set(5, 1);
        Calendar f = UtcDates.m9848f(calendar);
        this.f10588f = f;
        this.f10590h = f.get(2);
        this.f10591i = this.f10588f.get(1);
        this.f10592j = this.f10588f.getMaximum(7);
        this.f10593k = this.f10588f.getActualMaximum(5);
        this.f10589g = UtcDates.m9832v().format(this.f10588f.getTime());
        this.f10594l = this.f10588f.getTimeInMillis();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: b */
    public static Month m9917b(int i, int i2) {
        Calendar r = UtcDates.m9836r();
        r.set(1, i);
        r.set(2, i2);
        return new Month(r);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: e */
    public static Month m9916e(long j) {
        Calendar r = UtcDates.m9836r();
        r.setTimeInMillis(j);
        return new Month(r);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: g */
    public static Month m9915g() {
        return new Month(UtcDates.m9838p());
    }

    /* renamed from: a */
    public int compareTo(@NonNull Month month) {
        return this.f10588f.compareTo(month.f10588f);
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
        if (!(this.f10590h == month.f10590h && this.f10591i == month.f10591i)) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public int m9914h() {
        int firstDayOfWeek = this.f10588f.get(7) - this.f10588f.getFirstDayOfWeek();
        int i = firstDayOfWeek;
        if (firstDayOfWeek < 0) {
            i = firstDayOfWeek + this.f10592j;
        }
        return i;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f10590h), Integer.valueOf(this.f10591i)});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public long m9913i(int i) {
        Calendar f = UtcDates.m9848f(this.f10588f);
        f.set(5, i);
        return f.getTimeInMillis();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: k */
    public String m9912k() {
        return this.f10589g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public long m9911l() {
        return this.f10588f.getTimeInMillis();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: m */
    public Month m9910m(int i) {
        Calendar f = UtcDates.m9848f(this.f10588f);
        f.add(2, i);
        return new Month(f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public int m9909o(@NonNull Month month) {
        if (this.f10588f instanceof GregorianCalendar) {
            return ((month.f10591i - this.f10591i) * 12) + (month.f10590h - this.f10590h);
        }
        throw new IllegalArgumentException("Only Gregorian calendars are supported.");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeInt(this.f10591i);
        parcel.writeInt(this.f10590h);
    }
}
