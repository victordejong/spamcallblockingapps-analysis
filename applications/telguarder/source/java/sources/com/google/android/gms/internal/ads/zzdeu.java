package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdeu.class */
public final class zzdeu implements zzdfj<Bundle> {
    private final String zzbrp;
    private final int zzduu;
    private final boolean zzdvq;
    private final boolean zzeib;
    private final boolean zzhcz;
    private final int zzhda;
    private final int zzhdb;

    public zzdeu(boolean z, boolean z2, String str, boolean z3, int i, int i2, int i3) {
        this.zzhcz = z;
        this.zzeib = z2;
        this.zzbrp = str;
        this.zzdvq = z3;
        this.zzduu = i;
        this.zzhda = i2;
        this.zzhdb = i3;
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("js", this.zzbrp);
        bundle2.putBoolean("is_nonagon", true);
        bundle2.putString("extra_caps", (String) zzwr.zzqr().zzd(zzabp.zzcsu));
        bundle2.putInt("target_api", this.zzduu);
        bundle2.putInt("dv", this.zzhda);
        bundle2.putInt("lv", this.zzhdb);
        Bundle zza = zzdnz.zza(bundle2, "sdk_env");
        zza.putBoolean("mf", zzadi.zzddw.get().booleanValue());
        zza.putBoolean("instant_app", this.zzhcz);
        zza.putBoolean("lite", this.zzeib);
        zza.putBoolean("is_privileged_process", this.zzdvq);
        bundle2.putBundle("sdk_env", zza);
        Bundle zza2 = zzdnz.zza(zza, "build_meta");
        zza2.putString("cl", "350251165");
        zza2.putString("rapid_rc", "dev");
        zza2.putString("rapid_rollup", "HEAD");
        zza.putBundle("build_meta", zza2);
    }
}
