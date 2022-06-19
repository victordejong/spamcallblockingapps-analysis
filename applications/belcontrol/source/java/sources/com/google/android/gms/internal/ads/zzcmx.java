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

    public final /* synthetic */ zzdzw zza(zzatq zzatqVar, int i, Throwable th) {
        return ((zzcol) this.zzgnt.get()).zzd(zzatqVar, i);
    }

    public final zzdzw<InputStream> zzg(zzatq zzatqVar) {
        String str = zzatqVar.packageName;
        zzr.zzkr();
        return zzdzf.zzg(zzj.zzek(str) ? zzdzk.immediateFailedFuture(new zzcoc(zzdom.INTERNAL_ERROR)) : this.zzgod.zzj(zzatqVar)).zza(((Integer) zzwr.zzqr().zzd(zzabp.zzcwn)).intValue(), TimeUnit.SECONDS, this.zzfri).zza(Throwable.class, new zzcna(this, zzatqVar, Binder.getCallingUid()), this.zzghl);
    }
}
