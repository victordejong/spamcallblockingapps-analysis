package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzn.class */
public final class zzn implements Comparator<zzm>, Parcelable {
    public static final Parcelable.Creator<zzn> CREATOR = new zzk();
    public final String zza;
    private final zzm[] zzb;
    private int zzc;

    public zzn(Parcel parcel) {
        this.zza = parcel.readString();
        zzm[] zzmVarArr = (zzm[]) zzamq.zzd((zzm[]) parcel.createTypedArray(zzm.CREATOR));
        this.zzb = zzmVarArr;
        int length = zzmVarArr.length;
    }

    private zzn(String str, boolean z, zzm... zzmVarArr) {
        this.zza = str;
        zzm[] zzmVarArr2 = z ? (zzm[]) zzmVarArr.clone() : zzmVarArr;
        this.zzb = zzmVarArr2;
        int length = zzmVarArr2.length;
        Arrays.sort(zzmVarArr2, this);
    }

    public zzn(String str, zzm... zzmVarArr) {
        this(null, true, zzmVarArr);
    }

    public zzn(List<zzm> list) {
        this(null, false, (zzm[]) list.toArray(new zzm[0]));
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(zzm zzmVar, zzm zzmVar2) {
        int i;
        zzm zzmVar3 = zzmVar;
        zzm zzmVar4 = zzmVar2;
        UUID uuid = zzadx.zza;
        if (!uuid.equals(zzmVar3.zza)) {
            i = zzmVar3.zza.compareTo(zzmVar4.zza);
        } else if (uuid.equals(zzmVar4.zza)) {
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
        if (obj == null || zzn.class != obj.getClass()) {
            return false;
        }
        zzn zznVar = (zzn) obj;
        return zzamq.zzc(this.zza, zznVar.zza) && Arrays.equals(this.zzb, zznVar.zzb);
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

    public final zzn zza(String str) {
        return zzamq.zzc(this.zza, str) ? this : new zzn(str, false, this.zzb);
    }
}
