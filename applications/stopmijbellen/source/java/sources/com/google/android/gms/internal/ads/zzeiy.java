package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzby;
import com.google.android.gms.ads.zza;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeiy.class */
public final class zzeiy implements zzeib<zzcyw, zzfev, zzejp> {
    private final Context zza;
    private final zzczt zzb;
    private final Executor zzc;

    public zzeiy(Context context, zzczt zzcztVar, Executor executor) {
        this.zza = context;
        this.zzb = zzcztVar;
        this.zzc = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzeib
    public final /* bridge */ /* synthetic */ zzcyw zza(zzfdz zzfdzVar, final zzfdn zzfdnVar, zzehw<zzfev, zzejp> zzehwVar) throws zzfek, zzelj {
        View view;
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzfI)).booleanValue() || !zzfdnVar.zzae) {
            view = zzehwVar.zzb.zza();
        } else {
            zzbxq zzc = zzehwVar.zzb.zzc();
            if (zzc == null) {
                zzciz.zzg("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad.");
                throw new zzfek(new Exception("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad."));
            }
            try {
                final View view2 = (View) ObjectWrapper.unwrap(zzc.zze());
                boolean zzf = zzc.zzf();
                if (view2 == null) {
                    throw new zzfek(new Exception("BannerAdapterWrapper interscrollerView should not be null"));
                }
                view = view2;
                if (zzf) {
                    try {
                        view = (View) zzfwq.zzn(zzfwq.zzi(null), new zzfvx() { // from class: com.google.android.gms.internal.ads.zzeix
                            @Override // com.google.android.gms.internal.ads.zzfvx
                            public final zzfxa zza(Object obj) {
                                return zzeiy.this.zzc(view2, zzfdnVar, obj);
                            }
                        }, zzcjm.zze).get();
                    } catch (InterruptedException | ExecutionException e) {
                        throw new zzfek(e);
                    }
                }
            } catch (RemoteException e2) {
                throw new zzfek(e2);
            }
        }
        zzczt zzcztVar = this.zzb;
        zzdbk zzdbkVar = new zzdbk(zzfdzVar, zzfdnVar, zzehwVar.zza);
        final zzfev zzfevVar = zzehwVar.zzb;
        zzcyx zza = zzcztVar.zza(zzdbkVar, new zzczd(view, null, new zzdat() { // from class: com.google.android.gms.internal.ads.zzeiw
            @Override // com.google.android.gms.internal.ads.zzdat
            public final zzbiz zza() {
                return zzfev.this.zzb();
            }
        }, zzfdnVar.zzv.get(0)));
        zza.zzg().zza(view);
        zza.zzd().zzj(new zzcwl(zzehwVar.zzb), this.zzc);
        zzehwVar.zzc.zzc(zza.zzi());
        return zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzeib
    public final void zzb(zzfdz zzfdzVar, zzfdn zzfdnVar, zzehw<zzfev, zzejp> zzehwVar) throws zzfek {
        zzbfi zzbfiVar;
        zzbfi zzbfiVar2 = zzfdzVar.zza.zza.zze;
        if (zzbfiVar2.zzn) {
            zzbfiVar = new zzbfi(this.zza, zza.zzd(zzbfiVar2.zze, zzbfiVar2.zzb));
        } else {
            zzbfiVar = (!((Boolean) zzbgq.zzc().zzb(zzblj.zzfI)).booleanValue() || !zzfdnVar.zzae) ? zzfej.zza(this.zza, zzfdnVar.zzv) : new zzbfi(this.zza, zza.zze(zzbfiVar2.zze, zzbfiVar2.zzb));
        }
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzfI)).booleanValue() || !zzfdnVar.zzae) {
            zzehwVar.zzb.zzl(this.zza, zzbfiVar, zzfdzVar.zza.zza.zzd, zzfdnVar.zzw.toString(), zzby.zzl(zzfdnVar.zzt), zzehwVar.zzc);
        } else {
            zzehwVar.zzb.zzm(this.zza, zzbfiVar, zzfdzVar.zza.zza.zzd, zzfdnVar.zzw.toString(), zzby.zzl(zzfdnVar.zzt), zzehwVar.zzc);
        }
    }

    public final /* synthetic */ zzfxa zzc(View view, zzfdn zzfdnVar, Object obj) throws Exception {
        return zzfwq.zzi(zzdak.zza(this.zza, view, zzfdnVar));
    }
}
