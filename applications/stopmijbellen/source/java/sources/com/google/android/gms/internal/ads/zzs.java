package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzs.class */
public final class zzs implements Comparator<zzr>, Parcelable {
    public static final Parcelable.Creator<zzs> CREATOR = new zzp();
    public final String zza;
    private final zzr[] zzb;
    private int zzc;

    public zzs(Parcel parcel) {
        this.zza = parcel.readString();
        zzr[] zzrVarArr = (zzr[]) zzfn.zzC((zzr[]) parcel.createTypedArray(zzr.CREATOR));
        this.zzb = zzrVarArr;
        int length = zzrVarArr.length;
    }

    private zzs(String str, boolean z, zzr... zzrVarArr) {
        this.zza = str;
        zzr[] zzrVarArr2 = z ? (zzr[]) zzrVarArr.clone() : zzrVarArr;
        this.zzb = zzrVarArr2;
        int length = zzrVarArr2.length;
        Arrays.sort(zzrVarArr2, this);
    }

    public zzs(String str, zzr... zzrVarArr) {
        this(null, true, zzrVarArr);
    }

    public zzs(List<zzr> list) {
        this(null, false, (zzr[]) list.toArray(new zzr[0]));
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(zzr zzrVar, zzr zzrVar2) {
        int i;
        zzr zzrVar3 = zzrVar;
        zzr zzrVar4 = zzrVar2;
        UUID uuid = zzk.zza;
        if (!uuid.equals(zzrVar3.zza)) {
            i = zzrVar3.zza.compareTo(zzrVar4.zza);
        } else if (uuid.equals(zzrVar4.zza)) {
            return 0;
        } else {
            i = 1;
        }
        return i;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzs.class != obj.getClass()) {
            return false;
        }
        zzs zzsVar = (zzs) obj;
        return zzfn.zzP(this.zza, zzsVar.zza) && Arrays.equals(this.zzb, zzsVar.zzb);
    }

    public final int hashCode() {
        int i = this.zzc;
        int i2 = i;
        if (i == 0) {
            String str = this.zza;
            i2 = ((str == null ? 0 : str.hashCode()) * 31) + Arrays.hashCode(this.zzb);
            this.zzc = i2;
        }
        return i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeTypedArray(this.zzb, 0);
    }

    public final zzs zza(String str) {
        return zzfn.zzP(this.zza, str) ? this : new zzs(str, false, this.zzb);
    }
}
