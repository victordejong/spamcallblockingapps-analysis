package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzcup;
import com.google.android.gms.internal.ads.zzcxg;
import com.google.android.gms.internal.ads.zzdak;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzevf.class */
public abstract class zzevf<AppOpenAd extends zzcxg, AppOpenRequestComponent extends zzcup<AppOpenAd>, AppOpenRequestComponentBuilder extends zzdak<AppOpenRequestComponent>> implements zzely<AppOpenAd> {
    public final zzcoj zza;
    private final Context zzb;
    private final Executor zzc;
    private final zzevv zzd;
    private final zzexo<AppOpenRequestComponent, AppOpenAd> zze;
    private final ViewGroup zzf;
    private final zzfap zzg;
    private zzfsm<AppOpenAd> zzh;

    public zzevf(Context context, Executor executor, zzcoj zzcojVar, zzexo<AppOpenRequestComponent, AppOpenAd> zzexoVar, zzevv zzevvVar, zzfap zzfapVar) {
        this.zzb = context;
        this.zzc = executor;
        this.zza = zzcojVar;
        this.zze = zzexoVar;
        this.zzd = zzevvVar;
        this.zzg = zzfapVar;
        this.zzf = new FrameLayout(context);
    }

    /* renamed from: zzl */
    public final AppOpenRequestComponentBuilder zzk(zzexm zzexmVar) {
        synchronized (this) {
            zzevd zzevdVar = (zzevd) zzexmVar;
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzfP)).booleanValue()) {
                zzcve zzcveVar = new zzcve(this.zzf);
                zzdam zzdamVar = new zzdam();
                zzdamVar.zze(this.zzb);
                zzdamVar.zzf(zzevdVar.zza);
                zzdao zzh = zzdamVar.zzh();
                zzdgn zzdgnVar = new zzdgn();
                zzdgnVar.zzs(this.zzd, this.zzc);
                zzdgnVar.zzv(this.zzd, this.zzc);
                return zzc(zzcveVar, zzh, zzdgnVar.zzC());
            }
            zzevv zzg = zzevv.zzg(this.zzd);
            zzdgn zzdgnVar2 = new zzdgn();
            zzdgnVar2.zzr(zzg, this.zzc);
            zzdgnVar2.zzx(zzg, this.zzc);
            zzdgnVar2.zzy(zzg, this.zzc);
            zzdgnVar2.zzz(zzg, this.zzc);
            zzdgnVar2.zzs(zzg, this.zzc);
            zzdgnVar2.zzv(zzg, this.zzc);
            zzdgnVar2.zzA(zzg);
            zzcve zzcveVar2 = new zzcve(this.zzf);
            zzdam zzdamVar2 = new zzdam();
            zzdamVar2.zze(this.zzb);
            zzdamVar2.zzf(zzevdVar.zza);
            return zzc(zzcveVar2, zzdamVar2.zzh(), zzdgnVar2.zzC());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzely
    public final boolean zza(zzbdg zzbdgVar, String str, zzelw zzelwVar, zzelx<? super AppOpenAd> zzelxVar) throws RemoteException {
        synchronized (this) {
            Preconditions.m38902f("loadAd must be called on the main UI thread.");
            if (str == null) {
                zzcgt.zzf("Ad unit ID should not be null for app open ad.");
                this.zzc.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzeuz
                    private final zzevf zza;

                    {
                        this.zza = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zza.zzj();
                    }
                });
                return false;
            } else if (this.zzh != null) {
                return false;
            } else {
                zzfbh.zzb(this.zzb, zzbdgVar.zzf);
                if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgp)).booleanValue() && zzbdgVar.zzf) {
                    this.zza.zzz().zzc(true);
                }
                zzfap zzfapVar = this.zzg;
                zzfapVar.zzw(str);
                zzfapVar.zzt(zzbdl.zzd());
                zzfapVar.zzr(zzbdgVar);
                zzfar zzL = zzfapVar.zzL();
                zzevd zzevdVar = new zzevd(null);
                zzevdVar.zza = zzL;
                zzfsm<AppOpenAd> zzc = this.zze.zzc(new zzexp(zzevdVar, null), new zzexn(this) { // from class: com.google.android.gms.internal.ads.zzeva
                    private final zzevf zza;

                    {
                        this.zza = this;
                    }

                    @Override // com.google.android.gms.internal.ads.zzexn
                    public final zzdak zza(zzexm zzexmVar) {
                        return this.zza.zzk(zzexmVar);
                    }
                }, null);
                this.zzh = zzc;
                zzfsd.zzp(zzc, new zzevc(this, zzelxVar, zzevdVar), this.zzc);
                return true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzely
    public final boolean zzb() {
        zzfsm<AppOpenAd> zzfsmVar = this.zzh;
        return zzfsmVar != null && !zzfsmVar.isDone();
    }

    public abstract AppOpenRequestComponentBuilder zzc(zzcve zzcveVar, zzdao zzdaoVar, zzdgp zzdgpVar);

    public final void zzi(zzbdr zzbdrVar) {
        this.zzg.zzF(zzbdrVar);
    }

    public final /* synthetic */ void zzj() {
        this.zzd.zzbD(zzfbm.zzd(6, null, null));
    }
}
