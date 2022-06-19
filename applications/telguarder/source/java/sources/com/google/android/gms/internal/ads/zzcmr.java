package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcmr.class */
public final class zzcmr implements zzeqb<PackageInfo> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<ApplicationInfo> zzgoa;

    private zzcmr(zzeqo<Context> zzeqoVar, zzeqo<ApplicationInfo> zzeqoVar2) {
        this.zzewk = zzeqoVar;
        this.zzgoa = zzeqoVar2;
    }

    public static zzcmr zzak(zzeqo<Context> zzeqoVar, zzeqo<ApplicationInfo> zzeqoVar2) {
        return new zzcmr(zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzcmh.zza(this.zzewk.get(), this.zzgoa.get());
    }
}
