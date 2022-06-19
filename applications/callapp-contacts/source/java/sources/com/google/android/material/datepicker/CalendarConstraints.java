package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.p036e.C0827a;
import com.facebook.ads.AdError;
import java.util.Arrays;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/CalendarConstraints.class */
public final class CalendarConstraints implements Parcelable {
    public static final Parcelable.Creator<CalendarConstraints> CREATOR = new Parcelable.Creator<CalendarConstraints>() { // from class: com.google.android.material.datepicker.CalendarConstraints.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ CalendarConstraints createFromParcel(Parcel parcel) {
            return new CalendarConstraints((Month) parcel.readParcelable(Month.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), (DateValidator) parcel.readParcelable(DateValidator.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ CalendarConstraints[] newArray(int i) {
            return new CalendarConstraints[i];
        }
    };
    private final Month end;
    private final int monthSpan;
    private Month openAt;
    private final Month start;
    private final DateValidator validator;
    private final int yearSpan;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/CalendarConstraints$DateValidator.class */
    public interface DateValidator extends Parcelable {
        boolean isValid(long j);
    }

    /* renamed from: com.google.android.material.datepicker.CalendarConstraints$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/CalendarConstraints$a.class */
    public static final class C14498a {

        /* renamed from: a */
        static final long f52933a = C14548o.m10795a(Month.create(1900, 0).timeInMillis);

        /* renamed from: b */
        static final long f52934b = C14548o.m10795a(Month.create(AdError.BROKEN_MEDIA_ERROR_CODE, 11).timeInMillis);

        /* renamed from: c */
        long f52935c;

        /* renamed from: d */
        long f52936d;

        /* renamed from: e */
        Long f52937e;

        /* renamed from: f */
        DateValidator f52938f;

        public C14498a() {
            this.f52935c = f52933a;
            this.f52936d = f52934b;
            this.f52938f = DateValidatorPointForward.from(Long.MIN_VALUE);
        }

        public C14498a(CalendarConstraints calendarConstraints) {
            this.f52935c = f52933a;
            this.f52936d = f52934b;
            this.f52938f = DateValidatorPointForward.from(Long.MIN_VALUE);
            this.f52935c = calendarConstraints.start.timeInMillis;
            this.f52936d = calendarConstraints.end.timeInMillis;
            this.f52937e = Long.valueOf(calendarConstraints.openAt.timeInMillis);
            this.f52938f = calendarConstraints.validator;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CalendarConstraints(Month month, Month month2, DateValidator dateValidator, Month month3) {
        this.start = month;
        this.end = month2;
        this.openAt = month3;
        this.validator = dateValidator;
        if (month3 == null || month.compareTo(month3) <= 0) {
            if (month3 != null && month3.compareTo(month2) > 0) {
                throw new IllegalArgumentException("current Month cannot be after end Month");
            }
            this.monthSpan = month.monthsUntil(month2) + 1;
            this.yearSpan = (month2.year - month.year) + 1;
            return;
        }
        throw new IllegalArgumentException("start Month cannot be after current Month");
    }

    public final Month clamp(Month month) {
        if (month.compareTo(this.start) < 0) {
            return this.start;
        }
        Month month2 = month;
        if (month.compareTo(this.end) > 0) {
            month2 = this.end;
        }
        return month2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CalendarConstraints)) {
            return false;
        }
        CalendarConstraints calendarConstraints = (CalendarConstraints) obj;
        return this.start.equals(calendarConstraints.start) && this.end.equals(calendarConstraints.end) && C0827a.m44414a(this.openAt, calendarConstraints.openAt) && this.validator.equals(calendarConstraints.validator);
    }

    public final DateValidator getDateValidator() {
        return this.validator;
    }

    public final Month getEnd() {
        return this.end;
    }

    public final int getMonthSpan() {
        return this.monthSpan;
    }

    public final Month getOpenAt() {
        return this.openAt;
    }

    public final Month getStart() {
        return this.start;
    }

    public final int getYearSpan() {
        return this.yearSpan;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.start, this.end, this.openAt, this.validator});
    }

    public final boolean isWithinBounds(long j) {
        if (this.start.getDay(1) <= j) {
            Month month = this.end;
            return j <= month.getDay(month.daysInMonth);
        }
        return false;
    }

    final void setOpenAt(Month month) {
        this.openAt = month;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.start, 0);
        parcel.writeParcelable(this.end, 0);
        parcel.writeParcelable(this.openAt, 0);
        parcel.writeParcelable(this.validator, 0);
    }
}
