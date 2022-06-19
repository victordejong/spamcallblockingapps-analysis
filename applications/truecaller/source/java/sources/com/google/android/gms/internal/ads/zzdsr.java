package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.overlay.zzv;
import com.google.android.gms.ads.internal.zzb;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdsr.class */
public final class zzdsr {
    private final zzdba zza;
    private final zzdim zzb;
    private final zzdcj zzc;
    private final zzdcw zzd;
    private final zzddi zze;
    private final zzdfz zzf;
    private final Executor zzg;
    private final zzdij zzh;
    private final zzctq zzi;
    private final zzb zzj;
    private final zzcdy zzk;
    private final zzaas zzl;
    private final zzdfq zzm;
    private final zzedq zzn;
    private final zzffu zzo;
    private final zzdvi zzp;
    private final zzffc zzq;

    public zzdsr(zzdba zzdbaVar, zzdcj zzdcjVar, zzdcw zzdcwVar, zzddi zzddiVar, zzdfz zzdfzVar, Executor executor, zzdij zzdijVar, zzctq zzctqVar, zzb zzbVar, zzcdy zzcdyVar, zzaas zzaasVar, zzdfq zzdfqVar, zzedq zzedqVar, zzffu zzffuVar, zzdvi zzdviVar, zzffc zzffcVar, zzdim zzdimVar) {
        this.zza = zzdbaVar;
        this.zzc = zzdcjVar;
        this.zzd = zzdcwVar;
        this.zze = zzddiVar;
        this.zzf = zzdfzVar;
        this.zzg = executor;
        this.zzh = zzdijVar;
        this.zzi = zzctqVar;
        this.zzj = zzbVar;
        this.zzk = zzcdyVar;
        this.zzl = zzaasVar;
        this.zzm = zzdfqVar;
        this.zzn = zzedqVar;
        this.zzo = zzffuVar;
        this.zzp = zzdviVar;
        this.zzq = zzffcVar;
        this.zzb = zzdimVar;
    }

    public static final zzfsm<?> zzj(zzcml zzcmlVar, String str, String str2) {
        zzchl zzchlVar = new zzchl();
        zzcmlVar.zzR().zzy(new zzcnx(zzchlVar) { // from class: com.google.android.gms.internal.ads.zzdsp
            private final zzchl zza;

            {
                this.zza = zzchlVar;
            }

            @Override // com.google.android.gms.internal.ads.zzcnx
            public final void zza(boolean z) {
                zzchl zzchlVar2 = this.zza;
                if (z) {
                    zzchlVar2.zzc(null);
                } else {
                    zzchlVar2.zzd(new Exception("Ad Web View failed to load."));
                }
            }
        });
        zzcmlVar.zzat(str, str2, null);
        return zzchlVar;
    }

    public final /* synthetic */ void zzc(zzcml zzcmlVar, zzcml zzcmlVar2, Map map) {
        this.zzi.zzj(zzcmlVar);
    }

    public final /* synthetic */ void zzd(View view) {
        this.zzj.zza();
    }

    public final /* synthetic */ boolean zze(View view, MotionEvent motionEvent) {
        this.zzj.zza();
        return false;
    }

    public final /* synthetic */ void zzf() {
        this.zzc.zzb();
    }

    public final /* synthetic */ void zzg(String str, String str2) {
        this.zzf.zzbA(str, str2);
    }

    public final /* synthetic */ void zzh() {
        this.zza.onAdClicked();
    }

    public final void zzi(zzcml zzcmlVar, boolean z, zzbpu zzbpuVar) {
        zzaao zzb;
        zzcmlVar.zzR().zzL(new zzbcv(this) { // from class: com.google.android.gms.internal.ads.zzdsi
            private final zzdsr zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzbcv
            public final void onAdClicked() {
                this.zza.zzh();
            }
        }, this.zzd, this.zze, new zzbot(this) { // from class: com.google.android.gms.internal.ads.zzdsj
            private final zzdsr zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzbot
            public final void zzbA(String str, String str2) {
                this.zza.zzg(str, str2);
            }
        }, new zzv(this) { // from class: com.google.android.gms.internal.ads.zzdsk
            private final zzdsr zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.ads.internal.overlay.zzv
            public final void zzg() {
                this.zza.zzf();
            }
        }, z, zzbpuVar, this.zzj, new zzdsq(this), this.zzk, this.zzn, this.zzo, this.zzp, this.zzq, null, this.zzb);
        zzcmlVar.setOnTouchListener(new View.OnTouchListener(this) { // from class: com.google.android.gms.internal.ads.zzdsl
            private final zzdsr zza;

            {
                this.zza = this;
            }

            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                this.zza.zze(view, motionEvent);
                return false;
            }
        });
        zzcmlVar.setOnClickListener(new View.OnClickListener(this) { // from class: com.google.android.gms.internal.ads.zzdsm
            private final zzdsr zza;

            {
                this.zza = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.zza.zzd(view);
            }
        });
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzbK)).booleanValue() && (zzb = this.zzl.zzb()) != null) {
            zzb.zzn((View) zzcmlVar);
        }
        this.zzh.zzi(zzcmlVar, this.zzg);
        this.zzh.zzi(new zzawd(zzcmlVar) { // from class: com.google.android.gms.internal.ads.zzdsn
            private final zzcml zza;

            {
                this.zza = zzcmlVar;
            }

            @Override // com.google.android.gms.internal.ads.zzawd
            public final void zzc(zzawc zzawcVar) {
                zzcnz zzR = this.zza.zzR();
                Rect rect = zzawcVar.zzd;
                zzR.zza(rect.left, rect.top, false);
            }
        }, this.zzg);
        this.zzh.zza((View) zzcmlVar);
        zzcmlVar.zzab("/trackActiveViewUnit", new zzbpr(this, zzcmlVar) { // from class: com.google.android.gms.internal.ads.zzdso
            private final zzdsr zza;
            private final zzcml zzb;

            {
                this.zza = this;
                this.zzb = zzcmlVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbpr
            public final void zza(Object obj, Map map) {
                this.zza.zzc(this.zzb, (zzcml) obj, map);
            }
        });
        this.zzi.zzk(zzcmlVar);
    }
}
