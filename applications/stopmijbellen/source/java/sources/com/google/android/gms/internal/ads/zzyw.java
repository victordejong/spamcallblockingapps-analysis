package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p007a6.C0028d;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyw.class */
public final class zzyw implements zzdc {
    public static final Parcelable.Creator<zzyw> CREATOR = new zzyv();
    private static final zzab zzf;
    private static final zzab zzg;
    public final String zza;
    public final String zzb;
    public final long zzc;
    public final long zzd;
    public final byte[] zze;
    private int zzh;

    static {
        zzz zzzVar = new zzz();
        zzzVar.zzS("application/id3");
        zzf = zzzVar.zzY();
        zzz zzzVar2 = new zzz();
        zzzVar2.zzS("application/x-scte35");
        zzg = zzzVar2.zzY();
    }

    public zzyw(Parcel parcel) {
        String readString = parcel.readString();
        int i = zzfn.zza;
        this.zza = readString;
        this.zzb = parcel.readString();
        this.zzc = parcel.readLong();
        this.zzd = parcel.readLong();
        this.zze = (byte[]) zzfn.zzC(parcel.createByteArray());
    }

    public zzyw(String str, String str2, long j, long j2, byte[] bArr) {
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
        if (obj == null || zzyw.class != obj.getClass()) {
            return false;
        }
        zzyw zzywVar = (zzyw) obj;
        return this.zzc == zzywVar.zzc && this.zzd == zzywVar.zzd && zzfn.zzP(this.zza, zzywVar.zza) && zzfn.zzP(this.zzb, zzywVar.zzb) && Arrays.equals(this.zze, zzywVar.zze);
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
        sb.append("EMSG: scheme=");
        sb.append(str);
        sb.append(", id=");
        sb.append(j);
        C0028d.m8911i(sb, ", durationMs=", j2, ", value=");
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

    @Override // com.google.android.gms.internal.ads.zzdc
    public final /* synthetic */ void zza(zzbc zzbcVar) {
    }
}
