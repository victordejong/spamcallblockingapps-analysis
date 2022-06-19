package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzajo.class */
public final class zzajo extends zzajx {
    public static final Parcelable.Creator<zzajo> CREATOR = new zzajn();
    public final String zza;
    public final boolean zzb;
    public final boolean zzc;
    public final String[] zzd;
    private final zzajx[] zze;

    public zzajo(Parcel parcel) {
        super("CTOC");
        String readString = parcel.readString();
        int i = zzamq.zza;
        this.zza = readString;
        this.zzb = parcel.readByte() != 0;
        this.zzc = parcel.readByte() != 0;
        this.zzd = (String[]) zzamq.zzd(parcel.createStringArray());
        int readInt = parcel.readInt();
        this.zze = new zzajx[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            this.zze[i2] = (zzajx) parcel.readParcelable(zzajx.class.getClassLoader());
        }
    }

    public zzajo(String str, boolean z, boolean z2, String[] strArr, zzajx[] zzajxVarArr) {
        super("CTOC");
        this.zza = str;
        this.zzb = z;
        this.zzc = z2;
        this.zzd = strArr;
        this.zze = zzajxVarArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzajo.class != obj.getClass()) {
            return false;
        }
        zzajo zzajoVar = (zzajo) obj;
        return this.zzb == zzajoVar.zzb && this.zzc == zzajoVar.zzc && zzamq.zzc(this.zza, zzajoVar.zza) && Arrays.equals(this.zzd, zzajoVar.zzd) && Arrays.equals(this.zze, zzajoVar.zze);
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
        for (zzajx zzajxVar : this.zze) {
            parcel.writeParcelable(zzajxVar, 0);
        }
    }
}
