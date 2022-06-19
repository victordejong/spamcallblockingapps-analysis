package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;
@SafeParcelable.Class(creator = "AdRequestParcelCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfd.class */
public final class zzbfd extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbfd> CREATOR = new zzbff();
    @SafeParcelable.Field(m4805id = 1)
    public final int zza;
    @Deprecated
    @SafeParcelable.Field(m4805id = 2)
    public final long zzb;
    @SafeParcelable.Field(m4805id = 3)
    public final Bundle zzc;
    @Deprecated
    @SafeParcelable.Field(m4805id = 4)
    public final int zzd;
    @SafeParcelable.Field(m4805id = 5)
    public final List<String> zze;
    @SafeParcelable.Field(m4805id = 6)
    public final boolean zzf;
    @SafeParcelable.Field(m4805id = 7)
    public final int zzg;
    @SafeParcelable.Field(m4805id = 8)
    public final boolean zzh;
    @SafeParcelable.Field(m4805id = 9)
    public final String zzi;
    @SafeParcelable.Field(m4805id = 10)
    public final zzbkm zzj;
    @SafeParcelable.Field(m4805id = 11)
    public final Location zzk;
    @SafeParcelable.Field(m4805id = 12)
    public final String zzl;
    @SafeParcelable.Field(m4805id = 13)
    public final Bundle zzm;
    @SafeParcelable.Field(m4805id = 14)
    public final Bundle zzn;
    @SafeParcelable.Field(m4805id = 15)
    public final List<String> zzo;
    @SafeParcelable.Field(m4805id = 16)
    public final String zzp;
    @SafeParcelable.Field(m4805id = 17)
    public final String zzq;
    @Deprecated
    @SafeParcelable.Field(m4805id = 18)
    public final boolean zzr;
    @SafeParcelable.Field(m4805id = 19)
    public final zzbeu zzs;
    @SafeParcelable.Field(m4805id = 20)
    public final int zzt;
    @SafeParcelable.Field(m4805id = 21)
    public final String zzu;
    @SafeParcelable.Field(m4805id = 22)
    public final List<String> zzv;
    @SafeParcelable.Field(m4805id = 23)
    public final int zzw;
    @SafeParcelable.Field(m4805id = 24)
    public final String zzx;

    @SafeParcelable.Constructor
    public zzbfd(@SafeParcelable.Param(m4804id = 1) int i, @SafeParcelable.Param(m4804id = 2) long j, @SafeParcelable.Param(m4804id = 3) Bundle bundle, @SafeParcelable.Param(m4804id = 4) int i2, @SafeParcelable.Param(m4804id = 5) List<String> list, @SafeParcelable.Param(m4804id = 6) boolean z, @SafeParcelable.Param(m4804id = 7) int i3, @SafeParcelable.Param(m4804id = 8) boolean z2, @SafeParcelable.Param(m4804id = 9) String str, @SafeParcelable.Param(m4804id = 10) zzbkm zzbkmVar, @SafeParcelable.Param(m4804id = 11) Location location, @SafeParcelable.Param(m4804id = 12) String str2, @SafeParcelable.Param(m4804id = 13) Bundle bundle2, @SafeParcelable.Param(m4804id = 14) Bundle bundle3, @SafeParcelable.Param(m4804id = 15) List<String> list2, @SafeParcelable.Param(m4804id = 16) String str3, @SafeParcelable.Param(m4804id = 17) String str4, @SafeParcelable.Param(m4804id = 18) boolean z3, @SafeParcelable.Param(m4804id = 19) zzbeu zzbeuVar, @SafeParcelable.Param(m4804id = 20) int i4, @SafeParcelable.Param(m4804id = 21) String str5, @SafeParcelable.Param(m4804id = 22) List<String> list3, @SafeParcelable.Param(m4804id = 23) int i5, @SafeParcelable.Param(m4804id = 24) String str6) {
        this.zza = i;
        this.zzb = j;
        this.zzc = bundle == null ? new Bundle() : bundle;
        this.zzd = i2;
        this.zze = list;
        this.zzf = z;
        this.zzg = i3;
        this.zzh = z2;
        this.zzi = str;
        this.zzj = zzbkmVar;
        this.zzk = location;
        this.zzl = str2;
        this.zzm = bundle2 == null ? new Bundle() : bundle2;
        this.zzn = bundle3;
        this.zzo = list2;
        this.zzp = str3;
        this.zzq = str4;
        this.zzr = z3;
        this.zzs = zzbeuVar;
        this.zzt = i4;
        this.zzu = str5;
        this.zzv = list3 == null ? new ArrayList() : list3;
        this.zzw = i5;
        this.zzx = str6;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzbfd)) {
            return false;
        }
        zzbfd zzbfdVar = (zzbfd) obj;
        return this.zza == zzbfdVar.zza && this.zzb == zzbfdVar.zzb && zzcja.zza(this.zzc, zzbfdVar.zzc) && this.zzd == zzbfdVar.zzd && Objects.equal(this.zze, zzbfdVar.zze) && this.zzf == zzbfdVar.zzf && this.zzg == zzbfdVar.zzg && this.zzh == zzbfdVar.zzh && Objects.equal(this.zzi, zzbfdVar.zzi) && Objects.equal(this.zzj, zzbfdVar.zzj) && Objects.equal(this.zzk, zzbfdVar.zzk) && Objects.equal(this.zzl, zzbfdVar.zzl) && zzcja.zza(this.zzm, zzbfdVar.zzm) && zzcja.zza(this.zzn, zzbfdVar.zzn) && Objects.equal(this.zzo, zzbfdVar.zzo) && Objects.equal(this.zzp, zzbfdVar.zzp) && Objects.equal(this.zzq, zzbfdVar.zzq) && this.zzr == zzbfdVar.zzr && this.zzt == zzbfdVar.zzt && Objects.equal(this.zzu, zzbfdVar.zzu) && Objects.equal(this.zzv, zzbfdVar.zzv) && this.zzw == zzbfdVar.zzw && Objects.equal(this.zzx, zzbfdVar.zzx);
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.zza), Long.valueOf(this.zzb), this.zzc, Integer.valueOf(this.zzd), this.zze, Boolean.valueOf(this.zzf), Integer.valueOf(this.zzg), Boolean.valueOf(this.zzh), this.zzi, this.zzj, this.zzk, this.zzl, this.zzm, this.zzn, this.zzo, this.zzp, this.zzq, Boolean.valueOf(this.zzr), Integer.valueOf(this.zzt), this.zzu, this.zzv, Integer.valueOf(this.zzw), this.zzx);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeLong(parcel, 2, this.zzb);
        SafeParcelWriter.writeBundle(parcel, 3, this.zzc, false);
        SafeParcelWriter.writeInt(parcel, 4, this.zzd);
        SafeParcelWriter.writeStringList(parcel, 5, this.zze, false);
        SafeParcelWriter.writeBoolean(parcel, 6, this.zzf);
        SafeParcelWriter.writeInt(parcel, 7, this.zzg);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzh);
        SafeParcelWriter.writeString(parcel, 9, this.zzi, false);
        SafeParcelWriter.writeParcelable(parcel, 10, this.zzj, i, false);
        SafeParcelWriter.writeParcelable(parcel, 11, this.zzk, i, false);
        SafeParcelWriter.writeString(parcel, 12, this.zzl, false);
        SafeParcelWriter.writeBundle(parcel, 13, this.zzm, false);
        SafeParcelWriter.writeBundle(parcel, 14, this.zzn, false);
        SafeParcelWriter.writeStringList(parcel, 15, this.zzo, false);
        SafeParcelWriter.writeString(parcel, 16, this.zzp, false);
        SafeParcelWriter.writeString(parcel, 17, this.zzq, false);
        SafeParcelWriter.writeBoolean(parcel, 18, this.zzr);
        SafeParcelWriter.writeParcelable(parcel, 19, this.zzs, i, false);
        SafeParcelWriter.writeInt(parcel, 20, this.zzt);
        SafeParcelWriter.writeString(parcel, 21, this.zzu, false);
        SafeParcelWriter.writeStringList(parcel, 22, this.zzv, false);
        SafeParcelWriter.writeInt(parcel, 23, this.zzw);
        SafeParcelWriter.writeString(parcel, 24, this.zzx, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
