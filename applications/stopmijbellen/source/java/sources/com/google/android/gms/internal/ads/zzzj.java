package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzzj.class */
public final class zzzj extends zzzu {
    public static final Parcelable.Creator<zzzj> CREATOR = new zzzi();
    public final String zza;
    public final int zzb;
    public final int zzc;
    public final long zzd;
    public final long zze;
    private final zzzu[] zzg;

    public zzzj(Parcel parcel) {
        super("CHAP");
        String readString = parcel.readString();
        int i = zzfn.zza;
        this.zza = readString;
        this.zzb = parcel.readInt();
        this.zzc = parcel.readInt();
        this.zzd = parcel.readLong();
        this.zze = parcel.readLong();
        int readInt = parcel.readInt();
        this.zzg = new zzzu[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            this.zzg[i2] = (zzzu) parcel.readParcelable(zzzu.class.getClassLoader());
        }
    }

    public zzzj(String str, int i, int i2, long j, long j2, zzzu[] zzzuVarArr) {
        super("CHAP");
        this.zza = str;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = j;
        this.zze = j2;
        this.zzg = zzzuVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzzu, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzzj.class != obj.getClass()) {
            return false;
        }
        zzzj zzzjVar = (zzzj) obj;
        return this.zzb == zzzjVar.zzb && this.zzc == zzzjVar.zzc && this.zzd == zzzjVar.zzd && this.zze == zzzjVar.zze && zzfn.zzP(this.zza, zzzjVar.zza) && Arrays.equals(this.zzg, zzzjVar.zzg);
    }

    public final int hashCode() {
        int i = this.zzb;
        int i2 = this.zzc;
        int i3 = (int) this.zzd;
        int i4 = (int) this.zze;
        String str = this.zza;
        return ((((((((i + 527) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeInt(this.zzb);
        parcel.writeInt(this.zzc);
        parcel.writeLong(this.zzd);
        parcel.writeLong(this.zze);
        parcel.writeInt(this.zzg.length);
        for (zzzu zzzuVar : this.zzg) {
            parcel.writeParcelable(zzzuVar, 0);
        }
    }
}
