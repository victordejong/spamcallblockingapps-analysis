package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaru.class */
public final class zzaru implements Parcelable {
    public static final Parcelable.Creator<zzaru> CREATOR = new zzars();
    private final zzart[] zza;

    public zzaru(Parcel parcel) {
        this.zza = new zzart[parcel.readInt()];
        int i = 0;
        while (true) {
            zzart[] zzartVarArr = this.zza;
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
        this.zza = zzartVarArr;
        list.toArray(zzartVarArr);
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
            return Arrays.equals(this.zza, ((zzaru) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zza);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.zza.length);
        for (zzart zzartVar : this.zza) {
            parcel.writeParcelable(zzartVar, 0);
        }
    }

    public final int zza() {
        return this.zza.length;
    }

    public final zzart zzb(int i) {
        return this.zza[i];
    }
}
