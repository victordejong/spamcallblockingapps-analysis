package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzg;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddx.class */
public final class zzddx {
    private final zzfie zza;
    private final zzcjf zzb;
    private final ApplicationInfo zzc;
    private final String zzd;
    private final List<String> zze;
    private final PackageInfo zzf;
    private final zzgpl<zzfxa<String>> zzg;
    private final String zzh;
    private final zzevq<Bundle> zzi;

    public zzddx(zzfie zzfieVar, zzcjf zzcjfVar, ApplicationInfo applicationInfo, String str, List<String> list, PackageInfo packageInfo, zzgpl<zzfxa<String>> zzgplVar, zzg zzgVar, String str2, zzevq<Bundle> zzevqVar) {
        this.zza = zzfieVar;
        this.zzb = zzcjfVar;
        this.zzc = applicationInfo;
        this.zzd = str;
        this.zze = list;
        this.zzf = packageInfo;
        this.zzg = zzgplVar;
        this.zzh = str2;
        this.zzi = zzevqVar;
    }

    public final /* synthetic */ zzcdq zza(zzfxa zzfxaVar) throws Exception {
        return new zzcdq((Bundle) zzfxaVar.get(), this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg.zzb().get(), this.zzh, null, null);
    }

    public final zzfxa<Bundle> zzb() {
        zzfie zzfieVar = this.zza;
        return zzfho.zzc(this.zzi.zza(new Bundle()), zzfhy.SIGNALS, zzfieVar).zza();
    }

    public final zzfxa<zzcdq> zzc() {
        final zzfxa<Bundle> zzb = zzb();
        return this.zza.zza(zzfhy.REQUEST_PARCEL, zzb, this.zzg.zzb()).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzddw
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzddx.this.zza(zzb);
            }
        }).zza();
    }
}
