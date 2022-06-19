package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeuz.class */
public final class zzeuz implements zzevm<Bundle> {
    public final String zza;
    public final String zzb;
    public final String zzc;
    public final String zzd;
    public final Long zze;

    public zzeuz(String str, String str2, String str3, String str4, Long l) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = str4;
        this.zze = l;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzfeq.zzc(bundle2, "gmp_app_id", this.zza);
        zzfeq.zzc(bundle2, "fbs_aiid", this.zzb);
        zzfeq.zzc(bundle2, "fbs_aeid", this.zzc);
        zzfeq.zzc(bundle2, "apm_id_origin", this.zzd);
        Long l = this.zze;
        if (l != null) {
            bundle2.putLong("sai_timeout", l.longValue());
        }
    }
}
