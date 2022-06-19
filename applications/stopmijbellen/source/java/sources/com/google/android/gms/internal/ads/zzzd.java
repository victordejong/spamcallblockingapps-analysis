package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.p012v4.media.C0082b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzzd.class */
public final class zzzd implements zzdc {
    public static final Parcelable.Creator<zzzd> CREATOR = new zzzc();
    public final int zza;
    public final String zzb;
    public final String zzc;
    public final String zzd;
    public final boolean zze;
    public final int zzf;

    public zzzd(int i, String str, String str2, String str3, boolean z, int i2) {
        zzdy.zzd(i2 != -1 ? i2 > 0 : true);
        this.zza = i;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = str3;
        this.zze = z;
        this.zzf = i2;
    }

    public zzzd(Parcel parcel) {
        this.zza = parcel.readInt();
        this.zzb = parcel.readString();
        this.zzc = parcel.readString();
        this.zzd = parcel.readString();
        this.zze = zzfn.zzV(parcel);
        this.zzf = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzzd.class != obj.getClass()) {
            return false;
        }
        zzzd zzzdVar = (zzzd) obj;
        return this.zza == zzzdVar.zza && zzfn.zzP(this.zzb, zzzdVar.zzb) && zzfn.zzP(this.zzc, zzzdVar.zzc) && zzfn.zzP(this.zzd, zzzdVar.zzd) && this.zze == zzzdVar.zze && this.zzf == zzzdVar.zzf;
    }

    public final int hashCode() {
        int i = this.zza;
        String str = this.zzb;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.zzc;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.zzd;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return ((((((((((i + 527) * 31) + hashCode) * 31) + hashCode2) * 31) + i2) * 31) + (this.zze ? 1 : 0)) * 31) + this.zzf;
    }

    public final String toString() {
        String str = this.zzc;
        String str2 = this.zzb;
        int i = this.zza;
        int i2 = this.zzf;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 80 + String.valueOf(str2).length());
        C0082b.m8749m(sb, "IcyHeaders: name=\"", str, "\", genre=\"", str2);
        sb.append("\", bitrate=");
        sb.append(i);
        sb.append(", metadataInterval=");
        sb.append(i2);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.zza);
        parcel.writeString(this.zzb);
        parcel.writeString(this.zzc);
        parcel.writeString(this.zzd);
        zzfn.zzO(parcel, this.zze);
        parcel.writeInt(this.zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final /* synthetic */ void zza(zzbc zzbcVar) {
    }
}
