package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.ExecutionException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeje.class */
public final class zzeje implements zzeib<zzcyw, zzbzo, zzejp> {
    private final Context zza;
    private final zzczt zzb;
    private View zzc;
    private zzbxq zzd;

    public zzeje(Context context, zzczt zzcztVar) {
        this.zza = context;
        this.zzb = zzcztVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeib
    public final /* bridge */ /* synthetic */ zzcyw zza(zzfdz zzfdzVar, final zzfdn zzfdnVar, final zzehw<zzbzo, zzejp> zzehwVar) throws zzfek, zzelj {
        View view;
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzfI)).booleanValue() || !zzfdnVar.zzae) {
            view = this.zzc;
        } else {
            try {
                final View view2 = (View) ObjectWrapper.unwrap(this.zzd.zze());
                boolean zzf = this.zzd.zzf();
                if (view2 == null) {
                    throw new zzfek(new Exception("BannerRtbAdapterWrapper interscrollerView should not be null"));
                }
                view = view2;
                if (zzf) {
                    try {
                        view = (View) zzfwq.zzn(zzfwq.zzi(null), new zzfvx() { // from class: com.google.android.gms.internal.ads.zzejb
                            @Override // com.google.android.gms.internal.ads.zzfvx
                            public final zzfxa zza(Object obj) {
                                return zzeje.this.zzc(view2, zzfdnVar, obj);
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
        zzcyx zza = this.zzb.zza(new zzdbk(zzfdzVar, zzfdnVar, zzehwVar.zza), new zzczd(view, null, new zzdat() { // from class: com.google.android.gms.internal.ads.zzeja
            @Override // com.google.android.gms.internal.ads.zzdat
            public final zzbiz zza() {
                try {
                    return ((zzbzo) zzehw.this.zzb).zze();
                } catch (RemoteException e3) {
                    throw new zzfek(e3);
                }
            }
        }, zzfdnVar.zzv.get(0)));
        zza.zzg().zza(view);
        zzehwVar.zzc.zzc(zza.zzh());
        return zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzeib
    public final void zzb(zzfdz zzfdzVar, zzfdn zzfdnVar, zzehw<zzbzo, zzejp> zzehwVar) throws zzfek {
        try {
            zzehwVar.zzb.zzp(zzfdnVar.zzW);
            if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzfI)).booleanValue() || !zzfdnVar.zzae) {
                zzehwVar.zzb.zzi(zzfdnVar.zzR, zzfdnVar.zzw.toString(), zzfdzVar.zza.zza.zzd, ObjectWrapper.wrap(this.zza), new zzejd(this, zzehwVar, null), zzehwVar.zzc, zzfdzVar.zza.zza.zze);
            } else {
                zzehwVar.zzb.zzj(zzfdnVar.zzR, zzfdnVar.zzw.toString(), zzfdzVar.zza.zza.zzd, ObjectWrapper.wrap(this.zza), new zzejd(this, zzehwVar, null), zzehwVar.zzc, zzfdzVar.zza.zza.zze);
            }
        } catch (RemoteException e) {
            throw new zzfek(e);
        }
    }

    public final /* synthetic */ zzfxa zzc(View view, zzfdn zzfdnVar, Object obj) throws Exception {
        return zzfwq.zzi(zzdak.zza(this.zza, view, zzfdnVar));
    }
}
