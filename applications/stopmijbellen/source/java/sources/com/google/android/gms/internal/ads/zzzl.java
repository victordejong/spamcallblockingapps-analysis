package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzzl.class */
public final class zzzl extends zzzu {
    public static final Parcelable.Creator<zzzl> CREATOR = new zzzk();
    public final String zza;
    public final boolean zzb;
    public final boolean zzc;
    public final String[] zzd;
    private final zzzu[] zze;

    public zzzl(Parcel parcel) {
        super("CTOC");
        String readString = parcel.readString();
        int i = zzfn.zza;
        this.zza = readString;
        this.zzb = parcel.readByte() != 0;
        this.zzc = parcel.readByte() != 0;
        this.zzd = (String[]) zzfn.zzC(parcel.createStringArray());
        int readInt = parcel.readInt();
        this.zze = new zzzu[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            this.zze[i2] = (zzzu) parcel.readParcelable(zzzu.class.getClassLoader());
        }
    }

    public zzzl(String str, boolean z, boolean z2, String[] strArr, zzzu[] zzzuVarArr) {
        super("CTOC");
        this.zza = str;
        this.zzb = z;
        this.zzc = z2;
        this.zzd = strArr;
        this.zze = zzzuVarArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzzl.class != obj.getClass()) {
            return false;
        }
        zzzl zzzlVar = (zzzl) obj;
        return this.zzb == zzzlVar.zzb && this.zzc == zzzlVar.zzc && zzfn.zzP(this.zza, zzzlVar.zza) && Arrays.equals(this.zzd, zzzlVar.zzd) && Arrays.equals(this.zze, zzzlVar.zze);
    }

    public final int hashCode() {
        boolean z = this.zzb;
        boolean z2 = this.zzc;
        String str = this.zza;
        return (((((z ? 1 : 0) + 527) * 31) + (z2 ? 1 : 0)) * 31) + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeByte(this.zzb ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.zzc ? (byte) 1 : (byte) 0);
        parcel.writeStringArray(this.zzd);
        parcel.writeInt(this.zze.length);
        for (zzzu zzzuVar : this.zze) {
            parcel.writeParcelable(zzzuVar, 0);
        }
    }
}
