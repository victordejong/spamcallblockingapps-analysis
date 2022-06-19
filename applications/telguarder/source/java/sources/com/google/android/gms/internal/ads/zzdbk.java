package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdbk.class */
public final class zzdbk implements zzdfi<zzdbl> {
    private final zzazn zzdtx;
    private final zzdnp zzfwy;
    private final zzdzv zzghl;

    public zzdbk(zzdzv zzdzvVar, zzdnp zzdnpVar, zzazn zzaznVar) {
        this.zzghl = zzdzvVar;
        this.zzfwy = zzdnpVar;
        this.zzdtx = zzaznVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdbl> zzasy() {
        return this.zzghl.zze(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzdbn
            private final zzdbk zzhbb;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhbb = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzhbb.zzatb();
            }
        });
    }

    public final /* synthetic */ zzdbl zzatb() throws Exception {
        return new zzdbl(this.zzfwy.zzhla, this.zzdtx);
    }
}
