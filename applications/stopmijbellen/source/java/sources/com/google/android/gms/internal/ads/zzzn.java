package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.p012v4.media.C0082b;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzzn.class */
public final class zzzn extends zzzu {
    public static final Parcelable.Creator<zzzn> CREATOR = new zzzm();
    public final String zza;
    public final String zzb;
    public final String zzc;

    public zzzn(Parcel parcel) {
        super("COMM");
        String readString = parcel.readString();
        int i = zzfn.zza;
        this.zza = readString;
        this.zzb = parcel.readString();
        this.zzc = parcel.readString();
    }

    public zzzn(String str, String str2, String str3) {
        super("COMM");
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzzn.class != obj.getClass()) {
            return false;
        }
        zzzn zzznVar = (zzzn) obj;
        return zzfn.zzP(this.zzb, zzznVar.zzb) && zzfn.zzP(this.zza, zzznVar.zza) && zzfn.zzP(this.zzc, zzznVar.zzc);
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
        return ((((hashCode + 527) * 31) + hashCode2) * 31) + i;
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final String toString() {
        String str = this.zzf;
        String str2 = this.zza;
        String str3 = this.zzb;
        StringBuilder sb = new StringBuilder(C0033h.m8890g(String.valueOf(str).length(), 25, String.valueOf(str2).length(), String.valueOf(str3).length()));
        C0082b.m8749m(sb, str, ": language=", str2, ", description=");
        sb.append(str3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzf);
        parcel.writeString(this.zza);
        parcel.writeString(this.zzc);
    }
}
