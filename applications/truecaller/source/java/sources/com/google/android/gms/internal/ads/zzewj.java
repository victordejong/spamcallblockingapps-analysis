package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzewj.class */
public final class zzewj implements zzely<zzcvh> {
    private final Context zza;
    private final Executor zzb;
    private final zzcoj zzc;
    private final zzeli zzd;
    private final zzelm zze;
    private final ViewGroup zzf;
    private zzbkg zzg;
    private final zzddr zzh;
    private final zzfap zzi;
    private zzfsm<zzcvh> zzj;

    public zzewj(Context context, Executor executor, zzbdl zzbdlVar, zzcoj zzcojVar, zzeli zzeliVar, zzelm zzelmVar, zzfap zzfapVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzcojVar;
        this.zzd = zzeliVar;
        this.zze = zzelmVar;
        this.zzi = zzfapVar;
        this.zzh = zzcojVar.zzh();
        this.zzf = new FrameLayout(context);
        zzfapVar.zzt(zzbdlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzely
    public final boolean zza(zzbdg zzbdgVar, String str, zzelw zzelwVar, zzelx<? super zzcvh> zzelxVar) throws RemoteException {
        zzcwe zzcweVar;
        if (str == null) {
            zzcgt.zzf("Ad unit ID should not be null for banner ad.");
            this.zzb.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzewf
                private final zzewj zza;

                {
                    this.zza = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzp();
                }
            });
            return false;
        } else if (zzb()) {
            return false;
        } else {
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgp)).booleanValue() && zzbdgVar.zzf) {
                this.zzc.zzz().zzc(true);
            }
            zzfap zzfapVar = this.zzi;
            zzfapVar.zzw(str);
            zzfapVar.zzr(zzbdgVar);
            zzfar zzL = zzfapVar.zzL();
            if (zzblc.zzc.zze().booleanValue() && this.zzi.zzv().zzk) {
                zzeli zzeliVar = this.zzd;
                if (zzeliVar == null) {
                    return false;
                }
                zzeliVar.zzbD(zzfbm.zzd(7, null, null));
                return false;
            }
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzfO)).booleanValue()) {
                zzcwd zzk = this.zzc.zzk();
                zzdam zzdamVar = new zzdam();
                zzdamVar.zze(this.zza);
                zzdamVar.zzf(zzL);
                zzk.zzi(zzdamVar.zzh());
                zzdgn zzdgnVar = new zzdgn();
                zzdgnVar.zzB(this.zzd, this.zzb);
                zzdgnVar.zzt(this.zzd, this.zzb);
                zzk.zzj(zzdgnVar.zzC());
                zzk.zze(new zzejq(this.zzg));
                zzk.zzb(new zzdkw(zzdmx.zza, null));
                zzk.zzd(new zzcxa(this.zzh));
                zzk.zzc(new zzcve(this.zzf));
                zzcweVar = zzk.zza();
            } else {
                zzcwd zzk2 = this.zzc.zzk();
                zzdam zzdamVar2 = new zzdam();
                zzdamVar2.zze(this.zza);
                zzdamVar2.zzf(zzL);
                zzk2.zzi(zzdamVar2.zzh());
                zzdgn zzdgnVar2 = new zzdgn();
                zzdgnVar2.zzB(this.zzd, this.zzb);
                zzdgnVar2.zzu(this.zzd, this.zzb);
                zzdgnVar2.zzu(this.zze, this.zzb);
                zzdgnVar2.zzv(this.zzd, this.zzb);
                zzdgnVar2.zzw(this.zzd, this.zzb);
                zzdgnVar2.zzp(this.zzd, this.zzb);
                zzdgnVar2.zzq(this.zzd, this.zzb);
                zzdgnVar2.zzr(this.zzd, this.zzb);
                zzdgnVar2.zzt(this.zzd, this.zzb);
                zzdgnVar2.zzz(this.zzd, this.zzb);
                zzk2.zzj(zzdgnVar2.zzC());
                zzk2.zze(new zzejq(this.zzg));
                zzk2.zzb(new zzdkw(zzdmx.zza, null));
                zzk2.zzd(new zzcxa(this.zzh));
                zzk2.zzc(new zzcve(this.zzf));
                zzcweVar = zzk2.zza();
            }
            zzcyj<zzcvh> zzY = zzcweVar.zzY();
            zzfsm<zzcvh> zzd = zzY.zzd(zzY.zzc());
            this.zzj = zzd;
            zzfsd.zzp(zzd, new zzewi(this, zzelxVar, zzcweVar), this.zzb);
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzely
    public final boolean zzb() {
        zzfsm<zzcvh> zzfsmVar = this.zzj;
        return zzfsmVar != null && !zzfsmVar.isDone();
    }

    public final ViewGroup zzi() {
        return this.zzf;
    }

    public final void zzj(zzbkg zzbkgVar) {
        this.zzg = zzbkgVar;
    }

    public final void zzk(zzbex zzbexVar) {
        this.zze.zza(zzbexVar);
    }

    public final zzfap zzl() {
        return this.zzi;
    }

    public final boolean zzm() {
        ViewParent parent = this.zzf.getParent();
        if (!(parent instanceof View)) {
            return false;
        }
        View view = (View) parent;
        zzt.zzc();
        return zzs.zzZ(view, view.getContext());
    }

    public final void zzn(zzdds zzddsVar) {
        this.zzh.zzi(zzddsVar, this.zzb);
    }

    public final void zzo() {
        this.zzh.zzd(60);
    }

    public final /* synthetic */ void zzp() {
        this.zzd.zzbD(zzfbm.zzd(6, null, null));
    }
}
