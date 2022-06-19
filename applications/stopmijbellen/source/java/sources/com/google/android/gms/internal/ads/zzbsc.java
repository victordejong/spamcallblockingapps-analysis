package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzu;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsc.class */
public final class zzbsc implements zzu {
    public boolean zza = false;
    public final /* synthetic */ boolean zzb;
    public final /* synthetic */ zzbes zzc;
    public final /* synthetic */ Map zzd;
    public final /* synthetic */ Map zze;

    public zzbsc(zzbse zzbseVar, boolean z, zzbes zzbesVar, Map map, Map map2) {
        this.zzb = z;
        this.zzc = zzbesVar;
        this.zzd = map;
        this.zze = map2;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzu
    public final void zza(boolean z) {
        if (!this.zza) {
            if (z && this.zzb) {
                ((zzdmd) this.zzc).zzq();
            }
            this.zza = true;
            this.zzd.put((String) this.zze.get("event_id"), Boolean.valueOf(z));
            ((zzbuk) this.zzc).zzd("openIntentAsync", this.zzd);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzu
    public final void zzb(int i) {
    }
}
