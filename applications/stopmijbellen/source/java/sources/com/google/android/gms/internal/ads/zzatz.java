package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzatz.class */
public final class zzatz extends zzatx {
    public static final Parcelable.Creator<zzatz> CREATOR = new zzaty();
    public final String zza;
    public final String zzb;

    public zzatz(Parcel parcel) {
        super(parcel.readString());
        this.zza = parcel.readString();
        this.zzb = parcel.readString();
    }

    public zzatz(String str, String str2, String str3) {
        super(str);
        this.zza = null;
        this.zzb = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzatz.class != obj.getClass()) {
            return false;
        }
        zzatz zzatzVar = (zzatz) obj;
        return this.zze.equals(zzatzVar.zze) && zzaxb.zzo(this.zza, zzatzVar.zza) && zzaxb.zzo(this.zzb, zzatzVar.zzb);
    }

    public final int hashCode() {
        int m4793d = C1676a.m4793d(this.zze, 527, 31);
        String str = this.zza;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.zzb;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((m4793d + hashCode) * 31) + i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zze);
        parcel.writeString(this.zza);
        parcel.writeString(this.zzb);
    }
}
