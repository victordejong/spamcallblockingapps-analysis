package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.p012v4.media.C0082b;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxe.class */
public final class zzaxe implements Parcelable {
    public static final Parcelable.Creator<zzaxe> CREATOR = new zzaxd();
    public final int zza;
    public final int zzb;
    public final int zzc;
    public final byte[] zzd;
    private int zze;

    public zzaxe(int i, int i2, int i3, byte[] bArr) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = bArr;
    }

    public zzaxe(Parcel parcel) {
        this.zza = parcel.readInt();
        this.zzb = parcel.readInt();
        this.zzc = parcel.readInt();
        this.zzd = parcel.readInt() != 0 ? parcel.createByteArray() : null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzaxe.class != obj.getClass()) {
            return false;
        }
        zzaxe zzaxeVar = (zzaxe) obj;
        return this.zza == zzaxeVar.zza && this.zzb == zzaxeVar.zzb && this.zzc == zzaxeVar.zzc && Arrays.equals(this.zzd, zzaxeVar.zzd);
    }

    public final int hashCode() {
        int i = this.zze;
        if (i == 0) {
            int i2 = this.zza;
            int i3 = this.zzb;
            int hashCode = Arrays.hashCode(this.zzd) + ((((((i2 + 527) * 31) + i3) * 31) + this.zzc) * 31);
            this.zze = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        int i = this.zza;
        int i2 = this.zzb;
        int i3 = this.zzc;
        boolean z = this.zzd != null;
        StringBuilder m8753i = C0082b.m8753i(55, "ColorInfo(", i, ", ", i2);
        m8753i.append(", ");
        m8753i.append(i3);
        m8753i.append(", ");
        m8753i.append(z);
        m8753i.append(")");
        return m8753i.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.zza);
        parcel.writeInt(this.zzb);
        parcel.writeInt(this.zzc);
        parcel.writeInt(this.zzd != null ? 1 : 0);
        byte[] bArr = this.zzd;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
    }
}
