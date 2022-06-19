package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzavh.class */
public final class zzavh implements Parcelable {
    public static final Parcelable.Creator<zzavh> CREATOR = new zzavg();
    public final int zza;
    public final int zzb;
    public final int zzc;
    public final byte[] zzd;
    private int zze;

    public zzavh(int i, int i2, int i3, byte[] bArr) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = bArr;
    }

    public zzavh(Parcel parcel) {
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
        if (obj == null || zzavh.class != obj.getClass()) {
            return false;
        }
        zzavh zzavhVar = (zzavh) obj;
        return this.zza == zzavhVar.zza && this.zzb == zzavhVar.zzb && this.zzc == zzavhVar.zzc && Arrays.equals(this.zzd, zzavhVar.zzd);
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
        StringBuilder m8546z = C22128a.m8546z(55, "ColorInfo(", i, ", ", i2);
        m8546z.append(", ");
        m8546z.append(i3);
        m8546z.append(", ");
        m8546z.append(z);
        m8546z.append(")");
        return m8546z.toString();
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
