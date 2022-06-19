package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaru.class */
public final class zzaru implements Parcelable {
    public static final Parcelable.Creator<zzaru> CREATOR = new C6921rf();

    /* renamed from: d */
    private final zzart[] f33581d;

    public zzaru(Parcel parcel) {
        this.f33581d = new zzart[parcel.readInt()];
        int i = 0;
        while (true) {
            zzart[] zzartVarArr = this.f33581d;
            if (i < zzartVarArr.length) {
                zzartVarArr[i] = (zzart) parcel.readParcelable(zzart.class.getClassLoader());
                i++;
            } else {
                return;
            }
        }
    }

    public zzaru(List<? extends zzart> list) {
        zzart[] zzartVarArr = new zzart[list.size()];
        this.f33581d = zzartVarArr;
        list.toArray(zzartVarArr);
    }

    /* renamed from: a */
    public final int m8097a() {
        return this.f33581d.length;
    }

    /* renamed from: b */
    public final zzart m8096b(int i) {
        return this.f33581d[i];
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaru.class == obj.getClass()) {
            return Arrays.equals(this.f33581d, ((zzaru) obj).f33581d);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f33581d);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f33581d.length);
        for (zzart zzartVar : this.f33581d) {
            parcel.writeParcelable(zzartVar, 0);
        }
    }
}
