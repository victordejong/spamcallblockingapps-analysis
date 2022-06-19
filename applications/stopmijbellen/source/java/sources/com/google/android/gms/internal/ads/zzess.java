package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nonagon.signalgeneration.zze;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzess.class */
public final class zzess implements zzevn<zzest> {
    private final zzfxb zza;
    private final zzfef zzb;

    public zzess(zzfxb zzfxbVar, zzfef zzfefVar) {
        this.zza = zzfxbVar;
        this.zzb = zzfefVar;
    }

    public final /* synthetic */ zzest zza() throws Exception {
        return new zzest("requester_type_2".equals(zze.zzc(this.zzb)));
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzest> zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzesr
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzess.this.zza();
            }
        });
    }
}
