package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzalg.class */
public final class zzalg implements Runnable {
    private final /* synthetic */ zzalq zzdju;
    private final /* synthetic */ zzakm zzdjv;
    private final /* synthetic */ zzakz zzdjw;

    public zzalg(zzakz zzakzVar, zzalq zzalqVar, zzakm zzakmVar) {
        this.zzdjw = zzakzVar;
        this.zzdju = zzalqVar;
        this.zzdjv = zzakmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        obj = this.zzdjw.lock;
        synchronized (obj) {
            if (this.zzdju.getStatus() != -1 && this.zzdju.getStatus() != 1) {
                this.zzdju.reject();
                zzdzv zzdzvVar = zzazp.zzeig;
                zzakm zzakmVar = this.zzdjv;
                zzakmVar.getClass();
                zzdzvVar.execute(zzalj.zzb(zzakmVar));
                zzd.zzeb("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }
}
