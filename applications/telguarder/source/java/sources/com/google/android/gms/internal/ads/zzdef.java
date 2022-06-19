package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdef.class */
public final class zzdef implements zzdfi<zzdec> {
    private final Bundle zzfyw;
    private final zzdzv zzghl;

    public zzdef(zzdzv zzdzvVar, Bundle bundle) {
        this.zzghl = zzdzvVar;
        this.zzfyw = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdec> zzasy() {
        return this.zzghl.zze(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzdee
            private final zzdef zzhcm;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhcm = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzhcm.zzatk();
            }
        });
    }

    public final /* synthetic */ zzdec zzatk() throws Exception {
        return new zzdec(this.zzfyw);
    }
}
