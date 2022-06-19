package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.p012v4.media.C0082b;
import androidx.recyclerview.widget.C0608b;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzzp.class */
public final class zzzp extends zzzu {
    public static final Parcelable.Creator<zzzp> CREATOR = new zzzo();
    public final String zza;
    public final String zzb;
    public final String zzc;
    public final byte[] zzd;

    public zzzp(Parcel parcel) {
        super("GEOB");
        String readString = parcel.readString();
        int i = zzfn.zza;
        this.zza = readString;
        this.zzb = parcel.readString();
        this.zzc = parcel.readString();
        this.zzd = (byte[]) zzfn.zzC(parcel.createByteArray());
    }

    public zzzp(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzzp.class != obj.getClass()) {
            return false;
        }
        zzzp zzzpVar = (zzzp) obj;
        return zzfn.zzP(this.zza, zzzpVar.zza) && zzfn.zzP(this.zzb, zzzpVar.zzb) && zzfn.zzP(this.zzc, zzzpVar.zzc) && Arrays.equals(this.zzd, zzzpVar.zzd);
    }

    public final int hashCode() {
        String str = this.zza;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.zzb;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.zzc;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return Arrays.hashCode(this.zzd) + ((((((hashCode + 527) * 31) + hashCode2) * 31) + i) * 31);
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final String toString() {
        String str = this.zzf;
        String str2 = this.zza;
        String str3 = this.zzb;
        String str4 = this.zzc;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 36 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length());
        C0082b.m8749m(sb, str, ": mimeType=", str2, ", filename=");
        return C0608b.m7625j(sb, str3, ", description=", str4);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeString(this.zzb);
        parcel.writeString(this.zzc);
        parcel.writeByteArray(this.zzd);
    }
}
