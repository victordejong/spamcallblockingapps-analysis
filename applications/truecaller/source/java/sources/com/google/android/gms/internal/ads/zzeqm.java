package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeqm.class */
public final class zzeqm implements zzery<zzeqn> {
    private final zzfsn zza;
    private final Bundle zzb;

    public zzeqm(zzfsn zzfsnVar, Bundle bundle) {
        this.zza = zzfsnVar;
        this.zzb = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzeqn> zza() {
        return this.zza.zzb(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzeql
            private final zzeqm zza;

            {
                this.zza = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzb();
            }
        });
    }

    public final /* synthetic */ zzeqn zzb() throws Exception {
        return new zzeqn(this.zzb);
    }
}
