package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzecv.class */
public final class zzecv implements zzgpr<String> {
    private final zzgqe<Context> zza;

    public zzecv(zzgqe<Context> zzgqeVar) {
        this.zza = zzgqeVar;
    }

    /* renamed from: zza */
    public final String zzb() {
        String packageName = ((zzffh) this.zza).zza().getPackageName();
        zzgpz.zzb(packageName);
        return packageName;
    }
}
