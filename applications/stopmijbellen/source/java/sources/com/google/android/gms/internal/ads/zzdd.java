package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdd.class */
public final class zzdd implements Parcelable {
    public static final Parcelable.Creator<zzdd> CREATOR = new zzdb();
    private final zzdc[] zza;

    public zzdd(Parcel parcel) {
        this.zza = new zzdc[parcel.readInt()];
        int i = 0;
        while (true) {
            zzdc[] zzdcVarArr = this.zza;
            if (i < zzdcVarArr.length) {
                zzdcVarArr[i] = (zzdc) parcel.readParcelable(zzdc.class.getClassLoader());
                i++;
            } else {
                return;
            }
        }
    }

    public zzdd(List<? extends zzdc> list) {
        this.zza = (zzdc[]) list.toArray(new zzdc[0]);
    }

    public zzdd(zzdc... zzdcVarArr) {
        this.zza = zzdcVarArr;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzdd.class == obj.getClass()) {
            return Arrays.equals(this.zza, ((zzdd) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zza);
    }

    public final String toString() {
        String valueOf = String.valueOf(Arrays.toString(this.zza));
        return valueOf.length() != 0 ? "entries=".concat(valueOf) : new String("entries=");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.zza.length);
        for (zzdc zzdcVar : this.zza) {
            parcel.writeParcelable(zzdcVar, 0);
        }
    }

    public final int zza() {
        return this.zza.length;
    }

    public final zzdc zzb(int i) {
        return this.zza[i];
    }

    public final zzdd zzc(zzdc... zzdcVarArr) {
        return zzdcVarArr.length == 0 ? this : new zzdd((zzdc[]) zzfn.zzZ(this.zza, zzdcVarArr));
    }

    public final zzdd zzd(zzdd zzddVar) {
        return zzddVar == null ? this : zzc(zzddVar.zza);
    }
}
