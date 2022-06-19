package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.overlay.zzw;
import com.google.android.gms.ads.internal.zzb;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdwi.class */
public final class zzdwi {
    private final zzdep zza;
    private final zzdmb zzb;
    private final zzdfy zzc;
    private final zzdgl zzd;
    private final zzdgx zze;
    private final zzdjo zzf;
    private final Executor zzg;
    private final zzdly zzh;
    private final zzcxf zzi;
    private final zzb zzj;
    private final zzcgf zzk;
    private final zzalt zzl;
    private final zzdjf zzm;
    private final zzehh zzn;
    private final zzfjs zzo;
    private final zzdyz zzp;
    private final zzfio zzq;

    public zzdwi(zzdep zzdepVar, zzdfy zzdfyVar, zzdgl zzdglVar, zzdgx zzdgxVar, zzdjo zzdjoVar, Executor executor, zzdly zzdlyVar, zzcxf zzcxfVar, zzb zzbVar, zzcgf zzcgfVar, zzalt zzaltVar, zzdjf zzdjfVar, zzehh zzehhVar, zzfjs zzfjsVar, zzdyz zzdyzVar, zzfio zzfioVar, zzdmb zzdmbVar) {
        this.zza = zzdepVar;
        this.zzc = zzdfyVar;
        this.zzd = zzdglVar;
        this.zze = zzdgxVar;
        this.zzf = zzdjoVar;
        this.zzg = executor;
        this.zzh = zzdlyVar;
        this.zzi = zzcxfVar;
        this.zzj = zzbVar;
        this.zzk = zzcgfVar;
        this.zzl = zzaltVar;
        this.zzm = zzdjfVar;
        this.zzn = zzehhVar;
        this.zzo = zzfjsVar;
        this.zzp = zzdyzVar;
        this.zzq = zzfioVar;
        this.zzb = zzdmbVar;
    }

    public static final zzfxa<?> zzj(zzcop zzcopVar, String str, String str2) {
        final zzcjr zzcjrVar = new zzcjr();
        zzcopVar.zzP().zzz(new zzcqa() { // from class: com.google.android.gms.internal.ads.zzdwg
            @Override // com.google.android.gms.internal.ads.zzcqa
            public final void zza(boolean z) {
                zzcjr zzcjrVar2 = zzcjr.this;
                if (z) {
                    zzcjrVar2.zzd(null);
                } else {
                    zzcjrVar2.zze(new Exception("Ad Web View failed to load."));
                }
            }
        });
        zzcopVar.zzad(str, str2, null);
        return zzcjrVar;
    }

    public final /* synthetic */ void zzc() {
        this.zza.onAdClicked();
    }

    public final /* synthetic */ void zzd(String str, String str2) {
        this.zzf.zzbL(str, str2);
    }

    public final /* synthetic */ void zze() {
        this.zzc.zzb();
    }

    public final /* synthetic */ void zzf(View view) {
        this.zzj.zza();
    }

    public final /* synthetic */ void zzg(zzcop zzcopVar, zzcop zzcopVar2, Map map) {
        this.zzi.zzh(zzcopVar);
    }

    public final /* synthetic */ boolean zzh(View view, MotionEvent motionEvent) {
        this.zzj.zza();
        return false;
    }

    public final void zzi(final zzcop zzcopVar, boolean z, zzbrw zzbrwVar) {
        zzalp zzc;
        zzcopVar.zzP().zzL(new zzbes() { // from class: com.google.android.gms.internal.ads.zzdwc
            @Override // com.google.android.gms.internal.ads.zzbes
            public final void onAdClicked() {
                zzdwi.this.zzc();
            }
        }, this.zzd, this.zze, new zzbqv() { // from class: com.google.android.gms.internal.ads.zzdwd
            @Override // com.google.android.gms.internal.ads.zzbqv
            public final void zzbL(String str, String str2) {
                zzdwi.this.zzd(str, str2);
            }
        }, new zzw() { // from class: com.google.android.gms.internal.ads.zzdwf
            @Override // com.google.android.gms.ads.internal.overlay.zzw
            public final void zzg() {
                zzdwi.this.zze();
            }
        }, z, zzbrwVar, this.zzj, new zzdwh(this), this.zzk, this.zzn, this.zzo, this.zzp, this.zzq, null, this.zzb);
        zzcopVar.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.gms.internal.ads.zzdwa
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                zzdwi.this.zzh(view, motionEvent);
                return false;
            }
        });
        zzcopVar.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzdvz
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                zzdwi.this.zzf(view);
            }
        });
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzbQ)).booleanValue() && (zzc = this.zzl.zzc()) != null) {
            zzc.zzn((View) zzcopVar);
        }
        this.zzh.zzj(zzcopVar, this.zzg);
        this.zzh.zzj(new zzaya() { // from class: com.google.android.gms.internal.ads.zzdwb
            @Override // com.google.android.gms.internal.ads.zzaya
            public final void zzc(zzaxz zzaxzVar) {
                zzcqc zzP = zzcop.this.zzP();
                Rect rect = zzaxzVar.zzd;
                zzP.zzo(rect.left, rect.top, false);
            }
        }, this.zzg);
        this.zzh.zza((View) zzcopVar);
        zzcopVar.zzaf("/trackActiveViewUnit", new zzbrt() { // from class: com.google.android.gms.internal.ads.zzdwe
            @Override // com.google.android.gms.internal.ads.zzbrt
            public final void zza(Object obj, Map map) {
                zzdwi.this.zzg(zzcopVar, (zzcop) obj, map);
            }
        });
        this.zzi.zzi(zzcopVar);
    }
}
