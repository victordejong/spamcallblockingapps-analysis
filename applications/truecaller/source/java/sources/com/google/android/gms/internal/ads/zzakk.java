package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzakk.class */
public final class zzakk implements zzaiu {
    public static final Parcelable.Creator<zzakk> CREATOR = new zzaki();
    public final String zza;
    public final byte[] zzb;
    public final int zzc;
    public final int zzd;

    public /* synthetic */ zzakk(Parcel parcel, zzakj zzakjVar) {
        String readString = parcel.readString();
        int i = zzamq.zza;
        this.zza = readString;
        this.zzb = (byte[]) zzamq.zzd(parcel.createByteArray());
        this.zzc = parcel.readInt();
        this.zzd = parcel.readInt();
    }

    public zzakk(String str, byte[] bArr, int i, int i2) {
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
        if (obj == null || zzakk.class != obj.getClass()) {
            return false;
        }
        zzakk zzakkVar = (zzakk) obj;
        return this.zza.equals(zzakkVar.zza) && Arrays.equals(this.zzb, zzakkVar.zzb) && this.zzc == zzakkVar.zzc && this.zzd == zzakkVar.zzd;
    }

    public final int hashCode() {
        return ((((Arrays.hashCode(this.zzb) + C22128a.m8579q2(this.zza, 527, 31)) * 31) + this.zzc) * 31) + this.zzd;
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

    @Override // com.google.android.gms.internal.ads.zzaiu
    public final void zza(zzagm zzagmVar) {
    }
}
