package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzatv.class */
public final class zzatv extends zzatx {
    public static final Parcelable.Creator<zzatv> CREATOR = new zzatu();
    public final String zza;
    public final String zzb;
    public final String zzc;

    public zzatv(Parcel parcel) {
        super("COMM");
        this.zza = parcel.readString();
        this.zzb = parcel.readString();
        this.zzc = parcel.readString();
    }

    public zzatv(String str, String str2, String str3) {
        super("COMM");
        this.zza = "und";
        this.zzb = str2;
        this.zzc = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzatv.class != obj.getClass()) {
            return false;
        }
        zzatv zzatvVar = (zzatv) obj;
        return zzaxb.zzo(this.zzb, zzatvVar.zzb) && zzaxb.zzo(this.zza, zzatvVar.zza) && zzaxb.zzo(this.zzc, zzatvVar.zzc);
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

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zze);
        parcel.writeString(this.zza);
        parcel.writeString(this.zzc);
    }
}
