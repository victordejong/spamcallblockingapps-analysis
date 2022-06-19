package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzatr.class */
public final class zzatr implements Parcelable {
    public static final Parcelable.Creator<zzatr> CREATOR = new zzatp();
    private final zzatq[] zza;

    public zzatr(Parcel parcel) {
        this.zza = new zzatq[parcel.readInt()];
        int i = 0;
        while (true) {
            zzatq[] zzatqVarArr = this.zza;
            if (i < zzatqVarArr.length) {
                zzatqVarArr[i] = (zzatq) parcel.readParcelable(zzatq.class.getClassLoader());
                i++;
            } else {
                return;
            }
        }
    }

    public zzatr(List<? extends zzatq> list) {
        zzatq[] zzatqVarArr = new zzatq[list.size()];
        this.zza = zzatqVarArr;
        list.toArray(zzatqVarArr);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzatr.class == obj.getClass()) {
            return Arrays.equals(this.zza, ((zzatr) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zza);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.zza.length);
        for (zzatq zzatqVar : this.zza) {
            parcel.writeParcelable(zzatqVar, 0);
        }
    }

    public final int zza() {
        return this.zza.length;
    }

    public final zzatq zzb(int i) {
        return this.zza[i];
    }
}
