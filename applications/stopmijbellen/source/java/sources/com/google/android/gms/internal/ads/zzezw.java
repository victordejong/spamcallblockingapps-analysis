package com.google.android.gms.internal.ads;

import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.Objects;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzezw.class */
public final class zzezw implements zzfwm<zzcyw> {
    public final /* synthetic */ zzepm zza;
    public final /* synthetic */ zzfje zzb;
    public final /* synthetic */ zzczt zzc;
    public final /* synthetic */ zzezx zzd;

    public zzezw(zzezx zzezxVar, zzepm zzepmVar, zzfje zzfjeVar, zzczt zzcztVar) {
        this.zzd = zzezxVar;
        this.zza = zzepmVar;
        this.zzb = zzfjeVar;
        this.zzc = zzcztVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zza(Throwable th) {
        zzdhg zzdhgVar;
        zzfjg zzfjgVar;
        Executor executor;
        final zzbew zza = this.zzc.zzd().zza(th);
        synchronized (this.zzd) {
            this.zzd.zzk = null;
            this.zzc.zzf().zza(zza);
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzfV)).booleanValue()) {
                executor = this.zzd.zzb;
                executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzezv
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzeox zzeoxVar;
                        zzezw zzezwVar = zzezw.this;
                        zzbew zzbewVar = zza;
                        zzeoxVar = zzezwVar.zzd.zzd;
                        zzeoxVar.zza(zzbewVar);
                    }
                });
            }
            zzdhgVar = this.zzd.zzh;
            zzdhgVar.zzd(60);
            zzfeu.zzb(zza.zza, th, "BannerAdLoader.onFailure");
            this.zza.zza();
            if (this.zzb != null) {
                zzfjgVar = this.zzd.zzi;
                zzfje zzfjeVar = this.zzb;
                zzfjeVar.zzc(zza);
                zzfjeVar.zzg(false);
                zzfjgVar.zza(zzfjeVar.zzi());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final /* bridge */ /* synthetic */ void zzb(zzcyw zzcywVar) {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        zzdhg zzdhgVar;
        zzfjg zzfjgVar;
        Executor executor;
        final zzeox zzeoxVar;
        zzeox zzeoxVar2;
        zzepb zzepbVar;
        zzcyw zzcywVar2 = zzcywVar;
        synchronized (this.zzd) {
            this.zzd.zzk = null;
            viewGroup = this.zzd.zzf;
            viewGroup.removeAllViews();
            if (zzcywVar2.zzc() != null) {
                ViewParent parent = zzcywVar2.zzc().getParent();
                if (parent instanceof ViewGroup) {
                    String str = "";
                    if (zzcywVar2.zzl() != null) {
                        str = zzcywVar2.zzl().zze();
                    }
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 78);
                    sb.append("Banner view provided from ");
                    sb.append(str);
                    sb.append(" already has a parent view. Removing its old parent.");
                    zzciz.zzj(sb.toString());
                    ((ViewGroup) parent).removeView(zzcywVar2.zzc());
                }
            }
            zzblb<Boolean> zzblbVar = zzblj.zzfV;
            if (((Boolean) zzbgq.zzc().zzb(zzblbVar)).booleanValue()) {
                zzdiz zzn = zzcywVar2.zzn();
                zzeoxVar2 = this.zzd.zzd;
                zzn.zza(zzeoxVar2);
                zzepbVar = this.zzd.zze;
                zzn.zzc(zzepbVar);
            }
            viewGroup2 = this.zzd.zzf;
            viewGroup2.addView(zzcywVar2.zzc());
            this.zza.zzb(zzcywVar2);
            if (((Boolean) zzbgq.zzc().zzb(zzblbVar)).booleanValue()) {
                executor = this.zzd.zzb;
                zzeoxVar = this.zzd.zzd;
                Objects.requireNonNull(zzeoxVar);
                executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzezu
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzeox.this.zzn();
                    }
                });
            }
            zzdhgVar = this.zzd.zzh;
            zzdhgVar.zzd(zzcywVar2.zza());
            if (this.zzb != null) {
                zzfjgVar = this.zzd.zzi;
                zzfje zzfjeVar = this.zzb;
                zzfjeVar.zzd(zzcywVar2.zzp().zzb);
                zzfjeVar.zze(zzcywVar2.zzl().zze());
                zzfjeVar.zzg(true);
                zzfjgVar.zza(zzfjeVar.zzi());
            }
        }
    }
}
