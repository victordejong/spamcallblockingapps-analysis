package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaiz.class */
public final class zzaiz implements zzaiu {
    public static final Parcelable.Creator<zzaiz> CREATOR = new zzaiy();
    private static final zzafv zzf;
    private static final zzafv zzg;
    public final String zza;
    public final String zzb;
    public final long zzc;
    public final long zzd;
    public final byte[] zze;
    private int zzh;

    static {
        zzaft zzaftVar = new zzaft();
        zzaftVar.zzN("application/id3");
        zzf = zzaftVar.zzah();
        zzaft zzaftVar2 = new zzaft();
        zzaftVar2.zzN("application/x-scte35");
        zzg = zzaftVar2.zzah();
    }

    public zzaiz(Parcel parcel) {
        String readString = parcel.readString();
        int i = zzamq.zza;
        this.zza = readString;
        this.zzb = parcel.readString();
        this.zzc = parcel.readLong();
        this.zzd = parcel.readLong();
        this.zze = (byte[]) zzamq.zzd(parcel.createByteArray());
    }

    public zzaiz(String str, String str2, long j, long j2, byte[] bArr) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = j;
        this.zzd = j2;
        this.zze = bArr;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzaiz.class != obj.getClass()) {
            return false;
        }
        zzaiz zzaizVar = (zzaiz) obj;
        return this.zzc == zzaizVar.zzc && this.zzd == zzaizVar.zzd && zzamq.zzc(this.zza, zzaizVar.zza) && zzamq.zzc(this.zzb, zzaizVar.zzb) && Arrays.equals(this.zze, zzaizVar.zze);
    }

    public final int hashCode() {
        int i = this.zzh;
        int i2 = i;
        if (i == 0) {
            String str = this.zza;
            int i3 = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.zzb;
            if (str2 != null) {
                i3 = str2.hashCode();
            }
            long j = this.zzc;
            long j2 = this.zzd;
            i2 = ((((((((hashCode + 527) * 31) + i3) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + ((int) ((j2 >>> 32) ^ j2))) * 31) + Arrays.hashCode(this.zze);
            this.zzh = i2;
        }
        return i2;
    }

    public final String toString() {
        String str = this.zza;
        long j = this.zzd;
        long j2 = this.zzc;
        String str2 = this.zzb;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 79 + String.valueOf(str2).length());
        C22128a.m8669S0(sb, "EMSG: scheme=", str, ", id=");
        sb.append(j);
        C22128a.m8675Q0(sb, ", durationMs=", j2, ", value=");
        sb.append(str2);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeString(this.zzb);
        parcel.writeLong(this.zzc);
        parcel.writeLong(this.zzd);
        parcel.writeByteArray(this.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzaiu
    public final void zza(zzagm zzagmVar) {
    }
}
