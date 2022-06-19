package com.google.android.material.datepicker;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p020b.p041h.p049k.C1592c;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/CalendarConstraints.class */
public final class CalendarConstraints implements Parcelable {
    public static final Parcelable.Creator<CalendarConstraints> CREATOR = new C8073a();

    /* renamed from: d */
    private final Month f36545d;

    /* renamed from: e */
    private final Month f36546e;

    /* renamed from: f */
    private final DateValidator f36547f;

    /* renamed from: g */
    private Month f36548g;

    /* renamed from: h */
    private final int f36549h;

    /* renamed from: i */
    private final int f36550i;

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/CalendarConstraints$DateValidator.class */
    public interface DateValidator extends Parcelable {
        /* renamed from: R */
        boolean mo5011R(long j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.datepicker.CalendarConstraints$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/CalendarConstraints$a.class */
    public static final class C8073a implements Parcelable.Creator<CalendarConstraints> {
        C8073a() {
        }

        /* renamed from: a */
        public CalendarConstraints createFromParcel(Parcel parcel) {
            return new CalendarConstraints((Month) parcel.readParcelable(Month.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), (DateValidator) parcel.readParcelable(DateValidator.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), null);
        }

        /* renamed from: b */
        public CalendarConstraints[] newArray(int i) {
            return new CalendarConstraints[i];
        }
    }

    /* renamed from: com.google.android.material.datepicker.CalendarConstraints$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/CalendarConstraints$b.class */
    public static final class C8074b {

        /* renamed from: a */
        static final long f36551a = C8123o.m4855a(Month.m4977d(1900, 0).f36606i);

        /* renamed from: b */
        static final long f36552b = C8123o.m4855a(Month.m4977d(2100, 11).f36606i);

        /* renamed from: c */
        private long f36553c;

        /* renamed from: d */
        private long f36554d;

        /* renamed from: e */
        private Long f36555e;

        /* renamed from: f */
        private DateValidator f36556f;

        public C8074b(CalendarConstraints calendarConstraints) {
            this.f36553c = f36551a;
            this.f36554d = f36552b;
            this.f36556f = DateValidatorPointForward.m5010a(Long.MIN_VALUE);
            this.f36553c = calendarConstraints.f36545d.f36606i;
            this.f36554d = calendarConstraints.f36546e.f36606i;
            this.f36555e = Long.valueOf(calendarConstraints.f36548g.f36606i);
            this.f36556f = calendarConstraints.f36547f;
        }

        /* renamed from: a */
        public CalendarConstraints m5020a() {
            Bundle bundle = new Bundle();
            bundle.putParcelable("DEEP_COPY_VALIDATOR_KEY", this.f36556f);
            Month m4976e = Month.m4976e(this.f36553c);
            Month m4976e2 = Month.m4976e(this.f36554d);
            DateValidator dateValidator = (DateValidator) bundle.getParcelable("DEEP_COPY_VALIDATOR_KEY");
            Long l = this.f36555e;
            return new CalendarConstraints(m4976e, m4976e2, dateValidator, l == null ? null : Month.m4976e(l.longValue()), null);
        }

        /* renamed from: b */
        public C8074b m5019b(long j) {
            this.f36555e = Long.valueOf(j);
            return this;
        }
    }

    private CalendarConstraints(Month month, Month month2, DateValidator dateValidator, Month month3) {
        this.f36545d = month;
        this.f36546e = month2;
        this.f36548g = month3;
        this.f36547f = dateValidator;
        if (month3 == null || month.compareTo(month3) <= 0) {
            if (month3 != null && month3.compareTo(month2) > 0) {
                throw new IllegalArgumentException("current Month cannot be after end Month");
            }
            this.f36550i = month.m4968m(month2) + 1;
            this.f36549h = (month2.f36603f - month.f36603f) + 1;
            return;
        }
        throw new IllegalArgumentException("start Month cannot be after current Month");
    }

    /* synthetic */ CalendarConstraints(Month month, Month month2, DateValidator dateValidator, Month month3, C8073a c8073a) {
        this(month, month2, dateValidator, month3);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public Month m5030e(Month month) {
        if (month.compareTo(this.f36545d) < 0) {
            return this.f36545d;
        }
        Month month2 = month;
        if (month.compareTo(this.f36546e) > 0) {
            month2 = this.f36546e;
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
        if (!this.f36545d.equals(calendarConstraints.f36545d) || !this.f36546e.equals(calendarConstraints.f36546e) || !C1592c.m29668a(this.f36548g, calendarConstraints.f36548g) || !this.f36547f.equals(calendarConstraints.f36547f)) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public DateValidator m5029f() {
        return this.f36547f;
    }

    /* renamed from: g */
    public Month m5028g() {
        return this.f36546e;
    }

    /* renamed from: h */
    public int m5027h() {
        return this.f36550i;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f36545d, this.f36546e, this.f36548g, this.f36547f});
    }

    /* renamed from: i */
    public Month m5026i() {
        return this.f36548g;
    }

    /* renamed from: j */
    public Month m5025j() {
        return this.f36545d;
    }

    /* renamed from: k */
    public int m5024k() {
        return this.f36549h;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0021, code lost:
        if (r6 <= r0.m4973h(r0.f36605h)) goto L7;
     */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m5023l(long r6) {
        /*
            r5 = this;
            r0 = r5
            com.google.android.material.datepicker.Month r0 = r0.f36545d
            r8 = r0
            r0 = 1
            r9 = r0
            r0 = r8
            r1 = 1
            long r0 = r0.m4973h(r1)
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L27
            r0 = r5
            com.google.android.material.datepicker.Month r0 = r0.f36546e
            r8 = r0
            r0 = r6
            r1 = r8
            r2 = r8
            int r2 = r2.f36605h
            long r1 = r1.m4973h(r2)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L27
            goto L2a
        L27:
            r0 = 0
            r9 = r0
        L2a:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.datepicker.CalendarConstraints.m5023l(long):boolean");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f36545d, 0);
        parcel.writeParcelable(this.f36546e, 0);
        parcel.writeParcelable(this.f36548g, 0);
        parcel.writeParcelable(this.f36547f, 0);
    }
}
