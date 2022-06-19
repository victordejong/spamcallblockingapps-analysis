package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdhd.class */
public final class zzdhd implements zzdfi<zzdha> {
    List<String> zzduo;
    private zzdzv zzghl;
    zzabb zzher;

    public zzdhd(zzabb zzabbVar, zzdzv zzdzvVar, List<String> list) {
        this.zzher = zzabbVar;
        this.zzghl = zzdzvVar;
        this.zzduo = list;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdha> zzasy() {
        return this.zzghl.zze(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzdhc
            private final zzdhd zzheq;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzheq = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzdhd zzdhdVar = this.zzheq;
                return new zzdha(zzdhdVar.zzher.zzf(zzdhdVar.zzduo));
            }
        });
    }
}
