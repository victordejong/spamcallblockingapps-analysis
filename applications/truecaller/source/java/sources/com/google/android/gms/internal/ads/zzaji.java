package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaji.class */
public final class zzaji extends zzajx {
    public static final Parcelable.Creator<zzaji> CREATOR = new zzajh();
    public final String zza;
    public final String zzb;
    public final int zzc;
    public final byte[] zzd;

    public zzaji(Parcel parcel) {
        super("APIC");
        String readString = parcel.readString();
        int i = zzamq.zza;
        this.zza = readString;
        this.zzb = parcel.readString();
        this.zzc = parcel.readInt();
        this.zzd = (byte[]) zzamq.zzd(parcel.createByteArray());
    }

    public zzaji(String str, String str2, int i, byte[] bArr) {
        super("APIC");
        this.zza = str;
        this.zzb = str2;
        this.zzc = i;
        this.zzd = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzaji.class != obj.getClass()) {
            return false;
        }
        zzaji zzajiVar = (zzaji) obj;
        return this.zzc == zzajiVar.zzc && zzamq.zzc(this.zza, zzajiVar.zza) && zzamq.zzc(this.zzb, zzajiVar.zzb) && Arrays.equals(this.zzd, zzajiVar.zzd);
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

    @Override // com.google.android.gms.internal.ads.zzajx
    public final String toString() {
        String str = this.zzf;
        String str2 = this.zza;
        String str3 = this.zzb;
        StringBuilder sb = new StringBuilder(C22128a.m8642b(String.valueOf(str).length(), 25, String.valueOf(str2).length(), String.valueOf(str3).length()));
        C22128a.m8666T0(sb, str, ": mimeType=", str2, ", description=");
        sb.append(str3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeString(this.zzb);
        parcel.writeInt(this.zzc);
        parcel.writeByteArray(this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzajx, com.google.android.gms.internal.ads.zzaiu
    public final void zza(zzagm zzagmVar) {
        zzagmVar.zzx(this.zzd, this.zzc);
    }
}
