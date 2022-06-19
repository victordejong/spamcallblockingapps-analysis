package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzali.class */
public final class zzali implements zzbae<zzakm> {
    private final /* synthetic */ zzakz zzdjw;
    private final /* synthetic */ zzalq zzdka;

    public zzali(zzakz zzakzVar, zzalq zzalqVar) {
        this.zzdjw = zzakzVar;
        this.zzdka = zzalqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbae
    public final /* synthetic */ void zzg(zzakm zzakmVar) {
        Object obj;
        zzalq zzalqVar;
        zzalq zzalqVar2;
        zzalq zzalqVar3;
        obj = this.zzdjw.lock;
        synchronized (obj) {
            this.zzdjw.status = 0;
            zzalqVar = this.zzdjw.zzdjq;
            if (zzalqVar != null) {
                zzalq zzalqVar4 = this.zzdka;
                zzalqVar2 = this.zzdjw.zzdjq;
                if (zzalqVar4 != zzalqVar2) {
                    zzd.zzeb("New JS engine is loaded, marking previous one as destroyable.");
                    zzalqVar3 = this.zzdjw.zzdjq;
                    zzalqVar3.zzuo();
                }
            }
            this.zzdjw.zzdjq = this.zzdka;
        }
    }
}
