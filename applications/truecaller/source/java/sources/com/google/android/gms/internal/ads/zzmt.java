package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.SystemClock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzmt.class */
public final class zzmt {
    private final Handler zza;
    private final zzmu zzb;

    public zzmt(Handler handler, zzmu zzmuVar) {
        this.zza = zzmuVar == null ? null : handler;
        this.zzb = zzmuVar;
    }

    public final void zza(zzaz zzazVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable(this, zzazVar) { // from class: com.google.android.gms.internal.ads.zzmj
                private final zzmt zza;
                private final zzaz zzb;

                {
                    this.zza = this;
                    this.zzb = zzazVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzt(this.zzb);
                }
            });
        }
    }

    public final void zzb(String str, long j, long j2) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable(this, str, j, j2) { // from class: com.google.android.gms.internal.ads.zzmk
                private final zzmt zza;
                private final String zzb;
                private final long zzc;
                private final long zzd;

                {
                    this.zza = this;
                    this.zzb = str;
                    this.zzc = j;
                    this.zzd = j2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzs(this.zzb, this.zzc, this.zzd);
                }
            });
        }
    }

    public final void zzc(zzafv zzafvVar, zzba zzbaVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable(this, zzafvVar, zzbaVar) { // from class: com.google.android.gms.internal.ads.zzml
                private final zzmt zza;
                private final zzafv zzb;
                private final zzba zzc;

                {
                    this.zza = this;
                    this.zzb = zzafvVar;
                    this.zzc = zzbaVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzr(this.zzb, this.zzc);
                }
            });
        }
    }

    public final void zzd(int i, long j) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable(this, i, j) { // from class: com.google.android.gms.internal.ads.zzmm
                private final zzmt zza;
                private final int zzb;
                private final long zzc;

                {
                    this.zza = this;
                    this.zzb = i;
                    this.zzc = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzq(this.zzb, this.zzc);
                }
            });
        }
    }

    public final void zze(long j, int i) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable(this, j, i) { // from class: com.google.android.gms.internal.ads.zzmn
                private final zzmt zza;
                private final long zzb;
                private final int zzc;

                {
                    this.zza = this;
                    this.zzb = j;
                    this.zzc = i;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzp(this.zzb, this.zzc);
                }
            });
        }
    }

    public final void zzf(zzy zzyVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable(this, zzyVar) { // from class: com.google.android.gms.internal.ads.zzmo
                private final zzmt zza;
                private final zzy zzb;

                {
                    this.zza = this;
                    this.zzb = zzyVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzo(this.zzb);
                }
            });
        }
    }

    public final void zzg(Object obj) {
        if (this.zza != null) {
            this.zza.post(new Runnable(this, obj, SystemClock.elapsedRealtime()) { // from class: com.google.android.gms.internal.ads.zzmp
                private final zzmt zza;
                private final Object zzb;
                private final long zzc;

                {
                    this.zza = this;
                    this.zzb = obj;
                    this.zzc = elapsedRealtime;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzn(this.zzb, this.zzc);
                }
            });
        }
    }

    public final void zzh(String str) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.zzmq
                private final zzmt zza;
                private final String zzb;

                {
                    this.zza = this;
                    this.zzb = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzm(this.zzb);
                }
            });
        }
    }

    public final void zzi(zzaz zzazVar) {
        zzazVar.zza();
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable(this, zzazVar) { // from class: com.google.android.gms.internal.ads.zzmr
                private final zzmt zza;
                private final zzaz zzb;

                {
                    this.zza = this;
                    this.zzb = zzazVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzl(this.zzb);
                }
            });
        }
    }

    public final void zzj(Exception exc) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable(this, exc) { // from class: com.google.android.gms.internal.ads.zzms
                private final zzmt zza;
                private final Exception zzb;

                {
                    this.zza = this;
                    this.zzb = exc;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzk(this.zzb);
                }
            });
        }
    }

    public final /* synthetic */ void zzk(Exception exc) {
        zzmu zzmuVar = this.zzb;
        int i = zzamq.zza;
        zzmuVar.zzA(exc);
    }

    public final /* synthetic */ void zzl(zzaz zzazVar) {
        zzazVar.zza();
        zzmu zzmuVar = this.zzb;
        int i = zzamq.zza;
        zzmuVar.zzw(zzazVar);
    }

    public final /* synthetic */ void zzm(String str) {
        zzmu zzmuVar = this.zzb;
        int i = zzamq.zza;
        zzmuVar.zzv(str);
    }

    public final /* synthetic */ void zzn(Object obj, long j) {
        zzmu zzmuVar = this.zzb;
        int i = zzamq.zza;
        zzmuVar.zzy(obj, j);
    }

    public final /* synthetic */ void zzo(zzy zzyVar) {
        zzmu zzmuVar = this.zzb;
        int i = zzamq.zza;
        zzmuVar.zzx(zzyVar);
    }

    public final /* synthetic */ void zzp(long j, int i) {
        zzmu zzmuVar = this.zzb;
        int i2 = zzamq.zza;
        zzmuVar.zzz(j, i);
    }

    public final /* synthetic */ void zzq(int i, long j) {
        zzmu zzmuVar = this.zzb;
        int i2 = zzamq.zza;
        zzmuVar.zzu(i, j);
    }

    public final /* synthetic */ void zzr(zzafv zzafvVar, zzba zzbaVar) {
        int i = zzamq.zza;
        this.zzb.zzt(zzafvVar, zzbaVar);
    }

    public final /* synthetic */ void zzs(String str, long j, long j2) {
        zzmu zzmuVar = this.zzb;
        int i = zzamq.zza;
        zzmuVar.zzs(str, j, j2);
    }

    public final /* synthetic */ void zzt(zzaz zzazVar) {
        zzmu zzmuVar = this.zzb;
        int i = zzamq.zza;
        zzmuVar.zzr(zzazVar);
    }
}
