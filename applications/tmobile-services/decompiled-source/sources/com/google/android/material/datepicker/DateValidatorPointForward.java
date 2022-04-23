package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.material.datepicker.CalendarConstraints;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/DateValidatorPointForward.class */
public class DateValidatorPointForward implements CalendarConstraints.DateValidator {
    public static final Parcelable.Creator<DateValidatorPointForward> CREATOR = new Parcelable.Creator<DateValidatorPointForward>() { // from class: com.google.android.material.datepicker.DateValidatorPointForward.1
        @NonNull
        /* renamed from: a */
        public DateValidatorPointForward createFromParcel(@NonNull Parcel parcel) {
            return new DateValidatorPointForward(parcel.readLong());
        }

        @NonNull
        /* renamed from: b */
        public DateValidatorPointForward[] newArray(int i) {
            return new DateValidatorPointForward[i];
        }
    };

    /* renamed from: f */
    private final long f10522f;

    private DateValidatorPointForward(long j) {
        this.f10522f = j;
    }

    @NonNull
    /* renamed from: a */
    public static DateValidatorPointForward m9972a(long j) {
        return new DateValidatorPointForward(j);
    }

    @Override // com.google.android.material.datepicker.CalendarConstraints.DateValidator
    /* renamed from: X */
    public boolean mo9973X(long j) {
        return j >= this.f10522f;
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
        if (this.f10522f != ((DateValidatorPointForward) obj).f10522f) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f10522f)});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeLong(this.f10522f);
    }
}
