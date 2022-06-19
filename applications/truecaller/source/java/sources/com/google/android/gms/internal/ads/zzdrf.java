package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdrf.class */
public final class zzdrf implements Callable<zzdrh> {
    private final zza zza;
    private final zzcmx zzb;
    private final Context zzc;
    private final zzdvi zzd;
    private final zzffc zze;
    private final zzedq zzf;
    private final Executor zzg;
    private final zzaas zzh;
    private final zzcgz zzi;
    private final zzffu zzj;

    public zzdrf(Context context, Executor executor, zzaas zzaasVar, zzcgz zzcgzVar, zza zzaVar, zzcmx zzcmxVar, zzedq zzedqVar, zzffu zzffuVar, zzdvi zzdviVar, zzffc zzffcVar) {
        this.zzc = context;
        this.zzg = executor;
        this.zzh = zzaasVar;
        this.zzi = zzcgzVar;
        this.zza = zzaVar;
        this.zzb = zzcmxVar;
        this.zzf = zzedqVar;
        this.zzj = zzffuVar;
        this.zzd = zzdviVar;
        this.zze = zzffcVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ zzdrh call() throws Exception {
        zzdrh zzdrhVar = new zzdrh(this);
        zzdrhVar.zzb();
        return zzdrhVar;
    }
}
