package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdha.class */
public final class zzdha extends zzdkb<zzdhc> implements zzdfl, zzdgq {
    private final zzfdn zzb;
    private final AtomicBoolean zzc = new AtomicBoolean();

    public zzdha(Set<zzdlw<zzdhc>> set, zzfdn zzfdnVar) {
        super(set);
        this.zzb = zzfdnVar;
    }

    private final void zzb() {
        zzbfk zzbfkVar;
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzfH)).booleanValue() || !this.zzc.compareAndSet(false, true) || (zzbfkVar = this.zzb.zzac) == null || zzbfkVar.zza != 3) {
            return;
        }
        zzo(new zzdka() { // from class: com.google.android.gms.internal.ads.zzdgz
            @Override // com.google.android.gms.internal.ads.zzdka
            public final void zza(Object obj) {
                zzdha.this.zza((zzdhc) obj);
            }
        });
    }

    public final /* synthetic */ void zza(zzdhc zzdhcVar) throws Exception {
        zzdhcVar.zzg(this.zzb.zzac);
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void zzh() {
        if (this.zzb.zzb == 1) {
            zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdfl
    public final void zzl() {
        int i = this.zzb.zzb;
        if (i == 2 || i == 5 || i == 4 || i == 6 || i == 7) {
            zzb();
        }
    }
}
