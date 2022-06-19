package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzzy.class */
public final class zzzy extends zzzu {
    public static final Parcelable.Creator<zzzy> CREATOR = new zzzx();
    public final int zza;
    public final int zzb;
    public final int zzc;
    public final int[] zzd;
    public final int[] zze;

    public zzzy(int i, int i2, int i3, int[] iArr, int[] iArr2) {
        super("MLLT");
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = iArr;
        this.zze = iArr2;
    }

    public zzzy(Parcel parcel) {
        super("MLLT");
        this.zza = parcel.readInt();
        this.zzb = parcel.readInt();
        this.zzc = parcel.readInt();
        this.zzd = (int[]) zzfn.zzC(parcel.createIntArray());
        this.zze = (int[]) zzfn.zzC(parcel.createIntArray());
    }

    @Override // com.google.android.gms.internal.ads.zzzu, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzzy.class != obj.getClass()) {
            return false;
        }
        zzzy zzzyVar = (zzzy) obj;
        return this.zza == zzzyVar.zza && this.zzb == zzzyVar.zzb && this.zzc == zzzyVar.zzc && Arrays.equals(this.zzd, zzzyVar.zzd) && Arrays.equals(this.zze, zzzyVar.zze);
    }

    public final int hashCode() {
        int i = this.zza;
        int i2 = this.zzb;
        int i3 = this.zzc;
        return Arrays.hashCode(this.zze) + ((Arrays.hashCode(this.zzd) + ((((((i + 527) * 31) + i2) * 31) + i3) * 31)) * 31);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.zza);
        parcel.writeInt(this.zzb);
        parcel.writeInt(this.zzc);
        parcel.writeIntArray(this.zzd);
        parcel.writeIntArray(this.zze);
    }
}
