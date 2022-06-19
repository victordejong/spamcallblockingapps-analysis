package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.datepicker.CalendarConstraints;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/DateValidatorPointForward.class */
public class DateValidatorPointForward implements CalendarConstraints.DateValidator {
    public static final Parcelable.Creator<DateValidatorPointForward> CREATOR = new C8080a();

    /* renamed from: d */
    private final long f36562d;

    /* renamed from: com.google.android.material.datepicker.DateValidatorPointForward$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/DateValidatorPointForward$a.class */
    static final class C8080a implements Parcelable.Creator<DateValidatorPointForward> {
        C8080a() {
        }

        /* renamed from: a */
        public DateValidatorPointForward createFromParcel(Parcel parcel) {
            return new DateValidatorPointForward(parcel.readLong(), null);
        }

        /* renamed from: b */
        public DateValidatorPointForward[] newArray(int i) {
            return new DateValidatorPointForward[i];
        }
    }

    private DateValidatorPointForward(long j) {
        this.f36562d = j;
    }

    /* synthetic */ DateValidatorPointForward(long j, C8080a c8080a) {
        this(j);
    }

    /* renamed from: a */
    public static DateValidatorPointForward m5010a(long j) {
        return new DateValidatorPointForward(j);
    }

    @Override // com.google.android.material.datepicker.CalendarConstraints.DateValidator
    /* renamed from: R */
    public boolean mo5011R(long j) {
        return j >= this.f36562d;
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
        if (!(obj instanceof DateValidatorPointForward)) {
            return false;
        }
        if (this.f36562d != ((DateValidatorPointForward) obj).f36562d) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f36562d)});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f36562d);
    }
}
