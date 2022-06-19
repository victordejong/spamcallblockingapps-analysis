package com.google.android.gms.internal.ads;

import android.os.Handler;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdp.class */
public final class zzdp {
    private final Handler zza;
    private final zzdq zzb;

    public zzdp(Handler handler, zzdq zzdqVar) {
        this.zza = zzdqVar == null ? null : handler;
        this.zzb = zzdqVar;
    }

    public final void zza(zzaz zzazVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable(this, zzazVar) { // from class: com.google.android.gms.internal.ads.zzdf
                private final zzdp zza;
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
            handler.post(new Runnable(this, str, j, j2) { // from class: com.google.android.gms.internal.ads.zzdg
                private final zzdp zza;
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
            handler.post(new Runnable(this, zzafvVar, zzbaVar) { // from class: com.google.android.gms.internal.ads.zzdh
                private final zzdp zza;
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

    public final void zzd(long j) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable(this, j) { // from class: com.google.android.gms.internal.ads.zzdi
                private final zzdp zza;
                private final long zzb;

                {
                    this.zza = this;
                    this.zzb = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzq(this.zzb);
                }
            });
        }
    }

    public final void zze(int i, long j, long j2) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable(this, i, j, j2) { // from class: com.google.android.gms.internal.ads.zzdj
                private final zzdp zza;
                private final int zzb;
                private final long zzc;
                private final long zzd;

                {
                    this.zza = this;
                    this.zzb = i;
                    this.zzc = j;
                    this.zzd = j2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzp(this.zzb, this.zzc, this.zzd);
                }
            });
        }
    }

    public final void zzf(String str) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.zzdk
                private final zzdp zza;
                private final String zzb;

                {
                    this.zza = this;
                    this.zzb = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzo(this.zzb);
                }
            });
        }
    }

    public final void zzg(zzaz zzazVar) {
        zzazVar.zza();
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable(this, zzazVar) { // from class: com.google.android.gms.internal.ads.zzdl
                private final zzdp zza;
                private final zzaz zzb;

                {
                    this.zza = this;
                    this.zzb = zzazVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzn(this.zzb);
                }
            });
        }
    }

    public final void zzh(boolean z) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable(this, z) { // from class: com.google.android.gms.internal.ads.zzdm
                private final zzdp zza;
                private final boolean zzb;

                {
                    this.zza = this;
                    this.zzb = z;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzm(this.zzb);
                }
            });
        }
    }

    public final void zzi(Exception exc) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable(this, exc) { // from class: com.google.android.gms.internal.ads.zzdn
                private final zzdp zza;
                private final Exception zzb;

                {
                    this.zza = this;
                    this.zzb = exc;
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
            handler.post(new Runnable(this, exc) { // from class: com.google.android.gms.internal.ads.zzdo
                private final zzdp zza;
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
        zzdq zzdqVar = this.zzb;
        int i = zzamq.zza;
        zzdqVar.zzp(exc);
    }

    public final /* synthetic */ void zzl(Exception exc) {
        zzdq zzdqVar = this.zzb;
        int i = zzamq.zza;
        zzdqVar.zzo(exc);
    }

    public final /* synthetic */ void zzm(boolean z) {
        zzdq zzdqVar = this.zzb;
        int i = zzamq.zza;
        zzdqVar.zzn(z);
    }

    public final /* synthetic */ void zzn(zzaz zzazVar) {
        zzazVar.zza();
        zzdq zzdqVar = this.zzb;
        int i = zzamq.zza;
        zzdqVar.zzm(zzazVar);
    }

    public final /* synthetic */ void zzo(String str) {
        zzdq zzdqVar = this.zzb;
        int i = zzamq.zza;
        zzdqVar.zzl(str);
    }

    public final /* synthetic */ void zzp(int i, long j, long j2) {
        zzdq zzdqVar = this.zzb;
        int i2 = zzamq.zza;
        zzdqVar.zzk(i, j, j2);
    }

    public final /* synthetic */ void zzq(long j) {
        zzdq zzdqVar = this.zzb;
        int i = zzamq.zza;
        zzdqVar.zzj(j);
    }

    public final /* synthetic */ void zzr(zzafv zzafvVar, zzba zzbaVar) {
        int i = zzamq.zza;
        this.zzb.zzi(zzafvVar, zzbaVar);
    }

    public final /* synthetic */ void zzs(String str, long j, long j2) {
        zzdq zzdqVar = this.zzb;
        int i = zzamq.zza;
        zzdqVar.zzh(str, j, j2);
    }

    public final /* synthetic */ void zzt(zzaz zzazVar) {
        zzdq zzdqVar = this.zzb;
        int i = zzamq.zza;
        zzdqVar.zzg(zzazVar);
    }
}
