package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.datepicker.CalendarConstraints;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/DateValidatorPointBackward.class */
public class DateValidatorPointBackward implements CalendarConstraints.DateValidator {
    public static final Parcelable.Creator<DateValidatorPointBackward> CREATOR = new C8079a();

    /* renamed from: d */
    private final long f36561d;

    /* renamed from: com.google.android.material.datepicker.DateValidatorPointBackward$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/DateValidatorPointBackward$a.class */
    static final class C8079a implements Parcelable.Creator<DateValidatorPointBackward> {
        C8079a() {
        }

        /* renamed from: a */
        public DateValidatorPointBackward createFromParcel(Parcel parcel) {
            return new DateValidatorPointBackward(parcel.readLong(), null);
        }

        /* renamed from: b */
        public DateValidatorPointBackward[] newArray(int i) {
            return new DateValidatorPointBackward[i];
        }
    }

    private DateValidatorPointBackward(long j) {
        this.f36561d = j;
    }

    /* synthetic */ DateValidatorPointBackward(long j, C8079a c8079a) {
        this(j);
    }

    @Override // com.google.android.material.datepicker.CalendarConstraints.DateValidator
    /* renamed from: R */
    public boolean mo5011R(long j) {
        return j <= this.f36561d;
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
        if (!(obj instanceof DateValidatorPointBackward)) {
            return false;
        }
        if (this.f36561d != ((DateValidatorPointBackward) obj).f36561d) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f36561d)});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f36561d);
    }
}
