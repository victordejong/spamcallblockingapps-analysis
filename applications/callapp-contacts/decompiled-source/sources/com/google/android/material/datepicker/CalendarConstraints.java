package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
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

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/CalendarConstraints$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final long f30402a = o.a(Month.create(1900, 0).timeInMillis);

        /* renamed from: b  reason: collision with root package name */
        static final long f30403b = o.a(Month.create(AdError.BROKEN_MEDIA_ERROR_CODE, 11).timeInMillis);

        /* renamed from: c  reason: collision with root package name */
        long f30404c;

        /* renamed from: d  reason: collision with root package name */
        long f30405d;
        Long e;
        DateValidator f;

        public a() {
            this.f30404c = f30402a;
            this.f30405d = f30403b;
            this.f = DateValidatorPointForward.from(Long.MIN_VALUE);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(CalendarConstraints calendarConstraints) {
            this.f30404c = f30402a;
            this.f30405d = f30403b;
            this.f = DateValidatorPointForward.from(Long.MIN_VALUE);
            this.f30404c = calendarConstraints.start.timeInMillis;
            this.f30405d = calendarConstraints.end.timeInMillis;
            this.e = Long.valueOf(calendarConstraints.openAt.timeInMillis);
            this.f = calendarConstraints.validator;
        }
    }

    private CalendarConstraints(Month month, Month month2, DateValidator dateValidator, Month month3) {
        this.start = month;
        this.end = month2;
        this.openAt = month3;
        this.validator = dateValidator;
        if (month3 != null && month.compareTo(month3) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        } else if (month3 == null || month3.compareTo(month2) <= 0) {
            this.monthSpan = month.monthsUntil(month2) + 1;
            this.yearSpan = (month2.year - month.year) + 1;
        } else {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
        return this.start.equals(calendarConstraints.start) && this.end.equals(calendarConstraints.end) && androidx.core.e.a.a(this.openAt, calendarConstraints.openAt) && this.validator.equals(calendarConstraints.validator);
    }

    public final DateValidator getDateValidator() {
        return this.validator;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Month getEnd() {
        return this.end;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int getMonthSpan() {
        return this.monthSpan;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Month getOpenAt() {
        return this.openAt;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Month getStart() {
        return this.start;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int getYearSpan() {
        return this.yearSpan;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.start, this.end, this.openAt, this.validator});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isWithinBounds(long j) {
        if (this.start.getDay(1) > j) {
            return false;
        }
        Month month = this.end;
        return j <= month.getDay(month.daysInMonth);
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
