package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.io.InputStream;
import java.util.concurrent.ExecutionException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcob.class */
public final class zzcob {
    private final zzdzv zzghl;
    private final zzepv<zzcol> zzgnt;
    private final zzcns zzgpg;

    public zzcob(zzdzv zzdzvVar, zzcns zzcnsVar, zzepv<zzcol> zzepvVar) {
        this.zzghl = zzdzvVar;
        this.zzgpg = zzcnsVar;
        this.zzgnt = zzepvVar;
    }

    private final <RetT> zzdzw<RetT> zza(zzatq zzatqVar, zzcom<InputStream> zzcomVar, zzcom<InputStream> zzcomVar2, zzdyu<InputStream, RetT> zzdyuVar) {
        String str = zzatqVar.packageName;
        zzr.zzkr();
        return zzdzf.zzg(zzj.zzek(str) ? zzdzk.immediateFailedFuture(new zzcoc(zzdom.INTERNAL_ERROR)) : zzdzk.zzb(zzcomVar.zzq(zzatqVar), ExecutionException.class, zzcoe.zzboq, this.zzghl)).zzb(zzdyuVar, this.zzghl).zza(zzcoc.class, new zzcod(this, zzcomVar2, zzatqVar, zzdyuVar), this.zzghl);
    }

    public final /* synthetic */ zzdzw zza(zzcom zzcomVar, zzatq zzatqVar, zzdyu zzdyuVar, zzcoc zzcocVar) {
        return zzdzk.zzb(zzcomVar.zzq(zzatqVar), zzdyuVar, this.zzghl);
    }

    public final zzdzw<zzatq> zzl(zzatq zzatqVar) {
        zzcog zzcogVar = new zzcog(zzatqVar);
        zzcns zzcnsVar = this.zzgpg;
        zzcnsVar.getClass();
        return zza(zzatqVar, zzcof.zza(zzcnsVar), (zzcom<InputStream>) new zzcoi(this), (zzdyu) zzcogVar);
    }

    public final zzdzw<Void> zzm(zzatq zzatqVar) {
        if (zzfh.zzar(zzatqVar.zzdxl)) {
            return zzdzk.immediateFailedFuture(new zzcmb(zzdom.INVALID_REQUEST, "Pool key missing from removeUrl call."));
        }
        return zza(zzatqVar, (zzcom<InputStream>) new zzcok(this), (zzcom<InputStream>) new zzcoj(this), zzcoh.zzboq);
    }

    public final /* synthetic */ zzdzw zzn(zzatq zzatqVar) {
        return ((zzcol) this.zzgnt.get()).zzgj(zzatqVar.zzdxl);
    }

    public final /* synthetic */ zzdzw zzo(zzatq zzatqVar) {
        return this.zzgpg.zzgi(zzatqVar.zzdxl);
    }

    public final /* synthetic */ zzdzw zzp(zzatq zzatqVar) {
        return ((zzcol) this.zzgnt.get()).zzc(zzatqVar, Binder.getCallingUid());
    }
}
