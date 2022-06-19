package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeub.class */
public final class zzeub implements zzevn<zzeuc> {
    private final zzfxb zza;
    private final Bundle zzb;

    public zzeub(zzfxb zzfxbVar, Bundle bundle) {
        this.zza = zzfxbVar;
        this.zzb = bundle;
    }

    public final /* synthetic */ zzeuc zza() throws Exception {
        return new zzeuc(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzeuc> zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeua
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeub.this.zza();
            }
        });
    }
}
