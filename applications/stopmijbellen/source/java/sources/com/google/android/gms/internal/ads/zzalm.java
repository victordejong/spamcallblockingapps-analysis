package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzalm.class */
public final class zzalm implements zzalp {
    private static zzalm zzb;
    private final Context zzc;
    private final zzfnw zzd;
    private final zzfod zze;
    private final zzfof zzf;
    private final zzamm zzg;
    private final zzfmh zzh;
    private final Executor zzi;
    private final zzfoc zzj;
    private volatile boolean zzm;
    private final int zzo;
    public volatile long zza = 0;
    private final Object zzl = new Object();
    private volatile boolean zzn = false;
    private final CountDownLatch zzk = new CountDownLatch(1);

    public zzalm(Context context, zzfmh zzfmhVar, zzfnw zzfnwVar, zzfod zzfodVar, zzfof zzfofVar, zzamm zzammVar, Executor executor, zzfmc zzfmcVar, int i) {
        this.zzc = context;
        this.zzh = zzfmhVar;
        this.zzd = zzfnwVar;
        this.zze = zzfodVar;
        this.zzf = zzfofVar;
        this.zzg = zzammVar;
        this.zzi = executor;
        this.zzo = i;
        this.zzj = new zzalk(this, zzfmcVar);
    }

    public static zzalm zza(String str, Context context, boolean z, boolean z2) {
        zzalm zzb2;
        synchronized (zzalm.class) {
            try {
                zzb2 = zzb(str, context, Executors.newCachedThreadPool(), z, z2);
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzb2;
    }

    @Deprecated
    public static zzalm zzb(String str, Context context, Executor executor, boolean z, boolean z2) {
        zzalm zzalmVar;
        synchronized (zzalm.class) {
            try {
                if (zzb == null) {
                    zzfmi zza = zzfmj.zza();
                    zza.zza(str);
                    zza.zzc(z);
                    zzfmj zzd = zza.zzd();
                    zzfmh zza2 = zzfmh.zza(context, executor, z2);
                    zzalw zzc = ((Boolean) zzbgq.zzc().zzb(zzblj.zzcc)).booleanValue() ? zzalw.zzc(context) : null;
                    zzfna zze = zzfna.zze(context, executor, zza2, zzd);
                    zzaml zzamlVar = new zzaml(context);
                    zzamm zzammVar = new zzamm(zzd, zze, new zzamz(context, zzamlVar), zzamlVar, zzc);
                    int zzb2 = zzfnj.zzb(context, zza2);
                    zzfmc zzfmcVar = new zzfmc();
                    zzalm zzalmVar2 = new zzalm(context, zza2, new zzfnw(context, zzb2), new zzfod(context, zzb2, new zzalj(zza2), ((Boolean) zzbgq.zzc().zzb(zzblj.zzbB)).booleanValue()), new zzfof(context, zzammVar, zza2, zzfmcVar), zzammVar, executor, zzfmcVar, zzb2);
                    zzb = zzalmVar2;
                    zzalmVar2.zzm();
                    zzb.zzo();
                }
                zzalmVar = zzb;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzalmVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00c7, code lost:
        if (r0.zzd().zzj().equals(r0.zzj()) != false) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* bridge */ /* synthetic */ void zzj(com.google.android.gms.internal.ads.zzalm r8) {
        /*
            Method dump skipped, instructions count: 485
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzalm.zzj(com.google.android.gms.internal.ads.zzalm):void");
    }

    private final zzfnv zzr(int i) {
        if (!zzfnj.zza(this.zzo)) {
            return null;
        }
        return ((Boolean) zzbgq.zzc().zzb(zzblj.zzbz)).booleanValue() ? this.zze.zzc(1) : this.zzd.zzd(1);
    }

    @Override // com.google.android.gms.internal.ads.zzalp
    public final String zze(Context context, String str, View view) {
        return zzf(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzalp
    public final String zzf(Context context, String str, View view, Activity activity) {
        zzo();
        zzfmk zza = this.zzf.zza();
        if (zza != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String zza2 = zza.zza(context, null, str, view, activity);
            this.zzh.zzf(5000, System.currentTimeMillis() - currentTimeMillis, zza2, null);
            return zza2;
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzalp
    public final String zzg(Context context) {
        zzo();
        zzfmk zza = this.zzf.zza();
        if (zza != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String zzc = zza.zzc(context, null);
            this.zzh.zzf(5001, System.currentTimeMillis() - currentTimeMillis, zzc, null);
            return zzc;
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzalp
    public final String zzh(Context context, View view, Activity activity) {
        zzo();
        zzfmk zza = this.zzf.zza();
        if (zza != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String zzb2 = zza.zzb(context, null, view, null);
            this.zzh.zzf(5002, System.currentTimeMillis() - currentTimeMillis, zzb2, null);
            return zzb2;
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzalp
    public final void zzk(MotionEvent motionEvent) {
        zzfmk zza = this.zzf.zza();
        if (zza != null) {
            try {
                zza.zzd(null, motionEvent);
            } catch (zzfoe e) {
                this.zzh.zzc(e.zza(), -1L, e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzalp
    public final void zzl(int i, int i2, int i3) {
    }

    public final void zzm() {
        synchronized (this) {
            long currentTimeMillis = System.currentTimeMillis();
            zzfnv zzr = zzr(1);
            if (zzr == null) {
                this.zzh.zzd(4013, System.currentTimeMillis() - currentTimeMillis);
            } else if (!this.zzf.zzc(zzr)) {
            } else {
                this.zzn = true;
                this.zzk.countDown();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzalp
    public final void zzn(View view) {
        this.zzg.zzd(view);
    }

    public final void zzo() {
        if (!this.zzm) {
            synchronized (this.zzl) {
                if (!this.zzm) {
                    if ((System.currentTimeMillis() / 1000) - this.zza < 3600) {
                        return;
                    }
                    zzfnv zzb2 = this.zzf.zzb();
                    if ((zzb2 == null || zzb2.zzd(3600L)) && zzfnj.zza(this.zzo)) {
                        this.zzi.execute(new zzall(this));
                    }
                }
            }
        }
    }

    public final boolean zzq() {
        boolean z;
        synchronized (this) {
            z = this.zzn;
        }
        return z;
    }
}
