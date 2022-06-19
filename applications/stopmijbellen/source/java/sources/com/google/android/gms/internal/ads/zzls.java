package com.google.android.gms.internal.ads;

import android.os.Handler;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzls.class */
public final class zzls {
    private final Handler zza;
    private final zzlt zzb;

    public zzls(Handler handler, zzlt zzltVar) {
        this.zza = zzltVar == null ? null : handler;
        this.zzb = zzltVar;
    }

    public final void zza(final Exception exc) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzln
                @Override // java.lang.Runnable
                public final void run() {
                    zzls.this.zzh(exc);
                }
            });
        }
    }

    public final void zzb(final Exception exc) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzlo
                @Override // java.lang.Runnable
                public final void run() {
                    zzls.this.zzi(exc);
                }
            });
        }
    }

    public final void zzc(final String str, final long j, final long j2) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzlq
                @Override // java.lang.Runnable
                public final void run() {
                    zzls.this.zzj(str, j, j2);
                }
            });
        }
    }

    public final void zzd(final String str) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzlp
                @Override // java.lang.Runnable
                public final void run() {
                    zzls.this.zzk(str);
                }
            });
        }
    }

    public final void zze(final zzfy zzfyVar) {
        zzfyVar.zza();
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzll
                @Override // java.lang.Runnable
                public final void run() {
                    zzls.this.zzl(zzfyVar);
                }
            });
        }
    }

    public final void zzf(final zzfy zzfyVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzlm
                @Override // java.lang.Runnable
                public final void run() {
                    zzls.this.zzm(zzfyVar);
                }
            });
        }
    }

    public final void zzg(final zzab zzabVar, final zzfz zzfzVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzlk
                @Override // java.lang.Runnable
                public final void run() {
                    zzls.this.zzn(zzabVar, zzfzVar);
                }
            });
        }
    }

    public final /* synthetic */ void zzh(Exception exc) {
        zzlt zzltVar = this.zzb;
        int i = zzfn.zza;
        zzltVar.zzs(exc);
    }

    public final /* synthetic */ void zzi(Exception exc) {
        zzlt zzltVar = this.zzb;
        int i = zzfn.zza;
        zzltVar.zzB(exc);
    }

    public final /* synthetic */ void zzj(String str, long j, long j2) {
        zzlt zzltVar = this.zzb;
        int i = zzfn.zza;
        zzltVar.zzu(str, j, j2);
    }

    public final /* synthetic */ void zzk(String str) {
        zzlt zzltVar = this.zzb;
        int i = zzfn.zza;
        zzltVar.zzw(str);
    }

    public final /* synthetic */ void zzl(zzfy zzfyVar) {
        zzfyVar.zza();
        zzlt zzltVar = this.zzb;
        int i = zzfn.zza;
        zzltVar.zzx(zzfyVar);
    }

    public final /* synthetic */ void zzm(zzfy zzfyVar) {
        zzlt zzltVar = this.zzb;
        int i = zzfn.zza;
        zzltVar.zzy(zzfyVar);
    }

    public final /* synthetic */ void zzn(zzab zzabVar, zzfz zzfzVar) {
        int i = zzfn.zza;
        this.zzb.zzz(zzabVar, zzfzVar);
    }

    public final /* synthetic */ void zzo(long j) {
        zzlt zzltVar = this.zzb;
        int i = zzfn.zza;
        zzltVar.zzA(j);
    }

    public final /* synthetic */ void zzp(boolean z) {
        zzlt zzltVar = this.zzb;
        int i = zzfn.zza;
        zzltVar.zzt(z);
    }

    public final /* synthetic */ void zzq(int i, long j, long j2) {
        zzlt zzltVar = this.zzb;
        int i2 = zzfn.zza;
        zzltVar.zzC(i, j, j2);
    }

    public final void zzr(final long j) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzlj
                @Override // java.lang.Runnable
                public final void run() {
                    zzls.this.zzo(j);
                }
            });
        }
    }

    public final void zzs(final boolean z) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzlr
                @Override // java.lang.Runnable
                public final void run() {
                    zzls.this.zzp(z);
                }
            });
        }
    }

    public final void zzt(final int i, final long j, final long j2) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzli
                @Override // java.lang.Runnable
                public final void run() {
                    zzls.this.zzq(i, j, j2);
                }
            });
        }
    }
}
