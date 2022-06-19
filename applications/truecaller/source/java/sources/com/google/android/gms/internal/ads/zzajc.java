package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzajc.class */
public final class zzajc implements zzaiu {
    public static final Parcelable.Creator<zzajc> CREATOR = new zzajb();
    public final int zza;
    public final String zzb;
    public final String zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final byte[] zzh;

    public zzajc(int i, String str, String str2, int i2, int i3, int i4, int i5, byte[] bArr) {
        this.zza = i;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = i2;
        this.zze = i3;
        this.zzf = i4;
        this.zzg = i5;
        this.zzh = bArr;
    }

    public zzajc(Parcel parcel) {
        this.zza = parcel.readInt();
        String readString = parcel.readString();
        int i = zzamq.zza;
        this.zzb = readString;
        this.zzc = parcel.readString();
        this.zzd = parcel.readInt();
        this.zze = parcel.readInt();
        this.zzf = parcel.readInt();
        this.zzg = parcel.readInt();
        this.zzh = (byte[]) zzamq.zzd(parcel.createByteArray());
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzajc.class != obj.getClass()) {
            return false;
        }
        zzajc zzajcVar = (zzajc) obj;
        return this.zza == zzajcVar.zza && this.zzb.equals(zzajcVar.zzb) && this.zzc.equals(zzajcVar.zzc) && this.zzd == zzajcVar.zzd && this.zze == zzajcVar.zze && this.zzf == zzajcVar.zzf && this.zzg == zzajcVar.zzg && Arrays.equals(this.zzh, zzajcVar.zzh);
    }

    public final int hashCode() {
        int m8579q2 = C22128a.m8579q2(this.zzc, C22128a.m8579q2(this.zzb, (this.zza + 527) * 31, 31), 31);
        int i = this.zzd;
        int i2 = this.zze;
        int i3 = this.zzf;
        return Arrays.hashCode(this.zzh) + ((((((((m8579q2 + i) * 31) + i2) * 31) + i3) * 31) + this.zzg) * 31);
    }

    public final String toString() {
        String str = this.zzb;
        String str2 = this.zzc;
        return C22128a.m8606k(new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(str2).length()), "Picture: mimeType=", str, ", description=", str2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.zza);
        parcel.writeString(this.zzb);
        parcel.writeString(this.zzc);
        parcel.writeInt(this.zzd);
        parcel.writeInt(this.zze);
        parcel.writeInt(this.zzf);
        parcel.writeInt(this.zzg);
        parcel.writeByteArray(this.zzh);
    }

    @Override // com.google.android.gms.internal.ads.zzaiu
    public final void zza(zzagm zzagmVar) {
        zzagmVar.zzx(this.zzh, this.zza);
    }
}
