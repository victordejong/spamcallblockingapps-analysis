package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcbj.class */
public final class zzcbj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcbj> CREATOR = new zzcbk();
    @SafeParcelable.Field
    public final Bundle zza;
    @SafeParcelable.Field
    public final zzcgz zzb;
    @SafeParcelable.Field
    public final ApplicationInfo zzc;
    @SafeParcelable.Field
    public final String zzd;
    @SafeParcelable.Field
    public final List<String> zze;
    @SafeParcelable.Field
    public final PackageInfo zzf;
    @SafeParcelable.Field
    public final String zzg;
    @SafeParcelable.Field
    public final String zzh;
    @SafeParcelable.Field
    public zzfcj zzi;
    @SafeParcelable.Field
    public String zzj;

    @SafeParcelable.Constructor
    public zzcbj(@SafeParcelable.Param(id = 1) Bundle bundle, @SafeParcelable.Param(id = 2) zzcgz zzcgzVar, @SafeParcelable.Param(id = 3) ApplicationInfo applicationInfo, @SafeParcelable.Param(id = 4) String str, @SafeParcelable.Param(id = 5) List<String> list, @SafeParcelable.Param(id = 6) PackageInfo packageInfo, @SafeParcelable.Param(id = 7) String str2, @SafeParcelable.Param(id = 9) String str3, @SafeParcelable.Param(id = 10) zzfcj zzfcjVar, @SafeParcelable.Param(id = 11) String str4) {
        this.zza = bundle;
        this.zzb = zzcgzVar;
        this.zzd = str;
        this.zzc = applicationInfo;
        this.zze = list;
        this.zzf = packageInfo;
        this.zzg = str2;
        this.zzh = str3;
        this.zzi = zzfcjVar;
        this.zzj = str4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38860c(parcel, 1, this.zza, false);
        SafeParcelWriter.m38847p(parcel, 2, this.zzb, i, false);
        SafeParcelWriter.m38847p(parcel, 3, this.zzc, i, false);
        SafeParcelWriter.m38846q(parcel, 4, this.zzd, false);
        SafeParcelWriter.m38844s(parcel, 5, this.zze, false);
        SafeParcelWriter.m38847p(parcel, 6, this.zzf, i, false);
        SafeParcelWriter.m38846q(parcel, 7, this.zzg, false);
        SafeParcelWriter.m38846q(parcel, 9, this.zzh, false);
        SafeParcelWriter.m38847p(parcel, 10, this.zzi, i, false);
        SafeParcelWriter.m38846q(parcel, 11, this.zzj, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
