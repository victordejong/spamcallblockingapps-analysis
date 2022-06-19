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
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
@SafeParcelable.Class(creator = "NonagonRequestParcelCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdq.class */
public final class zzcdq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcdq> CREATOR = new zzcdr();
    @SafeParcelable.Field(m4805id = 1)
    public final Bundle zza;
    @SafeParcelable.Field(m4805id = 2)
    public final zzcjf zzb;
    @SafeParcelable.Field(m4805id = 3)
    public final ApplicationInfo zzc;
    @SafeParcelable.Field(m4805id = 4)
    public final String zzd;
    @SafeParcelable.Field(m4805id = 5)
    public final List<String> zze;
    @SafeParcelable.Field(m4805id = 6)
    public final PackageInfo zzf;
    @SafeParcelable.Field(m4805id = 7)
    public final String zzg;
    @SafeParcelable.Field(m4805id = 9)
    public final String zzh;
    @SafeParcelable.Field(m4805id = 10)
    public zzffu zzi;
    @SafeParcelable.Field(m4805id = 11)
    public String zzj;

    @SafeParcelable.Constructor
    public zzcdq(@SafeParcelable.Param(m4804id = 1) Bundle bundle, @SafeParcelable.Param(m4804id = 2) zzcjf zzcjfVar, @SafeParcelable.Param(m4804id = 3) ApplicationInfo applicationInfo, @SafeParcelable.Param(m4804id = 4) String str, @SafeParcelable.Param(m4804id = 5) List<String> list, @SafeParcelable.Param(m4804id = 6) PackageInfo packageInfo, @SafeParcelable.Param(m4804id = 7) String str2, @SafeParcelable.Param(m4804id = 9) String str3, @SafeParcelable.Param(m4804id = 10) zzffu zzffuVar, @SafeParcelable.Param(m4804id = 11) String str4) {
        this.zza = bundle;
        this.zzb = zzcjfVar;
        this.zzd = str;
        this.zzc = applicationInfo;
        this.zze = list;
        this.zzf = packageInfo;
        this.zzg = str2;
        this.zzh = str3;
        this.zzi = zzffuVar;
        this.zzj = str4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBundle(parcel, 1, this.zza, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzb, i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzc, i, false);
        SafeParcelWriter.writeString(parcel, 4, this.zzd, false);
        SafeParcelWriter.writeStringList(parcel, 5, this.zze, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.zzf, i, false);
        SafeParcelWriter.writeString(parcel, 7, this.zzg, false);
        SafeParcelWriter.writeString(parcel, 9, this.zzh, false);
        SafeParcelWriter.writeParcelable(parcel, 10, this.zzi, i, false);
        SafeParcelWriter.writeString(parcel, 11, this.zzj, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
