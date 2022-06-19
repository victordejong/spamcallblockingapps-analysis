package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzevd.class */
public final class zzevd implements zzevm<Bundle> {
    public final boolean zza;
    public final boolean zzb;
    public final String zzc;
    public final boolean zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;

    public zzevd(boolean z, boolean z2, String str, boolean z3, int i, int i2, int i3) {
        this.zza = z;
        this.zzb = z2;
        this.zzc = str;
        this.zzd = z3;
        this.zze = i;
        this.zzf = i2;
        this.zzg = i3;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("js", this.zzc);
        bundle2.putBoolean("is_nonagon", true);
        bundle2.putString("extra_caps", (String) zzbgq.zzc().zzb(zzblj.zzcn));
        bundle2.putInt("target_api", this.zze);
        bundle2.putInt("dv", this.zzf);
        bundle2.putInt("lv", this.zzg);
        Bundle zza = zzfeq.zza(bundle2, "sdk_env");
        zza.putBoolean("mf", zzbmx.zza.zze().booleanValue());
        zza.putBoolean("instant_app", this.zza);
        zza.putBoolean("lite", this.zzb);
        zza.putBoolean("is_privileged_process", this.zzd);
        bundle2.putBundle("sdk_env", zza);
        Bundle zza2 = zzfeq.zza(zza, "build_meta");
        zza2.putString("cl", "428884702");
        zza2.putString("rapid_rc", "dev");
        zza2.putString("rapid_rollup", "HEAD");
        zza.putBundle("build_meta", zza2);
    }
}
