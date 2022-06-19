package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.ExecutionException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefn.class */
public final class zzefn implements zzeek<zzcvh, zzbxn, zzefy> {
    private final Context zza;
    private final zzcwe zzb;
    private View zzc;
    private zzbvp zzd;

    public zzefn(Context context, zzcwe zzcweVar) {
        this.zza = context;
        this.zzb = zzcweVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeek
    public final void zza(zzfal zzfalVar, zzezz zzezzVar, zzeef<zzbxn, zzefy> zzeefVar) throws zzfaw {
        try {
            zzeefVar.zzb.zzo(zzezzVar.zzV);
            if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzfB)).booleanValue() || !zzezzVar.zzad) {
                zzeefVar.zzb.zzi(zzezzVar.zzQ, zzezzVar.zzv.toString(), zzfalVar.zza.zza.zzd, new ObjectWrapper(this.zza), new zzefl(this, zzeefVar, null), zzeefVar.zzc, zzfalVar.zza.zza.zze);
            } else {
                zzeefVar.zzb.zzq(zzezzVar.zzQ, zzezzVar.zzv.toString(), zzfalVar.zza.zza.zzd, new ObjectWrapper(this.zza), new zzefl(this, zzeefVar, null), zzeefVar.zzc, zzfalVar.zza.zza.zze);
            }
        } catch (RemoteException e) {
            throw new zzfaw(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeek
    public final /* bridge */ /* synthetic */ zzcvh zzb(zzfal zzfalVar, zzezz zzezzVar, zzeef<zzbxn, zzefy> zzeefVar) throws zzfaw, zzehs {
        View view;
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzfB)).booleanValue() || !zzezzVar.zzad) {
            view = this.zzc;
        } else {
            try {
                View view2 = (View) ObjectWrapper.m38746B1(this.zzd.zze());
                boolean zzf = this.zzd.zzf();
                if (view2 == null) {
                    throw new zzfaw(new Exception("BannerRtbAdapterWrapper interscrollerView should not be null"));
                }
                view = view2;
                if (zzf) {
                    try {
                        view = (View) zzfsd.zzi(zzfsd.zza(null), new zzfrk(this, view2, zzezzVar) { // from class: com.google.android.gms.internal.ads.zzefk
                            private final zzefn zza;
                            private final View zzb;
                            private final zzezz zzc;

                            {
                                this.zza = this;
                                this.zzb = view2;
                                this.zzc = zzezzVar;
                            }

                            @Override // com.google.android.gms.internal.ads.zzfrk
                            public final zzfsm zza(Object obj) {
                                return this.zza.zze(this.zzb, this.zzc, obj);
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
        zzcvi zzaa = this.zzb.zzaa(new zzcxv(zzfalVar, zzezzVar, zzeefVar.zza), new zzcvo(view, null, new zzcxe(zzeefVar) { // from class: com.google.android.gms.internal.ads.zzefj
            private final zzeef zza;

            {
                this.zza = zzeefVar;
            }

            @Override // com.google.android.gms.internal.ads.zzcxe
            public final zzbhc zza() {
                try {
                    return ((zzbxn) this.zza.zzb).zzh();
                } catch (RemoteException e3) {
                    throw new zzfaw(e3);
                }
            }
        }, zzezzVar.zzu.get(0)));
        zzaa.zzj().zza(view);
        zzeefVar.zzc.zzc(zzaa.zzg());
        return zzaa.zzh();
    }

    public final /* synthetic */ zzfsm zze(View view, zzezz zzezzVar, Object obj) throws Exception {
        return zzfsd.zza(zzcwv.zza(this.zza, view, zzezzVar));
    }
}
