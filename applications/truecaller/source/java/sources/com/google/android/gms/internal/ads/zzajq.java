package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzajq.class */
public final class zzajq extends zzajx {
    public static final Parcelable.Creator<zzajq> CREATOR = new zzajp();
    public final String zza;
    public final String zzb;
    public final String zzc;

    public zzajq(Parcel parcel) {
        super("COMM");
        String readString = parcel.readString();
        int i = zzamq.zza;
        this.zza = readString;
        this.zzb = parcel.readString();
        this.zzc = parcel.readString();
    }

    public zzajq(String str, String str2, String str3) {
        super("COMM");
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzajq.class != obj.getClass()) {
            return false;
        }
        zzajq zzajqVar = (zzajq) obj;
        return zzamq.zzc(this.zzb, zzajqVar.zzb) && zzamq.zzc(this.zza, zzajqVar.zza) && zzamq.zzc(this.zzc, zzajqVar.zzc);
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
        StringBuilder sb = new StringBuilder(C22128a.m8642b(String.valueOf(str).length(), 25, String.valueOf(str2).length(), String.valueOf(str3).length()));
        C22128a.m8666T0(sb, str, ": language=", str2, ", description=");
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
