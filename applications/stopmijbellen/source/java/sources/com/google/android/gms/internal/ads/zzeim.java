package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeim.class */
public final class zzeim implements zzeht<zzcyf> {
    private final zzcxz zza;
    private final Context zzb;
    private final zzdwj zzc;
    private final Executor zzd;

    public zzeim(zzcxz zzcxzVar, Context context, Executor executor, zzdwj zzdwjVar) {
        this.zzb = context;
        this.zza = zzcxzVar;
        this.zzd = executor;
        this.zzc = zzdwjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeht
    public final zzfxa<zzcyf> zza(final zzfdz zzfdzVar, final zzfdn zzfdnVar) {
        return zzfwq.zzn(zzfwq.zzi(null), new zzfvx() { // from class: com.google.android.gms.internal.ads.zzeil
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzeim.this.zzc(zzfdzVar, zzfdnVar, obj);
            }
        }, this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzeht
    public final boolean zzb(zzfdz zzfdzVar, zzfdn zzfdnVar) {
        zzfds zzfdsVar = zzfdnVar.zzt;
        return (zzfdsVar == null || zzfdsVar.zza == null) ? false : true;
    }

    public final /* synthetic */ zzfxa zzc(zzfdz zzfdzVar, zzfdn zzfdnVar, Object obj) throws Exception {
        zzbfi zza = zzfej.zza(this.zzb, zzfdnVar.zzv);
        final zzcop zza2 = this.zzc.zza(zza, zzfdnVar, zzfdzVar.zzb.zzb);
        final zzcxs zza3 = this.zza.zza(new zzdbk(zzfdzVar, zzfdnVar, null), new zzcxt((View) zza2, zza2, zzfej.zzc(zza), zzfdnVar.zzX, zzfdnVar.zzab, zzfdnVar.zzL));
        zza3.zzg().zzi(zza2, false, null);
        zzdfj zzc = zza3.zzc();
        zzdfl zzdflVar = new zzdfl() { // from class: com.google.android.gms.internal.ads.zzeij
            @Override // com.google.android.gms.internal.ads.zzdfl
            public final void zzl() {
                zzcop zzcopVar = zzcop.this;
                if (zzcopVar.zzP() != null) {
                    zzcopVar.zzP().zzp();
                }
            }
        };
        zzfxb zzfxbVar = zzcjm.zzf;
        zzc.zzj(zzdflVar, zzfxbVar);
        zza3.zzg();
        zzfds zzfdsVar = zzfdnVar.zzt;
        return zzfwq.zzm(zzdwi.zzj(zza2, zzfdsVar.zzb, zzfdsVar.zza), new zzfpv() { // from class: com.google.android.gms.internal.ads.zzeik
            @Override // com.google.android.gms.internal.ads.zzfpv
            public final Object apply(Object obj2) {
                return zzcxs.this.zza();
            }
        }, zzfxbVar);
    }
}
