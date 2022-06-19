package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzar;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzale.class */
public final class zzale implements zzaif<zzalx> {
    private final /* synthetic */ zzalq zzdju;
    private final /* synthetic */ zzakm zzdjv;
    private final /* synthetic */ zzakz zzdjw;

    public zzale(zzakz zzakzVar, zzalq zzalqVar, zzakm zzakmVar) {
        this.zzdjw = zzakzVar;
        this.zzdju = zzalqVar;
        this.zzdjv = zzakmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final /* synthetic */ void zza(zzalx zzalxVar, Map map) {
        Object obj;
        zzar zzarVar;
        obj = this.zzdjw.lock;
        synchronized (obj) {
            if (this.zzdju.getStatus() != -1 && this.zzdju.getStatus() != 1) {
                this.zzdjw.status = 0;
                zzarVar = this.zzdjw.zzdjo;
                zzarVar.zzg(this.zzdjv);
                this.zzdju.zzl(this.zzdjv);
                this.zzdjw.zzdjq = this.zzdju;
                zzd.zzeb("Successfully loaded JS Engine.");
            }
        }
    }
}
