package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.C0608b;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaaa.class */
public final class zzaaa extends zzzu {
    public static final Parcelable.Creator<zzaaa> CREATOR = new zzzz();
    public final String zza;
    public final byte[] zzb;

    public zzaaa(Parcel parcel) {
        super("PRIV");
        String readString = parcel.readString();
        int i = zzfn.zza;
        this.zza = readString;
        this.zzb = (byte[]) zzfn.zzC(parcel.createByteArray());
    }

    public zzaaa(String str, byte[] bArr) {
        super("PRIV");
        this.zza = str;
        this.zzb = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzaaa.class != obj.getClass()) {
            return false;
        }
        zzaaa zzaaaVar = (zzaaa) obj;
        return zzfn.zzP(this.zza, zzaaaVar.zza) && Arrays.equals(this.zzb, zzaaaVar.zzb);
    }

    public final int hashCode() {
        String str = this.zza;
        return Arrays.hashCode(this.zzb) + (((str != null ? str.hashCode() : 0) + 527) * 31);
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final String toString() {
        String str = this.zzf;
        String str2 = this.zza;
        return C0608b.m7625j(new StringBuilder(String.valueOf(str).length() + 8 + String.valueOf(str2).length()), str, ": owner=", str2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeByteArray(this.zzb);
    }
}
