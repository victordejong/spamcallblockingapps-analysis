package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzezm.class */
public final class zzezm implements zzely<zzdrw> {
    private final Context zza;
    private final Executor zzb;
    private final zzcoj zzc;
    private final zzezc zzd;
    private final zzexo<zzdsb, zzdrw> zze;
    private final zzfam zzf;
    private final zzfap zzg;
    private zzfsm<zzdrw> zzh;

    public zzezm(Context context, Executor executor, zzcoj zzcojVar, zzexo<zzdsb, zzdrw> zzexoVar, zzezc zzezcVar, zzfap zzfapVar, zzfam zzfamVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzcojVar;
        this.zze = zzexoVar;
        this.zzd = zzezcVar;
        this.zzg = zzfapVar;
        this.zzf = zzfamVar;
    }

    /* renamed from: zzj */
    public final zzdsa zzh(zzexm zzexmVar) {
        zzdsa zzs = this.zzc.zzs();
        zzdam zzdamVar = new zzdam();
        zzdamVar.zze(this.zza);
        zzdamVar.zzf(((zzezl) zzexmVar).zza);
        zzdamVar.zzi(this.zzf);
        zzs.zzb(zzdamVar.zzh());
        zzs.zzc(new zzdgn().zzC());
        return zzs;
    }

    @Override // com.google.android.gms.internal.ads.zzely
    public final boolean zza(zzbdg zzbdgVar, String str, zzelw zzelwVar, zzelx<? super zzdrw> zzelxVar) throws RemoteException {
        zzccg zzccgVar = new zzccg(zzbdgVar, str);
        boolean z = true;
        if (zzccgVar.zzb == null) {
            zzcgt.zzf("Ad unit ID should not be null for rewarded video ad.");
            this.zzb.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzezf
                private final zzezm zza;

                {
                    this.zza = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzg();
                }
            });
        } else {
            zzfsm<zzdrw> zzfsmVar = this.zzh;
            if (zzfsmVar == null || zzfsmVar.isDone()) {
                zzfbh.zzb(this.zza, zzccgVar.zza.zzf);
                if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgp)).booleanValue() && zzccgVar.zza.zzf) {
                    this.zzc.zzz().zzc(true);
                }
                zzfap zzfapVar = this.zzg;
                zzfapVar.zzw(zzccgVar.zzb);
                zzfapVar.zzt(zzbdl.zzc());
                zzfapVar.zzr(zzccgVar.zza);
                zzfar zzL = zzfapVar.zzL();
                zzezl zzezlVar = new zzezl(null);
                zzezlVar.zza = zzL;
                zzezlVar.zzb = null;
                zzfsm<zzdrw> zzc = this.zze.zzc(new zzexp(zzezlVar, null), new zzexn(this) { // from class: com.google.android.gms.internal.ads.zzezg
                    private final zzezm zza;

                    {
                        this.zza = this;
                    }

                    @Override // com.google.android.gms.internal.ads.zzexn
                    public final zzdak zza(zzexm zzexmVar) {
                        return this.zza.zzh(zzexmVar);
                    }
                }, null);
                this.zzh = zzc;
                zzfsd.zzp(zzc, new zzezj(this, zzelxVar, zzezlVar), this.zzb);
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzely
    public final boolean zzb() {
        throw null;
    }

    public final /* synthetic */ void zzg() {
        this.zzd.zzbD(zzfbm.zzd(6, null, null));
    }

    public final void zzi(int i) {
        this.zzg.zzz().zzb(i);
    }
}
