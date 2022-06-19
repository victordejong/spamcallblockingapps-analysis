package com.google.android.gms.internal.ads;

import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzewi.class */
public final class zzewi implements zzfrz<zzcvh> {
    public final /* synthetic */ zzelx zza;
    public final /* synthetic */ zzcwe zzb;
    public final /* synthetic */ zzewj zzc;

    public zzewi(zzewj zzewjVar, zzelx zzelxVar, zzcwe zzcweVar) {
        this.zzc = zzewjVar;
        this.zza = zzelxVar;
        this.zzb = zzcweVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final void zza(Throwable th) {
        zzddr zzddrVar;
        Executor executor;
        zzbcz zzh = this.zzb.zzY().zzh(th);
        synchronized (this.zzc) {
            this.zzc.zzj = null;
            this.zzb.zzX().zzbD(zzh);
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzfO)).booleanValue()) {
                executor = this.zzc.zzb;
                executor.execute(new Runnable(this, zzh) { // from class: com.google.android.gms.internal.ads.zzewh
                    private final zzewi zza;
                    private final zzbcz zzb;

                    {
                        this.zza = this;
                        this.zzb = zzh;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        zzeli zzeliVar;
                        zzewi zzewiVar = this.zza;
                        zzbcz zzbczVar = this.zzb;
                        zzeliVar = zzewiVar.zzc.zzd;
                        zzeliVar.zzbD(zzbczVar);
                    }
                });
            }
            zzddrVar = this.zzc.zzh;
            zzddrVar.zzd(60);
            zzfbh.zza(zzh.zza, th, "BannerAdLoader.onFailure");
            this.zza.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final /* bridge */ /* synthetic */ void zzb(zzcvh zzcvhVar) {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        zzddr zzddrVar;
        Executor executor;
        zzeli zzeliVar;
        zzeli zzeliVar2;
        zzelm zzelmVar;
        zzcvh zzcvhVar2 = zzcvhVar;
        synchronized (this.zzc) {
            this.zzc.zzj = null;
            viewGroup = this.zzc.zzf;
            viewGroup.removeAllViews();
            if (zzcvhVar2.zza() != null) {
                ViewParent parent = zzcvhVar2.zza().getParent();
                if (parent instanceof ViewGroup) {
                    String str = "";
                    if (zzcvhVar2.zzm() != null) {
                        str = zzcvhVar2.zzm().zze();
                    }
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 78);
                    sb.append("Banner view provided from ");
                    sb.append(str);
                    sb.append(" already has a parent view. Removing its old parent.");
                    zzcgt.zzi(sb.toString());
                    ((ViewGroup) parent).removeView(zzcvhVar2.zza());
                }
            }
            zzbjd<Boolean> zzbjdVar = zzbjl.zzfO;
            if (((Boolean) zzbet.zzc().zzc(zzbjdVar)).booleanValue()) {
                zzdfj zzo = zzcvhVar2.zzo();
                zzeliVar2 = this.zzc.zzd;
                zzo.zza(zzeliVar2);
                zzelmVar = this.zzc.zze;
                zzo.zzb(zzelmVar);
            }
            viewGroup2 = this.zzc.zzf;
            viewGroup2.addView(zzcvhVar2.zza());
            this.zza.zzb(zzcvhVar2);
            if (((Boolean) zzbet.zzc().zzc(zzbjdVar)).booleanValue()) {
                executor = this.zzc.zzb;
                zzeliVar = this.zzc.zzd;
                zzeliVar.getClass();
                executor.execute(zzewg.zza(zzeliVar));
            }
            zzddrVar = this.zzc.zzh;
            zzddrVar.zzd(zzcvhVar2.zzg());
        }
    }
}
