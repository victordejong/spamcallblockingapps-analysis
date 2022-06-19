package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzmh.class */
public final class zzmh implements Parcelable {
    public static final Parcelable.Creator<zzmh> CREATOR = new zzmg();
    private final zza[] zzbdh;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzmh$zza.class */
    public interface zza extends Parcelable {
    }

    public zzmh(Parcel parcel) {
        this.zzbdh = new zza[parcel.readInt()];
        int i = 0;
        while (true) {
            zza[] zzaVarArr = this.zzbdh;
            if (i < zzaVarArr.length) {
                zzaVarArr[i] = (zza) parcel.readParcelable(zza.class.getClassLoader());
                i++;
            } else {
                return;
            }
        }
    }

    public zzmh(List<? extends zza> list) {
        zza[] zzaVarArr = new zza[list.size()];
        this.zzbdh = zzaVarArr;
        list.toArray(zzaVarArr);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return Arrays.equals(this.zzbdh, ((zzmh) obj).zzbdh);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zzbdh);
    }

    public final int length() {
        return this.zzbdh.length;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.zzbdh.length);
        for (zza zzaVar : this.zzbdh) {
            parcel.writeParcelable(zzaVar, 0);
        }
    }

    public final zza zzay(int i) {
        return this.zzbdh[i];
    }
}
