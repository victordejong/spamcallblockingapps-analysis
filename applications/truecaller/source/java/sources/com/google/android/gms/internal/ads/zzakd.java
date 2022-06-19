package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzakd.class */
public final class zzakd extends zzajx {
    public static final Parcelable.Creator<zzakd> CREATOR = new zzakc();
    public final String zza;
    public final byte[] zzb;

    public zzakd(Parcel parcel) {
        super("PRIV");
        String readString = parcel.readString();
        int i = zzamq.zza;
        this.zza = readString;
        this.zzb = (byte[]) zzamq.zzd(parcel.createByteArray());
    }

    public zzakd(String str, byte[] bArr) {
        super("PRIV");
        this.zza = str;
        this.zzb = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzakd.class != obj.getClass()) {
            return false;
        }
        zzakd zzakdVar = (zzakd) obj;
        return zzamq.zzc(this.zza, zzakdVar.zza) && Arrays.equals(this.zzb, zzakdVar.zzb);
    }

    public final int hashCode() {
        String str = this.zza;
        return Arrays.hashCode(this.zzb) + (((str != null ? str.hashCode() : 0) + 527) * 31);
    }

    @Override // com.google.android.gms.internal.ads.zzajx
    public final String toString() {
        String str = this.zzf;
        String str2 = this.zza;
        return C22128a.m8610j(new StringBuilder(String.valueOf(str).length() + 8 + String.valueOf(str2).length()), str, ": owner=", str2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeByteArray(this.zzb);
    }
}
