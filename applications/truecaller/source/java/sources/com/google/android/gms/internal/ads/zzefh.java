package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzbx;
import com.google.android.gms.ads.zza;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefh.class */
public final class zzefh implements zzeek<zzcvh, zzfbi, zzefy> {
    private final Context zza;
    private final zzcwe zzb;
    private final Executor zzc;

    public zzefh(Context context, zzcwe zzcweVar, Executor executor) {
        this.zza = context;
        this.zzb = zzcweVar;
        this.zzc = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzeek
    public final void zza(zzfal zzfalVar, zzezz zzezzVar, zzeef<zzfbi, zzefy> zzeefVar) throws zzfaw {
        zzbdl zzbdlVar;
        zzbdl zzbdlVar2 = zzfalVar.zza.zza.zze;
        if (zzbdlVar2.zzn) {
            zzbdlVar = new zzbdl(this.zza, zza.zzb(zzbdlVar2.zze, zzbdlVar2.zzb));
        } else {
            zzbdlVar = (!((Boolean) zzbet.zzc().zzc(zzbjl.zzfB)).booleanValue() || !zzezzVar.zzad) ? zzfav.zzb(this.zza, zzezzVar.zzu) : new zzbdl(this.zza, zza.zzc(zzbdlVar2.zze, zzbdlVar2.zzb));
        }
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzfB)).booleanValue() || !zzezzVar.zzad) {
            zzeefVar.zzb.zzg(this.zza, zzbdlVar, zzfalVar.zza.zza.zzd, zzezzVar.zzv.toString(), zzbx.zzl(zzezzVar.zzs), zzeefVar.zzc);
        } else {
            zzeefVar.zzb.zzb(this.zza, zzbdlVar, zzfalVar.zza.zza.zzd, zzezzVar.zzv.toString(), zzbx.zzl(zzezzVar.zzs), zzeefVar.zzc);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeek
    public final /* bridge */ /* synthetic */ zzcvh zzb(zzfal zzfalVar, zzezz zzezzVar, zzeef<zzfbi, zzefy> zzeefVar) throws zzfaw, zzehs {
        View view;
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzfB)).booleanValue() || !zzezzVar.zzad) {
            view = zzeefVar.zzb.zza();
        } else {
            zzbvp zzc = zzeefVar.zzb.zzc();
            if (zzc == null) {
                zzcgt.zzf("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad.");
                throw new zzfaw(new Exception("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad."));
            }
            try {
                View view2 = (View) ObjectWrapper.m38746B1(zzc.zze());
                boolean zzf = zzc.zzf();
                if (view2 == null) {
                    throw new zzfaw(new Exception("BannerAdapterWrapper interscrollerView should not be null"));
                }
                view = view2;
                if (zzf) {
                    try {
                        view = (View) zzfsd.zzi(zzfsd.zza(null), new zzfrk(this, view2, zzezzVar) { // from class: com.google.android.gms.internal.ads.zzefg
                            private final zzefh zza;
                            private final View zzb;
                            private final zzezz zzc;

                            {
                                this.zza = this;
                                this.zzb = view2;
                                this.zzc = zzezzVar;
                            }

                            @Override // com.google.android.gms.internal.ads.zzfrk
                            public final zzfsm zza(Object obj) {
                                return this.zza.zzc(this.zzb, this.zzc, obj);
                            }
                        }, zzchg.zze).get();
                    } catch (InterruptedException | ExecutionException e) {
                        throw new zzfaw(e);
                    }
                }
            } catch (RemoteException e2) {
                throw new zzfaw(e2);
            }
        }
        zzcvi zzaa = this.zzb.zzaa(new zzcxv(zzfalVar, zzezzVar, zzeefVar.zza), new zzcvo(view, null, zzeff.zzb(zzeefVar.zzb), zzezzVar.zzu.get(0)));
        zzaa.zzj().zza(view);
        zzaa.zza().zzi(new zzcsw(zzeefVar.zzb), this.zzc);
        zzeefVar.zzc.zzc(zzaa.zzf());
        return zzaa.zzh();
    }

    public final /* synthetic */ zzfsm zzc(View view, zzezz zzezzVar, Object obj) throws Exception {
        return zzfsd.zza(zzcwv.zza(this.zza, view, zzezzVar));
    }
}
