package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzall.class */
public final class zzall implements zzbac {
    private final /* synthetic */ zzakz zzdjw;
    private final /* synthetic */ zzalq zzdka;

    public zzall(zzakz zzakzVar, zzalq zzalqVar) {
        this.zzdjw = zzakzVar;
        this.zzdka = zzalqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbac
    public final void run() {
        Object obj;
        obj = this.zzdjw.lock;
        synchronized (obj) {
            this.zzdjw.status = 1;
            zzd.zzeb("Failed loading new engine. Marking new engine destroyable.");
            this.zzdka.zzuo();
        }
    }
}
