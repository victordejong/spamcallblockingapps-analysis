package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyv.class */
public final class zzdyv implements zzgla<zzfsm<String>> {
    private final zzgln<zzaas> zza;
    private final zzgln<Context> zzb;
    private final zzgln<zzfsn> zzc;

    public zzdyv(zzgln<zzaas> zzglnVar, zzgln<Context> zzglnVar2, zzgln<zzfsn> zzglnVar3) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzaas zzb = this.zza.zzb();
        Context zza = ((zzfbv) this.zzb).zza();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        zzfsm zzb2 = zzfsnVar.zzb(new Callable(zzb, zza) { // from class: com.google.android.gms.internal.ads.zzdyu
            private final zzaas zza;
            private final Context zzb;

            {
                this.zza = zzb;
                this.zzb = zza;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzaas zzaasVar = this.zza;
                return zzaasVar.zzb().zzp(this.zzb);
            }
        });
        zzgli.zzb(zzb2);
        return zzb2;
    }
}
