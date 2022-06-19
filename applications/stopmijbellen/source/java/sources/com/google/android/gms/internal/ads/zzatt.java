package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzatt.class */
public final class zzatt extends zzatx {
    public static final Parcelable.Creator<zzatt> CREATOR = new zzats();
    public final String zza;
    public final String zzb;
    public final int zzc;
    public final byte[] zzd;

    public zzatt(Parcel parcel) {
        super("APIC");
        this.zza = parcel.readString();
        this.zzb = parcel.readString();
        this.zzc = parcel.readInt();
        this.zzd = parcel.createByteArray();
    }

    public zzatt(String str, String str2, int i, byte[] bArr) {
        super("APIC");
        this.zza = str;
        this.zzb = null;
        this.zzc = 3;
        this.zzd = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzatt.class != obj.getClass()) {
            return false;
        }
        zzatt zzattVar = (zzatt) obj;
        return this.zzc == zzattVar.zzc && zzaxb.zzo(this.zza, zzattVar.zza) && zzaxb.zzo(this.zzb, zzattVar.zzb) && Arrays.equals(this.zzd, zzattVar.zzd);
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

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeString(this.zzb);
        parcel.writeInt(this.zzc);
        parcel.writeByteArray(this.zzd);
    }
}
