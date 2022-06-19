package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyz.class */
public final class zzyz implements zzdc {
    public static final Parcelable.Creator<zzyz> CREATOR = new zzyy();
    public final int zza;
    public final String zzb;
    public final String zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final byte[] zzh;

    public zzyz(int i, String str, String str2, int i2, int i3, int i4, int i5, byte[] bArr) {
        this.zza = i;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = i2;
        this.zze = i3;
        this.zzf = i4;
        this.zzg = i5;
        this.zzh = bArr;
    }

    public zzyz(Parcel parcel) {
        this.zza = parcel.readInt();
        String readString = parcel.readString();
        int i = zzfn.zza;
        this.zzb = readString;
        this.zzc = parcel.readString();
        this.zzd = parcel.readInt();
        this.zze = parcel.readInt();
        this.zzf = parcel.readInt();
        this.zzg = parcel.readInt();
        this.zzh = (byte[]) zzfn.zzC(parcel.createByteArray());
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzyz.class != obj.getClass()) {
            return false;
        }
        zzyz zzyzVar = (zzyz) obj;
        return this.zza == zzyzVar.zza && this.zzb.equals(zzyzVar.zzb) && this.zzc.equals(zzyzVar.zzc) && this.zzd == zzyzVar.zzd && this.zze == zzyzVar.zze && this.zzf == zzyzVar.zzf && this.zzg == zzyzVar.zzg && Arrays.equals(this.zzh, zzyzVar.zzh);
    }

    public final int hashCode() {
        int m4793d = C1676a.m4793d(this.zzc, C1676a.m4793d(this.zzb, (this.zza + 527) * 31, 31), 31);
        int i = this.zzd;
        int i2 = this.zze;
        int i3 = this.zzf;
        return Arrays.hashCode(this.zzh) + ((((((((m4793d + i) * 31) + i2) * 31) + i3) * 31) + this.zzg) * 31);
    }

    public final String toString() {
        String str = this.zzb;
        String str2 = this.zzc;
        return C1676a.m4788i(new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(str2).length()), "Picture: mimeType=", str, ", description=", str2);
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

    @Override // com.google.android.gms.internal.ads.zzdc
    public final void zza(zzbc zzbcVar) {
        zzbcVar.zza(this.zzh, this.zza);
    }
}
