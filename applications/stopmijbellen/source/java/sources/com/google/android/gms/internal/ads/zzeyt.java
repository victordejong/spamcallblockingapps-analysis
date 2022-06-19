package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzcye;
import com.google.android.gms.internal.ads.zzdav;
import com.google.android.gms.internal.ads.zzddz;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeyt.class */
public abstract class zzeyt<AppOpenAd extends zzdav, AppOpenRequestComponent extends zzcye<AppOpenAd>, AppOpenRequestComponentBuilder extends zzddz<AppOpenRequestComponent>> implements zzepn<AppOpenAd> {
    public final zzcqm zza;
    private final Context zzb;
    private final Executor zzc;
    private final zzezj zzd;
    private final zzfbc<AppOpenRequestComponent, AppOpenAd> zze;
    private final ViewGroup zzf;
    private final zzfjg zzg;
    @GuardedBy("this")
    private final zzfed zzh;
    @GuardedBy("this")
    @Nullable
    private zzfxa<AppOpenAd> zzi;

    public zzeyt(Context context, Executor executor, zzcqm zzcqmVar, zzfbc<AppOpenRequestComponent, AppOpenAd> zzfbcVar, zzezj zzezjVar, zzfed zzfedVar) {
        this.zzb = context;
        this.zzc = executor;
        this.zza = zzcqmVar;
        this.zze = zzfbcVar;
        this.zzd = zzezjVar;
        this.zzh = zzfedVar;
        this.zzf = new FrameLayout(context);
        this.zzg = zzcqmVar.zzA();
    }

    public final AppOpenRequestComponentBuilder zzm(zzfba zzfbaVar) {
        synchronized (this) {
            zzeys zzeysVar = (zzeys) zzfbaVar;
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzfW)).booleanValue()) {
                zzcyt zzcytVar = new zzcyt(this.zzf);
                zzdeb zzdebVar = new zzdeb();
                zzdebVar.zzc(this.zzb);
                zzdebVar.zzf(zzeysVar.zza);
                zzded zzg = zzdebVar.zzg();
                zzdkc zzdkcVar = new zzdkc();
                zzdkcVar.zzc(this.zzd, this.zzc);
                zzdkcVar.zzl(this.zzd, this.zzc);
                return zzc(zzcytVar, zzg, zzdkcVar.zzn());
            }
            zzezj zzi = zzezj.zzi(this.zzd);
            zzdkc zzdkcVar2 = new zzdkc();
            zzdkcVar2.zzb(zzi, this.zzc);
            zzdkcVar2.zzg(zzi, this.zzc);
            zzdkcVar2.zzh(zzi, this.zzc);
            zzdkcVar2.zzi(zzi, this.zzc);
            zzdkcVar2.zzc(zzi, this.zzc);
            zzdkcVar2.zzl(zzi, this.zzc);
            zzdkcVar2.zzm(zzi);
            zzcyt zzcytVar2 = new zzcyt(this.zzf);
            zzdeb zzdebVar2 = new zzdeb();
            zzdebVar2.zzc(this.zzb);
            zzdebVar2.zzf(zzeysVar.zza);
            return zzc(zzcytVar2, zzdebVar2.zzg(), zzdkcVar2.zzn());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final boolean zza() {
        zzfxa<AppOpenAd> zzfxaVar = this.zzi;
        return zzfxaVar != null && !zzfxaVar.isDone();
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final boolean zzb(zzbfd zzbfdVar, String str, zzepl zzeplVar, zzepm<? super AppOpenAd> zzepmVar) throws RemoteException {
        synchronized (this) {
            zzfje zzp = zzfje.zzp(this.zzb, 7, 7, zzbfdVar);
            Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
            if (str == null) {
                zzciz.zzg("Ad unit ID should not be null for app open ad.");
                this.zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeyo
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzeyt.this.zzk();
                    }
                });
                if (zzp != null) {
                    zzfjg zzfjgVar = this.zzg;
                    zzp.zzg(false);
                    zzfjgVar.zza(zzp.zzi());
                }
                return false;
            } else if (this.zzi != null) {
                if (zzp != null) {
                    zzfjg zzfjgVar2 = this.zzg;
                    zzp.zzg(false);
                    zzfjgVar2.zza(zzp.zzi());
                }
                return false;
            } else {
                zzfeu.zza(this.zzb, zzbfdVar.zzf);
                if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgA)).booleanValue() && zzbfdVar.zzf) {
                    this.zza.zzn().zzl(true);
                }
                zzfed zzfedVar = this.zzh;
                zzfedVar.zzs(str);
                zzfedVar.zzr(zzbfi.zzb());
                zzfedVar.zzD(zzbfdVar);
                zzfef zzF = zzfedVar.zzF();
                zzeys zzeysVar = new zzeys(null);
                zzeysVar.zza = zzF;
                zzfxa<AppOpenAd> zzc = this.zze.zzc(new zzfbd(zzeysVar, null), new zzfbb() { // from class: com.google.android.gms.internal.ads.zzeyn
                    @Override // com.google.android.gms.internal.ads.zzfbb
                    public final zzddz zza(zzfba zzfbaVar) {
                        zzddz zzm;
                        zzm = zzeyt.this.zzm(zzfbaVar);
                        return zzm;
                    }
                }, null);
                this.zzi = zzc;
                zzfwq.zzr(zzc, new zzeyq(this, zzepmVar, zzp, zzeysVar), this.zzc);
                return true;
            }
        }
    }

    public abstract AppOpenRequestComponentBuilder zzc(zzcyt zzcytVar, zzded zzdedVar, zzdke zzdkeVar);

    public final /* synthetic */ void zzk() {
        this.zzd.zza(zzfey.zzd(6, null, null));
    }

    public final void zzl(zzbfo zzbfoVar) {
        this.zzh.zzt(zzbfoVar);
    }
}
