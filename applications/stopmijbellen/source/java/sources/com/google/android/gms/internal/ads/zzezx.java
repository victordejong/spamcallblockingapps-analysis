package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.zzt;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzezx.class */
public final class zzezx implements zzepn<zzcyw> {
    private final Context zza;
    private final Executor zzb;
    private final zzcqm zzc;
    private final zzeox zzd;
    private final zzepb zze;
    private final ViewGroup zzf;
    private zzbme zzg;
    private final zzdhg zzh;
    private final zzfjg zzi;
    @GuardedBy("this")
    private final zzfed zzj;
    @GuardedBy("this")
    private zzfxa<zzcyw> zzk;

    public zzezx(Context context, Executor executor, zzbfi zzbfiVar, zzcqm zzcqmVar, zzeox zzeoxVar, zzepb zzepbVar, zzfed zzfedVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzcqmVar;
        this.zzd = zzeoxVar;
        this.zze = zzepbVar;
        this.zzj = zzfedVar;
        this.zzh = zzcqmVar.zzh();
        this.zzi = zzcqmVar.zzA();
        this.zzf = new FrameLayout(context);
        zzfedVar.zzr(zzbfiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final boolean zza() {
        zzfxa<zzcyw> zzfxaVar = this.zzk;
        return zzfxaVar != null && !zzfxaVar.isDone();
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final boolean zzb(zzbfd zzbfdVar, String str, zzepl zzeplVar, zzepm<? super zzcyw> zzepmVar) throws RemoteException {
        zzczt zzcztVar;
        zzfje zzp = zzfje.zzp(this.zza, 7, 3, zzbfdVar);
        if (str == null) {
            zzciz.zzg("Ad unit ID should not be null for banner ad.");
            this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzezt
                @Override // java.lang.Runnable
                public final void run() {
                    zzezx.this.zzl();
                }
            });
            if (zzp == null) {
                return false;
            }
            zzfjg zzfjgVar = this.zzi;
            zzp.zzg(false);
            zzfjgVar.zza(zzp.zzi());
            return false;
        } else if (zza()) {
            if (zzp == null) {
                return false;
            }
            zzfjg zzfjgVar2 = this.zzi;
            zzp.zzg(false);
            zzfjgVar2.zza(zzp.zzi());
            return false;
        } else {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgA)).booleanValue() && zzbfdVar.zzf) {
                this.zzc.zzn().zzl(true);
            }
            zzfed zzfedVar = this.zzj;
            zzfedVar.zzs(str);
            zzfedVar.zzD(zzbfdVar);
            zzfef zzF = zzfedVar.zzF();
            if (zzbnb.zzc.zze().booleanValue() && this.zzj.zzg().zzk) {
                zzeox zzeoxVar = this.zzd;
                if (zzeoxVar != null) {
                    zzeoxVar.zza(zzfey.zzd(7, null, null));
                }
                if (zzp == null) {
                    return false;
                }
                zzfjg zzfjgVar3 = this.zzi;
                zzp.zzg(false);
                zzfjgVar3.zza(zzp.zzi());
                return false;
            }
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzfV)).booleanValue()) {
                zzczs zzg = this.zzc.zzg();
                zzdeb zzdebVar = new zzdeb();
                zzdebVar.zzc(this.zza);
                zzdebVar.zzf(zzF);
                zzg.zzi(zzdebVar.zzg());
                zzdkc zzdkcVar = new zzdkc();
                zzdkcVar.zzj(this.zzd, this.zzb);
                zzdkcVar.zzk(this.zzd, this.zzb);
                zzg.zzf(zzdkcVar.zzn());
                zzg.zze(new zzenh(this.zzg));
                zzg.zzd(new zzdok(zzdqn.zza, null));
                zzg.zzg(new zzdap(this.zzh));
                zzg.zzc(new zzcyt(this.zzf));
                zzcztVar = zzg.zzj();
            } else {
                zzczs zzg2 = this.zzc.zzg();
                zzdeb zzdebVar2 = new zzdeb();
                zzdebVar2.zzc(this.zza);
                zzdebVar2.zzf(zzF);
                zzg2.zzi(zzdebVar2.zzg());
                zzdkc zzdkcVar2 = new zzdkc();
                zzdkcVar2.zzj(this.zzd, this.zzb);
                zzdkcVar2.zza(this.zzd, this.zzb);
                zzdkcVar2.zza(this.zze, this.zzb);
                zzdkcVar2.zzl(this.zzd, this.zzb);
                zzdkcVar2.zzd(this.zzd, this.zzb);
                zzdkcVar2.zze(this.zzd, this.zzb);
                zzdkcVar2.zzf(this.zzd, this.zzb);
                zzdkcVar2.zzb(this.zzd, this.zzb);
                zzdkcVar2.zzk(this.zzd, this.zzb);
                zzdkcVar2.zzi(this.zzd, this.zzb);
                zzg2.zzf(zzdkcVar2.zzn());
                zzg2.zze(new zzenh(this.zzg));
                zzg2.zzd(new zzdok(zzdqn.zza, null));
                zzg2.zzg(new zzdap(this.zzh));
                zzg2.zzc(new zzcyt(this.zzf));
                zzcztVar = zzg2.zzj();
            }
            zzdby<zzcyw> zzd = zzcztVar.zzd();
            zzfxa<zzcyw> zzh = zzd.zzh(zzd.zzi());
            this.zzk = zzh;
            zzfwq.zzr(zzh, new zzezw(this, zzepmVar, zzp, zzcztVar), this.zzb);
            return true;
        }
    }

    public final ViewGroup zzd() {
        return this.zzf;
    }

    public final zzfed zzh() {
        return this.zzj;
    }

    public final /* synthetic */ void zzl() {
        this.zzd.zza(zzfey.zzd(6, null, null));
    }

    public final void zzm() {
        this.zzh.zzd(60);
    }

    public final void zzn(zzbgu zzbguVar) {
        this.zze.zza(zzbguVar);
    }

    public final void zzo(zzdhh zzdhhVar) {
        this.zzh.zzj(zzdhhVar, this.zzb);
    }

    public final void zzp(zzbme zzbmeVar) {
        this.zzg = zzbmeVar;
    }

    public final boolean zzq() {
        ViewParent parent = this.zzf.getParent();
        if (!(parent instanceof View)) {
            return false;
        }
        View view = (View) parent;
        zzt.zzp();
        return com.google.android.gms.ads.internal.util.zzt.zzaa(view, view.getContext());
    }
}
