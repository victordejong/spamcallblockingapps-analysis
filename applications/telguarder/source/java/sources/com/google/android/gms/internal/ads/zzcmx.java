package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.io.InputStream;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcmx.class */
public final class zzcmx {
    private final ScheduledExecutorService zzfri;
    private final zzdzv zzghl;
    private final zzepv<zzcol> zzgnt;
    private final zzcnn zzgod;

    public zzcmx(ScheduledExecutorService scheduledExecutorService, zzdzv zzdzvVar, zzcnn zzcnnVar, zzepv<zzcol> zzepvVar) {
        this.zzfri = scheduledExecutorService;
        this.zzghl = zzdzvVar;
        this.zzgod = zzcnnVar;
        this.zzgnt = zzepvVar;
    }

    public final /* synthetic */ zzdzw zza(zzatq zzatqVar, int i, Throwable th) throws Exception {
        return this.zzgnt.get().zzd(zzatqVar, i);
    }

    public final zzdzw<InputStream> zzg(zzatq zzatqVar) {
        String str = zzatqVar.packageName;
        zzr.zzkr();
        return zzdzf.zzg(zzj.zzek(str) ? zzdzk.immediateFailedFuture(new zzcoc(zzdom.INTERNAL_ERROR)) : this.zzgod.zzj(zzatqVar)).zza(((Integer) zzwr.zzqr().zzd(zzabp.zzcwn)).intValue(), TimeUnit.SECONDS, this.zzfri).zza(Throwable.class, new zzdyu(this, zzatqVar, Binder.getCallingUid()) { // from class: com.google.android.gms.internal.ads.zzcna
            private final int zzeff;
            private final zzatq zzgnq;
            private final zzcmx zzgoe;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgoe = this;
                this.zzgnq = zzatqVar;
                this.zzeff = callingUid;
            }

            @Override // com.google.android.gms.internal.ads.zzdyu
            public final zzdzw zzf(Object obj) {
                return this.zzgoe.zza(this.zzgnq, this.zzeff, (Throwable) obj);
            }
        }, this.zzghl);
    }
}
