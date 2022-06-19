package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.SystemClock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvo.class */
public final class zzvo {
    private final Handler zza;
    private final zzvp zzb;

    public zzvo(Handler handler, zzvp zzvpVar) {
        this.zza = zzvpVar == null ? null : handler;
        this.zzb = zzvpVar;
    }

    public final void zza(final String str, final long j, final long j2) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzvn
                @Override // java.lang.Runnable
                public final void run() {
                    zzvo.this.zzg(str, j, j2);
                }
            });
        }
    }

    public final void zzb(final String str) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzvm
                @Override // java.lang.Runnable
                public final void run() {
                    zzvo.this.zzh(str);
                }
            });
        }
    }

    public final void zzc(final zzfy zzfyVar) {
        zzfyVar.zza();
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzvi
                @Override // java.lang.Runnable
                public final void run() {
                    zzvo.this.zzi(zzfyVar);
                }
            });
        }
    }

    public final void zzd(final int i, final long j) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzve
                @Override // java.lang.Runnable
                public final void run() {
                    zzvo.this.zzj(i, j);
                }
            });
        }
    }

    public final void zze(final zzfy zzfyVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzvj
                @Override // java.lang.Runnable
                public final void run() {
                    zzvo.this.zzk(zzfyVar);
                }
            });
        }
    }

    public final void zzf(final zzab zzabVar, final zzfz zzfzVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzvg
                @Override // java.lang.Runnable
                public final void run() {
                    zzvo.this.zzl(zzabVar, zzfzVar);
                }
            });
        }
    }

    public final /* synthetic */ void zzg(String str, long j, long j2) {
        zzvp zzvpVar = this.zzb;
        int i = zzfn.zza;
        zzvpVar.zzG(str, j, j2);
    }

    public final /* synthetic */ void zzh(String str) {
        zzvp zzvpVar = this.zzb;
        int i = zzfn.zza;
        zzvpVar.zzH(str);
    }

    public final /* synthetic */ void zzi(zzfy zzfyVar) {
        zzfyVar.zza();
        zzvp zzvpVar = this.zzb;
        int i = zzfn.zza;
        zzvpVar.zzI(zzfyVar);
    }

    public final /* synthetic */ void zzj(int i, long j) {
        zzvp zzvpVar = this.zzb;
        int i2 = zzfn.zza;
        zzvpVar.zzD(i, j);
    }

    public final /* synthetic */ void zzk(zzfy zzfyVar) {
        zzvp zzvpVar = this.zzb;
        int i = zzfn.zza;
        zzvpVar.zzJ(zzfyVar);
    }

    public final /* synthetic */ void zzl(zzab zzabVar, zzfz zzfzVar) {
        int i = zzfn.zza;
        this.zzb.zzL(zzabVar, zzfzVar);
    }

    public final /* synthetic */ void zzm(Object obj, long j) {
        zzvp zzvpVar = this.zzb;
        int i = zzfn.zza;
        zzvpVar.zzE(obj, j);
    }

    public final /* synthetic */ void zzn(long j, int i) {
        zzvp zzvpVar = this.zzb;
        int i2 = zzfn.zza;
        zzvpVar.zzK(j, i);
    }

    public final /* synthetic */ void zzo(Exception exc) {
        zzvp zzvpVar = this.zzb;
        int i = zzfn.zza;
        zzvpVar.zzF(exc);
    }

    public final /* synthetic */ void zzp(zzct zzctVar) {
        zzvp zzvpVar = this.zzb;
        int i = zzfn.zza;
        zzvpVar.zzv(zzctVar);
    }

    public final void zzq(final Object obj) {
        if (this.zza != null) {
            final long elapsedRealtime = SystemClock.elapsedRealtime();
            this.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzvl
                @Override // java.lang.Runnable
                public final void run() {
                    zzvo.this.zzm(obj, elapsedRealtime);
                }
            });
        }
    }

    public final void zzr(final long j, final int i) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzvf
                @Override // java.lang.Runnable
                public final void run() {
                    zzvo.this.zzn(j, i);
                }
            });
        }
    }

    public final void zzs(final Exception exc) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzvk
                @Override // java.lang.Runnable
                public final void run() {
                    zzvo.this.zzo(exc);
                }
            });
        }
    }

    public final void zzt(final zzct zzctVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzvh
                @Override // java.lang.Runnable
                public final void run() {
                    zzvo.this.zzp(zzctVar);
                }
            });
        }
    }
}
