package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzmz.class */
public final class zzmz implements Parcelable {
    public static final Parcelable.Creator<zzmz> CREATOR = new yo2();

    /* renamed from: b */
    private final zzmy[] f9709b;

    public zzmz(Parcel parcel) {
        this.f9709b = new zzmy[parcel.readInt()];
        int i = 0;
        while (true) {
            zzmy[] zzmyVarArr = this.f9709b;
            if (i < zzmyVarArr.length) {
                zzmyVarArr[i] = (zzmy) parcel.readParcelable(zzmy.class.getClassLoader());
                i++;
            } else {
                return;
            }
        }
    }

    public zzmz(List<? extends zzmy> list) {
        zzmy[] zzmyVarArr = new zzmy[list.size()];
        this.f9709b = zzmyVarArr;
        list.toArray(zzmyVarArr);
    }

    /* renamed from: a */
    public final int m4473a() {
        return this.f9709b.length;
    }

    /* renamed from: b */
    public final zzmy m4472b(int i) {
        return this.f9709b[i];
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzmz.class == obj.getClass()) {
            return Arrays.equals(this.f9709b, ((zzmz) obj).f9709b);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f9709b);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f9709b.length);
        for (zzmy zzmyVar : this.f9709b) {
            parcel.writeParcelable(zzmyVar, 0);
        }
    }
}
