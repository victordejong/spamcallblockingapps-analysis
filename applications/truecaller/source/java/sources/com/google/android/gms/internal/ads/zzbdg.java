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
import java.util.Arrays;
import java.util.List;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdg.class */
public final class zzbdg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbdg> CREATOR = new zzbdi();
    @SafeParcelable.Field
    public final int zza;
    @Deprecated
    @SafeParcelable.Field
    public final long zzb;
    @SafeParcelable.Field
    public final Bundle zzc;
    @Deprecated
    @SafeParcelable.Field
    public final int zzd;
    @SafeParcelable.Field
    public final List<String> zze;
    @SafeParcelable.Field
    public final boolean zzf;
    @SafeParcelable.Field
    public final int zzg;
    @SafeParcelable.Field
    public final boolean zzh;
    @SafeParcelable.Field
    public final String zzi;
    @SafeParcelable.Field
    public final zzbio zzj;
    @SafeParcelable.Field
    public final Location zzk;
    @SafeParcelable.Field
    public final String zzl;
    @SafeParcelable.Field
    public final Bundle zzm;
    @SafeParcelable.Field
    public final Bundle zzn;
    @SafeParcelable.Field
    public final List<String> zzo;
    @SafeParcelable.Field
    public final String zzp;
    @SafeParcelable.Field
    public final String zzq;
    @Deprecated
    @SafeParcelable.Field
    public final boolean zzr;
    @SafeParcelable.Field
    public final zzbcx zzs;
    @SafeParcelable.Field
    public final int zzt;
    @SafeParcelable.Field
    public final String zzu;
    @SafeParcelable.Field
    public final List<String> zzv;
    @SafeParcelable.Field
    public final int zzw;
    @SafeParcelable.Field
    public final String zzx;

    @SafeParcelable.Constructor
    public zzbdg(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) long j, @SafeParcelable.Param(id = 3) Bundle bundle, @SafeParcelable.Param(id = 4) int i2, @SafeParcelable.Param(id = 5) List<String> list, @SafeParcelable.Param(id = 6) boolean z, @SafeParcelable.Param(id = 7) int i3, @SafeParcelable.Param(id = 8) boolean z2, @SafeParcelable.Param(id = 9) String str, @SafeParcelable.Param(id = 10) zzbio zzbioVar, @SafeParcelable.Param(id = 11) Location location, @SafeParcelable.Param(id = 12) String str2, @SafeParcelable.Param(id = 13) Bundle bundle2, @SafeParcelable.Param(id = 14) Bundle bundle3, @SafeParcelable.Param(id = 15) List<String> list2, @SafeParcelable.Param(id = 16) String str3, @SafeParcelable.Param(id = 17) String str4, @SafeParcelable.Param(id = 18) boolean z3, @SafeParcelable.Param(id = 19) zzbcx zzbcxVar, @SafeParcelable.Param(id = 20) int i4, @SafeParcelable.Param(id = 21) String str5, @SafeParcelable.Param(id = 22) List<String> list3, @SafeParcelable.Param(id = 23) int i5, @SafeParcelable.Param(id = 24) String str6) {
        this.zza = i;
        this.zzb = j;
        this.zzc = bundle == null ? new Bundle() : bundle;
        this.zzd = i2;
        this.zze = list;
        this.zzf = z;
        this.zzg = i3;
        this.zzh = z2;
        this.zzi = str;
        this.zzj = zzbioVar;
        this.zzk = location;
        this.zzl = str2;
        this.zzm = bundle2 == null ? new Bundle() : bundle2;
        this.zzn = bundle3;
        this.zzo = list2;
        this.zzp = str3;
        this.zzq = str4;
        this.zzr = z3;
        this.zzs = zzbcxVar;
        this.zzt = i4;
        this.zzu = str5;
        this.zzv = list3 == null ? new ArrayList() : list3;
        this.zzw = i5;
        this.zzx = str6;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzbdg)) {
            return false;
        }
        zzbdg zzbdgVar = (zzbdg) obj;
        return this.zza == zzbdgVar.zza && this.zzb == zzbdgVar.zzb && zzcgu.zza(this.zzc, zzbdgVar.zzc) && this.zzd == zzbdgVar.zzd && Objects.m38910a(this.zze, zzbdgVar.zze) && this.zzf == zzbdgVar.zzf && this.zzg == zzbdgVar.zzg && this.zzh == zzbdgVar.zzh && Objects.m38910a(this.zzi, zzbdgVar.zzi) && Objects.m38910a(this.zzj, zzbdgVar.zzj) && Objects.m38910a(this.zzk, zzbdgVar.zzk) && Objects.m38910a(this.zzl, zzbdgVar.zzl) && zzcgu.zza(this.zzm, zzbdgVar.zzm) && zzcgu.zza(this.zzn, zzbdgVar.zzn) && Objects.m38910a(this.zzo, zzbdgVar.zzo) && Objects.m38910a(this.zzp, zzbdgVar.zzp) && Objects.m38910a(this.zzq, zzbdgVar.zzq) && this.zzr == zzbdgVar.zzr && this.zzt == zzbdgVar.zzt && Objects.m38910a(this.zzu, zzbdgVar.zzu) && Objects.m38910a(this.zzv, zzbdgVar.zzv) && this.zzw == zzbdgVar.zzw && Objects.m38910a(this.zzx, zzbdgVar.zzx);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zza), Long.valueOf(this.zzb), this.zzc, Integer.valueOf(this.zzd), this.zze, Boolean.valueOf(this.zzf), Integer.valueOf(this.zzg), Boolean.valueOf(this.zzh), this.zzi, this.zzj, this.zzk, this.zzl, this.zzm, this.zzn, this.zzo, this.zzp, this.zzq, Boolean.valueOf(this.zzr), Integer.valueOf(this.zzt), this.zzu, this.zzv, Integer.valueOf(this.zzw), this.zzx});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.zza;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        long j = this.zzb;
        parcel.writeInt(524290);
        parcel.writeLong(j);
        SafeParcelWriter.m38860c(parcel, 3, this.zzc, false);
        int i3 = this.zzd;
        parcel.writeInt(262148);
        parcel.writeInt(i3);
        SafeParcelWriter.m38844s(parcel, 5, this.zze, false);
        boolean z = this.zzf;
        parcel.writeInt(262150);
        parcel.writeInt(z ? 1 : 0);
        int i4 = this.zzg;
        parcel.writeInt(262151);
        parcel.writeInt(i4);
        boolean z2 = this.zzh;
        parcel.writeInt(262152);
        parcel.writeInt(z2 ? 1 : 0);
        SafeParcelWriter.m38846q(parcel, 9, this.zzi, false);
        SafeParcelWriter.m38847p(parcel, 10, this.zzj, i, false);
        SafeParcelWriter.m38847p(parcel, 11, this.zzk, i, false);
        SafeParcelWriter.m38846q(parcel, 12, this.zzl, false);
        SafeParcelWriter.m38860c(parcel, 13, this.zzm, false);
        SafeParcelWriter.m38860c(parcel, 14, this.zzn, false);
        SafeParcelWriter.m38844s(parcel, 15, this.zzo, false);
        SafeParcelWriter.m38846q(parcel, 16, this.zzp, false);
        SafeParcelWriter.m38846q(parcel, 17, this.zzq, false);
        boolean z3 = this.zzr;
        parcel.writeInt(262162);
        parcel.writeInt(z3 ? 1 : 0);
        SafeParcelWriter.m38847p(parcel, 19, this.zzs, i, false);
        int i5 = this.zzt;
        parcel.writeInt(262164);
        parcel.writeInt(i5);
        SafeParcelWriter.m38846q(parcel, 21, this.zzu, false);
        SafeParcelWriter.m38844s(parcel, 22, this.zzv, false);
        int i6 = this.zzw;
        parcel.writeInt(262167);
        parcel.writeInt(i6);
        SafeParcelWriter.m38846q(parcel, 24, this.zzx, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
