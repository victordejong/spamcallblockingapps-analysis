package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzajz.class */
public final class zzajz extends zzajx {
    public static final Parcelable.Creator<zzajz> CREATOR = new zzajy();
    public final String zza;
    public final String zzb;
    public final String zzc;

    public zzajz(Parcel parcel) {
        super("----");
        String readString = parcel.readString();
        int i = zzamq.zza;
        this.zza = readString;
        this.zzb = parcel.readString();
        this.zzc = parcel.readString();
    }

    public zzajz(String str, String str2, String str3) {
        super("----");
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzajz.class != obj.getClass()) {
            return false;
        }
        zzajz zzajzVar = (zzajz) obj;
        return zzamq.zzc(this.zzb, zzajzVar.zzb) && zzamq.zzc(this.zza, zzajzVar.zza) && zzamq.zzc(this.zzc, zzajzVar.zzc);
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

    @Override // com.google.android.gms.internal.ads.zzajx
    public final String toString() {
        String str = this.zzf;
        String str2 = this.zza;
        String str3 = this.zzb;
        StringBuilder sb = new StringBuilder(C22128a.m8642b(String.valueOf(str).length(), 23, String.valueOf(str2).length(), String.valueOf(str3).length()));
        C22128a.m8666T0(sb, str, ": domain=", str2, ", description=");
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
