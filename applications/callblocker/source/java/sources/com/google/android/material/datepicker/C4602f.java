package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.datepicker.C4594a;
import java.util.Arrays;
/* renamed from: com.google.android.material.datepicker.f */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/f.class */
public class C4602f implements C4594a.AbstractC4597b {
    public static final Parcelable.Creator<C4602f> CREATOR = new Parcelable.Creator<C4602f>() { // from class: com.google.android.material.datepicker.f.1
        /* renamed from: a */
        public C4602f createFromParcel(Parcel parcel) {
            return new C4602f(parcel.readLong());
        }

        /* renamed from: a */
        public C4602f[] newArray(int i) {
            return new C4602f[i];
        }
    };

    /* renamed from: a */
    private final long f20054a;

    private C4602f(long j) {
        this.f20054a = j;
    }

    /* renamed from: b */
    public static C4602f m3202b(long j) {
        return new C4602f(j);
    }

    @Override // com.google.android.material.datepicker.C4594a.AbstractC4597b
    /* renamed from: a */
    public boolean mo3203a(long j) {
        return j >= this.f20054a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (!(obj instanceof C4602f)) {
                z = false;
            } else if (this.f20054a != ((C4602f) obj).f20054a) {
                z = false;
            }
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f20054a)});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f20054a);
    }
}
