package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzasc.class */
public final class zzasc extends zzasa {
    public static final Parcelable.Creator<zzasc> CREATOR = new zzasb();
    public final String zza;
    public final String zzb;

    public zzasc(Parcel parcel) {
        super(parcel.readString());
        this.zza = parcel.readString();
        this.zzb = parcel.readString();
    }

    public zzasc(String str, String str2, String str3) {
        super(str);
        this.zza = null;
        this.zzb = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzasc.class != obj.getClass()) {
            return false;
        }
        zzasc zzascVar = (zzasc) obj;
        return this.zze.equals(zzascVar.zze) && zzave.zza(this.zza, zzascVar.zza) && zzave.zza(this.zzb, zzascVar.zzb);
    }

    public final int hashCode() {
        int m8579q2 = C22128a.m8579q2(this.zze, 527, 31);
        String str = this.zza;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.zzb;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((m8579q2 + hashCode) * 31) + i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zze);
        parcel.writeString(this.zza);
        parcel.writeString(this.zzb);
    }
}
