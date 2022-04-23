package com.google.android.material.datepicker;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/CalendarConstraints.class */
public final class CalendarConstraints implements Parcelable {
    public static final Parcelable.Creator<CalendarConstraints> CREATOR = new Parcelable.Creator<CalendarConstraints>() { // from class: com.google.android.material.datepicker.CalendarConstraints.1
        @NonNull
        /* renamed from: a */
        public CalendarConstraints createFromParcel(@NonNull Parcel parcel) {
            return new CalendarConstraints((Month) parcel.readParcelable(Month.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), (DateValidator) parcel.readParcelable(DateValidator.class.getClassLoader()));
        }

        @NonNull
        /* renamed from: b */
        public CalendarConstraints[] newArray(int i) {
            return new CalendarConstraints[i];
        }
    };
    @NonNull

    /* renamed from: f */
    private final Month f10489f;
    @NonNull

    /* renamed from: g */
    private final Month f10490g;
    @NonNull

    /* renamed from: h */
    private final Month f10491h;

    /* renamed from: i */
    private final DateValidator f10492i;

    /* renamed from: j */
    private final int f10493j;

    /* renamed from: k */
    private final int f10494k;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/CalendarConstraints$Builder.class */
    public static final class Builder {

        /* renamed from: e */
        static final long f10495e = UtcDates.m9853a(Month.m9917b(1900, 0).f10594l);

        /* renamed from: f */
        static final long f10496f = UtcDates.m9853a(Month.m9917b(2100, 11).f10594l);

        /* renamed from: a */
        private long f10497a;

        /* renamed from: b */
        private long f10498b;

        /* renamed from: c */
        private Long f10499c;

        /* renamed from: d */
        private DateValidator f10500d;

        public Builder() {
            this.f10497a = f10495e;
            this.f10498b = f10496f;
            this.f10500d = DateValidatorPointForward.m9972a(Long.MIN_VALUE);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder(@NonNull CalendarConstraints calendarConstraints) {
            this.f10497a = f10495e;
            this.f10498b = f10496f;
            this.f10500d = DateValidatorPointForward.m9972a(Long.MIN_VALUE);
            this.f10497a = calendarConstraints.f10489f.f10594l;
            this.f10498b = calendarConstraints.f10490g.f10594l;
            this.f10499c = Long.valueOf(calendarConstraints.f10491h.f10594l);
            this.f10500d = calendarConstraints.f10492i;
        }

        @NonNull
        /* renamed from: a */
        public CalendarConstraints m9995a() {
            if (this.f10499c == null) {
                long X0 = MaterialDatePicker.m9923X0();
                if (this.f10497a > X0 || X0 > this.f10498b) {
                    X0 = this.f10497a;
                }
                this.f10499c = Long.valueOf(X0);
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable("DEEP_COPY_VALIDATOR_KEY", this.f10500d);
            return new CalendarConstraints(Month.m9916e(this.f10497a), Month.m9916e(this.f10498b), Month.m9916e(this.f10499c.longValue()), (DateValidator) bundle.getParcelable("DEEP_COPY_VALIDATOR_KEY"));
        }

        @NonNull
        /* renamed from: b */
        public Builder m9994b(long j) {
            this.f10499c = Long.valueOf(j);
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/CalendarConstraints$DateValidator.class */
    public interface DateValidator extends Parcelable {
        /* renamed from: X */
        boolean mo9973X(long j);
    }

    private CalendarConstraints(@NonNull Month month, @NonNull Month month2, @NonNull Month month3, DateValidator dateValidator) {
        this.f10489f = month;
        this.f10490g = month2;
        this.f10491h = month3;
        this.f10492i = dateValidator;
        if (month.compareTo(month3) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        } else if (month3.compareTo(month2) <= 0) {
            this.f10494k = month.m9909o(month2) + 1;
            this.f10493j = (month2.f10591i - month.f10591i) + 1;
        } else {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public Month m10005e(Month month) {
        if (month.compareTo(this.f10489f) < 0) {
            return this.f10489f;
        }
        Month month2 = month;
        if (month.compareTo(this.f10490g) > 0) {
            month2 = this.f10490g;
        }
        return month2;
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
        if (!this.f10489f.equals(calendarConstraints.f10489f) || !this.f10490g.equals(calendarConstraints.f10490g) || !this.f10491h.equals(calendarConstraints.f10491h) || !this.f10492i.equals(calendarConstraints.f10492i)) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public DateValidator m10004f() {
        return this.f10492i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: g */
    public Month m10003g() {
        return this.f10490g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public int m10002h() {
        return this.f10494k;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f10489f, this.f10490g, this.f10491h, this.f10492i});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: i */
    public Month m10001i() {
        return this.f10491h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: j */
    public Month m10000j() {
        return this.f10489f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public int m9999k() {
        return this.f10493j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0021, code lost:
        if (r6 <= r0.m9913i(r0.f10593k)) goto L_0x002a;
     */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m9998l(long r6) {
        /*
            r5 = this;
            r0 = r5
            com.google.android.material.datepicker.Month r0 = r0.f10489f
            r8 = r0
            r0 = 1
            r9 = r0
            r0 = r8
            r1 = 1
            long r0 = r0.m9913i(r1)
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0027
            r0 = r5
            com.google.android.material.datepicker.Month r0 = r0.f10490g
            r8 = r0
            r0 = r6
            r1 = r8
            r2 = r8
            int r2 = r2.f10593k
            long r1 = r1.m9913i(r2)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0027
            goto L_0x002a
        L_0x0027:
            r0 = 0
            r9 = r0
        L_0x002a:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.datepicker.CalendarConstraints.m9998l(long):boolean");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f10489f, 0);
        parcel.writeParcelable(this.f10490g, 0);
        parcel.writeParcelable(this.f10491h, 0);
        parcel.writeParcelable(this.f10492i, 0);
    }
}
