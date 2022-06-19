package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzarw.class */
public final class zzarw extends zzasa {
    public static final Parcelable.Creator<zzarw> CREATOR = new zzarv();
    public final String zza;
    public final String zzb;
    public final int zzc;
    public final byte[] zzd;

    public zzarw(Parcel parcel) {
        super("APIC");
        this.zza = parcel.readString();
        this.zzb = parcel.readString();
        this.zzc = parcel.readInt();
        this.zzd = parcel.createByteArray();
    }

    public zzarw(String str, String str2, int i, byte[] bArr) {
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
        if (obj == null || zzarw.class != obj.getClass()) {
            return false;
        }
        zzarw zzarwVar = (zzarw) obj;
        return this.zzc == zzarwVar.zzc && zzave.zza(this.zza, zzarwVar.zza) && zzave.zza(this.zzb, zzarwVar.zzb) && Arrays.equals(this.zzd, zzarwVar.zzd);
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
