package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeta.class */
public final class zzeta implements zzevn<zzetb> {
    private final zzfxb zza;
    private final zzebt zzb;

    public zzeta(zzfxb zzfxbVar, zzebt zzebtVar) {
        this.zza = zzfxbVar;
        this.zzb = zzebtVar;
    }

    public final /* synthetic */ zzetb zza() throws Exception {
        return new zzetb(this.zzb.zzb(), this.zzb.zzn(), zzt.zzs().zzl());
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzetb> zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzesz
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeta.this.zza();
            }
        });
    }
}
