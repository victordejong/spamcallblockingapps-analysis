package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzecp.class */
public final class zzecp implements zzgpr<ApplicationInfo> {
    private final zzgqe<Context> zza;

    public zzecp(zzgqe<Context> zzgqeVar) {
        this.zza = zzgqeVar;
    }

    /* renamed from: zza */
    public final ApplicationInfo zzb() {
        ApplicationInfo applicationInfo = this.zza.zzb().getApplicationInfo();
        zzgpz.zzb(applicationInfo);
        return applicationInfo;
    }
}
