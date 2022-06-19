package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzajs.class */
public final class zzajs extends zzajx {
    public static final Parcelable.Creator<zzajs> CREATOR = new zzajr();
    public final String zza;
    public final String zzb;
    public final String zzc;
    public final byte[] zzd;

    public zzajs(Parcel parcel) {
        super("GEOB");
        String readString = parcel.readString();
        int i = zzamq.zza;
        this.zza = readString;
        this.zzb = parcel.readString();
        this.zzc = parcel.readString();
        this.zzd = (byte[]) zzamq.zzd(parcel.createByteArray());
    }

    public zzajs(String str, String str2, String str3, byte[] bArr) {
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
        if (obj == null || zzajs.class != obj.getClass()) {
            return false;
        }
        zzajs zzajsVar = (zzajs) obj;
        return zzamq.zzc(this.zza, zzajsVar.zza) && zzamq.zzc(this.zzb, zzajsVar.zzb) && zzamq.zzc(this.zzc, zzajsVar.zzc) && Arrays.equals(this.zzd, zzajsVar.zzd);
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

    @Override // com.google.android.gms.internal.ads.zzajx
    public final String toString() {
        String str = this.zzf;
        String str2 = this.zza;
        String str3 = this.zzb;
        String str4 = this.zzc;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 36 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length());
        C22128a.m8666T0(sb, str, ": mimeType=", str2, ", filename=");
        return C22128a.m8610j(sb, str3, ", description=", str4);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeString(this.zzb);
        parcel.writeString(this.zzc);
        parcel.writeByteArray(this.zzd);
    }
}
