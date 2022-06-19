package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzajm.class */
public final class zzajm extends zzajx {
    public static final Parcelable.Creator<zzajm> CREATOR = new zzajl();
    public final String zza;
    public final int zzb;
    public final int zzc;
    public final long zzd;
    public final long zze;
    private final zzajx[] zzg;

    public zzajm(Parcel parcel) {
        super("CHAP");
        String readString = parcel.readString();
        int i = zzamq.zza;
        this.zza = readString;
        this.zzb = parcel.readInt();
        this.zzc = parcel.readInt();
        this.zzd = parcel.readLong();
        this.zze = parcel.readLong();
        int readInt = parcel.readInt();
        this.zzg = new zzajx[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            this.zzg[i2] = (zzajx) parcel.readParcelable(zzajx.class.getClassLoader());
        }
    }

    public zzajm(String str, int i, int i2, long j, long j2, zzajx[] zzajxVarArr) {
        super("CHAP");
        this.zza = str;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = j;
        this.zze = j2;
        this.zzg = zzajxVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzajx, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzajm.class != obj.getClass()) {
            return false;
        }
        zzajm zzajmVar = (zzajm) obj;
        return this.zzb == zzajmVar.zzb && this.zzc == zzajmVar.zzc && this.zzd == zzajmVar.zzd && this.zze == zzajmVar.zze && zzamq.zzc(this.zza, zzajmVar.zza) && Arrays.equals(this.zzg, zzajmVar.zzg);
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
        for (zzajx zzajxVar : this.zzg) {
            parcel.writeParcelable(zzajxVar, 0);
        }
    }
}
