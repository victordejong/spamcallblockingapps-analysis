package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzt;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzail.class */
final class zzail implements zzt {
    private boolean zzdig = false;
    private final /* synthetic */ Map zzdih;
    private final /* synthetic */ Map zzdii;
    private final /* synthetic */ zzvc zzdij;

    public zzail(zzaij zzaijVar, Map map, Map map2, zzvc zzvcVar) {
        this.zzdih = map;
        this.zzdii = map2;
        this.zzdij = zzvcVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzt
    public final void zza(zzacr zzacrVar) {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzt
    public final void zzab(boolean z) {
        if (!this.zzdig) {
            this.zzdig = true;
            this.zzdih.put((String) this.zzdii.get("event_id"), Boolean.valueOf(z));
            ((zzaki) this.zzdij).zza("openIntentAsync", this.zzdih);
        }
    }
}
