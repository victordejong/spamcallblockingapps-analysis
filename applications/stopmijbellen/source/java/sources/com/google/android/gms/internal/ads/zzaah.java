package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaah.class */
public final class zzaah implements zzdc {
    public static final Parcelable.Creator<zzaah> CREATOR = new zzaaf();
    public final String zza;
    public final byte[] zzb;
    public final int zzc;
    public final int zzd;

    public /* synthetic */ zzaah(Parcel parcel, zzaag zzaagVar) {
        String readString = parcel.readString();
        int i = zzfn.zza;
        this.zza = readString;
        this.zzb = (byte[]) zzfn.zzC(parcel.createByteArray());
        this.zzc = parcel.readInt();
        this.zzd = parcel.readInt();
    }

    public zzaah(String str, byte[] bArr, int i, int i2) {
        this.zza = str;
        this.zzb = bArr;
        this.zzc = i;
        this.zzd = i2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzaah.class != obj.getClass()) {
            return false;
        }
        zzaah zzaahVar = (zzaah) obj;
        return this.zza.equals(zzaahVar.zza) && Arrays.equals(this.zzb, zzaahVar.zzb) && this.zzc == zzaahVar.zzc && this.zzd == zzaahVar.zzd;
    }

    public final int hashCode() {
        return ((((Arrays.hashCode(this.zzb) + C1676a.m4793d(this.zza, 527, 31)) * 31) + this.zzc) * 31) + this.zzd;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zza);
        return valueOf.length() != 0 ? "mdta: key=".concat(valueOf) : new String("mdta: key=");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeByteArray(this.zzb);
        parcel.writeInt(this.zzc);
        parcel.writeInt(this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final /* synthetic */ void zza(zzbc zzbcVar) {
    }
}
