package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzbs;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzalh.class */
public final class zzalh implements zzaif<zzalx> {
    private final /* synthetic */ zzakm zzdjv;
    private final /* synthetic */ zzakz zzdjw;
    private final /* synthetic */ zzei zzdjy;
    private final /* synthetic */ zzbs zzdjz;

    public zzalh(zzakz zzakzVar, zzei zzeiVar, zzakm zzakmVar, zzbs zzbsVar) {
        this.zzdjw = zzakzVar;
        this.zzdjy = zzeiVar;
        this.zzdjv = zzakmVar;
        this.zzdjz = zzbsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final /* synthetic */ void zza(zzalx zzalxVar, Map map) {
        Object obj;
        int i;
        obj = this.zzdjw.lock;
        synchronized (obj) {
            zzd.zzew("JS Engine is requesting an update");
            i = this.zzdjw.status;
            if (i == 0) {
                zzd.zzew("Starting reload.");
                this.zzdjw.status = 2;
                this.zzdjw.zza(this.zzdjy);
            }
            this.zzdjv.zzb("/requestReload", (zzaif) this.zzdjz.get());
        }
    }
}
