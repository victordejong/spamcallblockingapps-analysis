package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.datepicker.C1726a;
import java.util.Arrays;
/* renamed from: com.google.android.material.datepicker.e */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/e.class */
public class C1737e implements C1726a.AbstractC1729c {
    public static final Parcelable.Creator<C1737e> CREATOR = new C1738a();

    /* renamed from: a */
    public final long f6536a;

    /* renamed from: com.google.android.material.datepicker.e$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/e$a.class */
    public static final class C1738a implements Parcelable.Creator<C1737e> {
        @Override // android.os.Parcelable.Creator
        public C1737e createFromParcel(Parcel parcel) {
            return new C1737e(parcel.readLong(), null);
        }

        @Override // android.os.Parcelable.Creator
        public C1737e[] newArray(int i) {
            return new C1737e[i];
        }
    }

    public C1737e(long j) {
        this.f6536a = j;
    }

    public C1737e(long j, C1738a c1738a) {
        this.f6536a = j;
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
        if (!(obj instanceof C1737e)) {
            return false;
        }
        if (this.f6536a != ((C1737e) obj).f6536a) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f6536a)});
    }

    @Override // com.google.android.material.datepicker.C1726a.AbstractC1729c
    /* renamed from: p */
    public boolean mo4625p(long j) {
        return j >= this.f6536a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f6536a);
    }
}
