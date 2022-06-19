package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdgq.class */
public final class zzdgq implements zzdfi<zzdgr> {
    Context context;
    private zzdzv zzghl;
    zztj zzhei;

    public zzdgq(zztj zztjVar, zzdzv zzdzvVar, Context context) {
        this.zzhei = zztjVar;
        this.zzghl = zzdzvVar;
        this.context = context;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdgr> zzasy() {
        return this.zzghl.zze(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzdgt
            private final zzdgq zzhek;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhek = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzdgq zzdgqVar = this.zzhek;
                return new zzdgr(zzdgqVar.zzhei.zzf(zzdgqVar.context));
            }
        });
    }
}
