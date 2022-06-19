package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyy.class */
public final class zzdyy implements zzgla<ApplicationInfo> {
    private final zzgln<Context> zza;

    public zzdyy(zzgln<Context> zzglnVar) {
        this.zza = zzglnVar;
    }

    /* renamed from: zza */
    public final ApplicationInfo zzb() {
        ApplicationInfo applicationInfo = this.zza.zzb().getApplicationInfo();
        zzgli.zzb(applicationInfo);
        return applicationInfo;
    }
}
