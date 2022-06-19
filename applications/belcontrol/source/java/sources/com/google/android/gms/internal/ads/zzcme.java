package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcme.class */
public final class zzcme {
    private final zzdzv zzghl;
    private final zzdzv zzgnr;
    private final zzcnj zzgns;
    private final zzepv<zzcol> zzgnt;

    public zzcme(zzdzv zzdzvVar, zzdzv zzdzvVar2, zzcnj zzcnjVar, zzepv<zzcol> zzepvVar) {
        this.zzgnr = zzdzvVar;
        this.zzghl = zzdzvVar2;
        this.zzgns = zzcnjVar;
        this.zzgnt = zzepvVar;
    }

    public final /* synthetic */ zzdzw zza(zzatq zzatqVar, int i, zzcoc zzcocVar) {
        return ((zzcol) this.zzgnt.get()).zzb(zzatqVar, i);
    }

    public final zzdzw<InputStream> zze(zzatq zzatqVar) {
        String str = zzatqVar.packageName;
        zzr.zzkr();
        return zzdzk.zzb(zzj.zzek(str) ? zzdzk.immediateFailedFuture(new zzcoc(zzdom.INTERNAL_ERROR)) : zzdzk.zzb(this.zzgnr.zze(new Callable(this, zzatqVar) { // from class: com.google.android.gms.internal.ads.zzcmd
            private final zzcme zzgnp;
            private final zzatq zzgnq;

            {
                this.zzgnp = this;
                this.zzgnq = zzatqVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzgnp.zzf(this.zzgnq);
            }
        }), ExecutionException.class, zzcmg.zzboq, this.zzghl), zzcoc.class, new zzcmf(this, zzatqVar, Binder.getCallingUid()), this.zzghl);
    }

    public final /* synthetic */ InputStream zzf(zzatq zzatqVar) {
        return (InputStream) this.zzgns.zzi(zzatqVar).get(((Integer) zzwr.zzqr().zzd(zzabp.zzcwn)).intValue(), TimeUnit.SECONDS);
    }
}
