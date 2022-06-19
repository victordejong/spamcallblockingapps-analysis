package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzaw;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeiu.class */
public final class zzeiu implements zzeht<zzcyw> {
    private final zzczt zza;
    private final Context zzb;
    private final zzdwj zzc;
    private final zzfef zzd;
    private final Executor zze;
    private final zzfpv<zzfdn, zzaw> zzf;

    public zzeiu(zzczt zzcztVar, Context context, Executor executor, zzdwj zzdwjVar, zzfef zzfefVar, zzfpv<zzfdn, zzaw> zzfpvVar) {
        this.zzb = context;
        this.zza = zzcztVar;
        this.zze = executor;
        this.zzc = zzdwjVar;
        this.zzd = zzfefVar;
        this.zzf = zzfpvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeht
    public final zzfxa<zzcyw> zza(final zzfdz zzfdzVar, final zzfdn zzfdnVar) {
        return zzfwq.zzn(zzfwq.zzi(null), new zzfvx() { // from class: com.google.android.gms.internal.ads.zzeir
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzeiu.this.zzc(zzfdzVar, zzfdnVar, obj);
            }
        }, this.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzeht
    public final boolean zzb(zzfdz zzfdzVar, zzfdn zzfdnVar) {
        zzfds zzfdsVar = zzfdnVar.zzt;
        return (zzfdsVar == null || zzfdsVar.zza == null) ? false : true;
    }

    public final /* synthetic */ zzfxa zzc(zzfdz zzfdzVar, zzfdn zzfdnVar, Object obj) throws Exception {
        zzdak zzdakVar;
        zzbfi zza = zzfej.zza(this.zzb, zzfdnVar.zzv);
        final zzcop zza2 = this.zzc.zza(zza, zzfdnVar, zzfdzVar.zzb.zzb);
        zza2.zzab(zzfdnVar.zzT);
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzfI)).booleanValue() || !zzfdnVar.zzae) {
            zzdakVar = new zzdwm(this.zzb, (View) zza2, this.zzf.apply(zzfdnVar));
        } else {
            zzdakVar = zzdak.zza(this.zzb, (View) zza2, zzfdnVar);
        }
        final zzcyx zza3 = this.zza.zza(new zzdbk(zzfdzVar, zzfdnVar, null), new zzczd(zzdakVar, zza2, new zzdat() { // from class: com.google.android.gms.internal.ads.zzeio
            @Override // com.google.android.gms.internal.ads.zzdat
            public final zzbiz zza() {
                return zzcop.this.zzs();
            }
        }, zzfej.zzc(zza)));
        zza3.zzj().zzi(zza2, false, null);
        zzdfj zzc = zza3.zzc();
        zzdfl zzdflVar = new zzdfl() { // from class: com.google.android.gms.internal.ads.zzeip
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
        zza3.zzj();
        zzfds zzfdsVar = zzfdnVar.zzt;
        zzfxa<?> zzj = zzdwi.zzj(zza2, zzfdsVar.zzb, zzfdsVar.zza);
        if (zzfdnVar.zzJ) {
            zzj.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeis
                @Override // java.lang.Runnable
                public final void run() {
                    zzcop.this.zzag();
                }
            }, this.zze);
        }
        zzj.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeit
            @Override // java.lang.Runnable
            public final void run() {
                zzeiu.this.zzd(zza2);
            }
        }, this.zze);
        return zzfwq.zzm(zzj, new zzfpv() { // from class: com.google.android.gms.internal.ads.zzeiq
            @Override // com.google.android.gms.internal.ads.zzfpv
            public final Object apply(Object obj2) {
                return zzcyx.this.zza();
            }
        }, zzfxbVar);
    }

    public final /* synthetic */ void zzd(zzcop zzcopVar) {
        zzcopVar.zzaa();
        zzcpl zzs = zzcopVar.zzs();
        zzbkq zzbkqVar = this.zzd.zza;
        if (zzbkqVar == null || zzs == null) {
            return;
        }
        zzs.zzs(zzbkqVar);
    }
}
