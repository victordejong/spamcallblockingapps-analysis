package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.AdError;
import e.m.a.g.j.w;
import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/datepicker/CalendarConstraints.class */
public final class CalendarConstraints implements Parcelable {
    public static final Parcelable.Creator<CalendarConstraints> CREATOR = new C2090a();

    /* renamed from: a */
    public final Month f6676a;

    /* renamed from: b */
    public final Month f6677b;

    /* renamed from: c */
    public final DateValidator f6678c;

    /* renamed from: d */
    public Month f6679d;

    /* renamed from: e */
    public final int f6680e;

    /* renamed from: f */
    public final int f6681f;

    /* loaded from: classes3-dex2jar.jar:com/google/android/material/datepicker/CalendarConstraints$DateValidator.class */
    public interface DateValidator extends Parcelable {
        /* renamed from: W */
        boolean m38451W(long j);
    }

    /* renamed from: com.google.android.material.datepicker.CalendarConstraints$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/datepicker/CalendarConstraints$a.class */
    public static final class C2090a implements Parcelable.Creator<CalendarConstraints> {
        @Override // android.os.Parcelable.Creator
        public CalendarConstraints createFromParcel(Parcel parcel) {
            return new CalendarConstraints((Month) parcel.readParcelable(Month.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), (DateValidator) parcel.readParcelable(DateValidator.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), null);
        }

        @Override // android.os.Parcelable.Creator
        public CalendarConstraints[] newArray(int i) {
            return new CalendarConstraints[i];
        }
    }

    /* renamed from: com.google.android.material.datepicker.CalendarConstraints$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/datepicker/CalendarConstraints$b.class */
    public static final class C2091b {

        /* renamed from: e */
        public static final long f6682e = w.a(Month.m38440c(1900, 0).f6695f);

        /* renamed from: f */
        public static final long f6683f = w.a(Month.m38440c(AdError.BROKEN_MEDIA_ERROR_CODE, 11).f6695f);

        /* renamed from: a */
        public long f6684a;

        /* renamed from: b */
        public long f6685b;

        /* renamed from: c */
        public Long f6686c;

        /* renamed from: d */
        public DateValidator f6687d;

        public C2091b(CalendarConstraints calendarConstraints) {
            this.f6684a = f6682e;
            this.f6685b = f6683f;
            this.f6687d = new DateValidatorPointForward(Long.MIN_VALUE);
            this.f6684a = calendarConstraints.f6676a.f6695f;
            this.f6685b = calendarConstraints.f6677b.f6695f;
            this.f6686c = Long.valueOf(calendarConstraints.f6679d.f6695f);
            this.f6687d = calendarConstraints.f6678c;
        }
    }

    public CalendarConstraints(Month month, Month month2, DateValidator dateValidator, Month month3, C2090a c2090a) {
        this.f6676a = month;
        this.f6677b = month2;
        this.f6679d = month3;
        this.f6678c = dateValidator;
        if (month3 == null || month.f6690a.compareTo(month3.f6690a) <= 0) {
            if (month3 != null && month3.f6690a.compareTo(month2.f6690a) > 0) {
                throw new IllegalArgumentException("current Month cannot be after end Month");
            }
            this.f6681f = month.m38435h(month2) + 1;
            this.f6680e = (month2.f6692c - month.f6692c) + 1;
            return;
        }
        throw new IllegalArgumentException("start Month cannot be after current Month");
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
        if (!(obj instanceof CalendarConstraints)) {
            return false;
        }
        CalendarConstraints calendarConstraints = (CalendarConstraints) obj;
        if (!this.f6676a.equals(calendarConstraints.f6676a) || !this.f6677b.equals(calendarConstraints.f6677b) || !Objects.equals(this.f6679d, calendarConstraints.f6679d) || !this.f6678c.equals(calendarConstraints.f6678c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f6676a, this.f6677b, this.f6679d, this.f6678c});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f6676a, 0);
        parcel.writeParcelable(this.f6677b, 0);
        parcel.writeParcelable(this.f6679d, 0);
        parcel.writeParcelable(this.f6678c, 0);
    }
}
