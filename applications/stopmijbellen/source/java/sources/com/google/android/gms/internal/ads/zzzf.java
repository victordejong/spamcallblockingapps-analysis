package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.p012v4.media.C0082b;
import java.util.Arrays;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzzf.class */
public final class zzzf extends zzzu {
    public static final Parcelable.Creator<zzzf> CREATOR = new zzze();
    public final String zza;
    public final String zzb;
    public final int zzc;
    public final byte[] zzd;

    public zzzf(Parcel parcel) {
        super("APIC");
        String readString = parcel.readString();
        int i = zzfn.zza;
        this.zza = readString;
        this.zzb = parcel.readString();
        this.zzc = parcel.readInt();
        this.zzd = (byte[]) zzfn.zzC(parcel.createByteArray());
    }

    public zzzf(String str, String str2, int i, byte[] bArr) {
        super("APIC");
        this.zza = str;
        this.zzb = str2;
        this.zzc = i;
        this.zzd = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzzf.class != obj.getClass()) {
            return false;
        }
        zzzf zzzfVar = (zzzf) obj;
        return this.zzc == zzzfVar.zzc && zzfn.zzP(this.zza, zzzfVar.zza) && zzfn.zzP(this.zzb, zzzfVar.zzb) && Arrays.equals(this.zzd, zzzfVar.zzd);
    }

    public final int hashCode() {
        int i = this.zzc;
        String str = this.zza;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.zzb;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return Arrays.hashCode(this.zzd) + ((((((i + 527) * 31) + hashCode) * 31) + i2) * 31);
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final String toString() {
        String str = this.zzf;
        String str2 = this.zza;
        String str3 = this.zzb;
        StringBuilder sb = new StringBuilder(C0033h.m8890g(String.valueOf(str).length(), 25, String.valueOf(str2).length(), String.valueOf(str3).length()));
        C0082b.m8749m(sb, str, ": mimeType=", str2, ", description=");
        sb.append(str3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeString(this.zzb);
        parcel.writeInt(this.zzc);
        parcel.writeByteArray(this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzzu, com.google.android.gms.internal.ads.zzdc
    public final void zza(zzbc zzbcVar) {
        zzbcVar.zza(this.zzd, this.zzc);
    }
}
