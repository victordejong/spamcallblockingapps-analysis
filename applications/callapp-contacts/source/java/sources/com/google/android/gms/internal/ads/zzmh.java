package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzmh.class */
public final class zzmh implements Parcelable {
    public static final Parcelable.Creator<zzmh> CREATOR = new eaa();
    private final zza[] zzbdr;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzmh$zza.class */
    public interface zza extends Parcelable {
    }

    public zzmh(Parcel parcel) {
        this.zzbdr = new zza[parcel.readInt()];
        int i = 0;
        while (true) {
            zza[] zzaVarArr = this.zzbdr;
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
        this.zzbdr = zzaVarArr;
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
            return Arrays.equals(this.zzbdr, ((zzmh) obj).zzbdr);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zzbdr);
    }

    public final int length() {
        return this.zzbdr.length;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.zzbdr.length);
        for (zza zzaVar : this.zzbdr) {
            parcel.writeParcelable(zzaVar, 0);
        }
    }

    public final zza zzbb(int i) {
        return this.zzbdr[i];
    }
}
