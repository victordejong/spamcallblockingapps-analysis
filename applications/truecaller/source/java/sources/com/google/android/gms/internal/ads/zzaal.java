package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.mopub.mobileads.AdData;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaal.class */
public final class zzaal implements zzaao {
    private static zzaal zzb;
    private final Context zzc;
    private final zzfjx zzd;
    private final zzfke zze;
    private final zzfkg zzf;
    private final zzabl zzg;
    private final zzfii zzh;
    private final Executor zzi;
    private final zzfkd zzj;
    private volatile boolean zzm;
    private final int zzo;
    public volatile long zza = 0;
    private final Object zzl = new Object();
    private volatile boolean zzn = false;
    private final CountDownLatch zzk = new CountDownLatch(1);

    public zzaal(Context context, zzfii zzfiiVar, zzfjx zzfjxVar, zzfke zzfkeVar, zzfkg zzfkgVar, zzabl zzablVar, Executor executor, zzfie zzfieVar, int i) {
        this.zzc = context;
        this.zzh = zzfiiVar;
        this.zzd = zzfjxVar;
        this.zze = zzfkeVar;
        this.zzf = zzfkgVar;
        this.zzg = zzablVar;
        this.zzi = executor;
        this.zzo = i;
        this.zzj = new zzaaj(this, zzfieVar);
    }

    @Deprecated
    public static zzaal zze(String str, Context context, Executor executor, boolean z, boolean z2) {
        zzaal zzaalVar;
        synchronized (zzaal.class) {
            try {
                if (zzb == null) {
                    zzfij zzd = zzfik.zzd();
                    zzd.zza(str);
                    zzd.zzb(z);
                    zzfik zzd2 = zzd.zzd();
                    zzfii zza = zzfii.zza(context, executor, z2);
                    zzaav zzb2 = ((Boolean) zzbet.zzc().zzc(zzbjl.zzbW)).booleanValue() ? zzaav.zzb(context) : null;
                    zzfjb zza2 = zzfjb.zza(context, executor, zza, zzd2);
                    zzabk zzabkVar = new zzabk(context);
                    zzabl zzablVar = new zzabl(zzd2, zza2, new zzaby(context, zzabkVar), zzabkVar, zzb2);
                    int zzb3 = zzfjk.zzb(context, zza);
                    zzfie zzfieVar = new zzfie();
                    zzaal zzaalVar2 = new zzaal(context, zza, new zzfjx(context, zzb3), new zzfke(context, zzb3, new zzaai(zza), ((Boolean) zzbet.zzc().zzc(zzbjl.zzbv)).booleanValue()), new zzfkg(context, zzablVar, zza, zzfieVar), zzablVar, executor, zzfieVar, zzb3);
                    zzb = zzaalVar2;
                    zzaalVar2.zzh();
                    zzb.zzq();
                }
                zzaalVar = zzb;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzaalVar;
    }

    public static zzaal zzf(String str, Context context, boolean z, boolean z2) {
        zzaal zze;
        synchronized (zzaal.class) {
            try {
                zze = zze(str, context, Executors.newCachedThreadPool(), z, z2);
            } catch (Throwable th) {
                throw th;
            }
        }
        return zze;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00bf, code lost:
        if (r0.zza().zzc().equals(r0.zzc()) != false) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void zzi(com.google.android.gms.internal.ads.zzaal r8) {
        /*
            Method dump skipped, instructions count: 477
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaal.zzi(com.google.android.gms.internal.ads.zzaal):void");
    }

    private final zzfjw zzr(int i) {
        if (!zzfjk.zza(this.zzo)) {
            return null;
        }
        return ((Boolean) zzbet.zzc().zzc(zzbjl.zzbt)).booleanValue() ? this.zze.zzc(1) : this.zzd.zzc(1);
    }

    public final boolean zzg() {
        boolean z;
        synchronized (this) {
            z = this.zzn;
        }
        return z;
    }

    public final void zzh() {
        synchronized (this) {
            long currentTimeMillis = System.currentTimeMillis();
            zzfjw zzr = zzr(1);
            if (zzr == null) {
                this.zzh.zzb(4013, System.currentTimeMillis() - currentTimeMillis);
            } else if (!this.zzf.zza(zzr)) {
            } else {
                this.zzn = true;
                this.zzk.countDown();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaao
    public final void zzj(MotionEvent motionEvent) {
        zzfil zzb2 = this.zzf.zzb();
        if (zzb2 != null) {
            try {
                zzb2.zzd(null, motionEvent);
            } catch (zzfkf e) {
                this.zzh.zzc(e.zza(), -1L, e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaao
    public final void zzk(int i, int i2, int i3) {
    }

    @Override // com.google.android.gms.internal.ads.zzaao
    public final String zzl(Context context, String str, View view, Activity activity) {
        zzq();
        zzfil zzb2 = this.zzf.zzb();
        if (zzb2 != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String zzc = zzb2.zzc(context, null, str, view, activity);
            this.zzh.zzd(AdData.DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS, System.currentTimeMillis() - currentTimeMillis, zzc, null);
            return zzc;
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzaao
    public final String zzm(Context context, String str, View view) {
        return zzl(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzaao
    public final void zzn(View view) {
        this.zzg.zza(view);
    }

    @Override // com.google.android.gms.internal.ads.zzaao
    public final String zzo(Context context, View view, Activity activity) {
        zzq();
        zzfil zzb2 = this.zzf.zzb();
        if (zzb2 != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String zzb3 = zzb2.zzb(context, null, view, null);
            this.zzh.zzd(5002, System.currentTimeMillis() - currentTimeMillis, zzb3, null);
            return zzb3;
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzaao
    public final String zzp(Context context) {
        zzq();
        zzfil zzb2 = this.zzf.zzb();
        if (zzb2 != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String zza = zzb2.zza(context, null);
            this.zzh.zzd(5001, System.currentTimeMillis() - currentTimeMillis, zza, null);
            return zza;
        }
        return "";
    }

    public final void zzq() {
        if (!this.zzm) {
            synchronized (this.zzl) {
                if (!this.zzm) {
                    if ((System.currentTimeMillis() / 1000) - this.zza < 3600) {
                        return;
                    }
                    zzfjw zzc = this.zzf.zzc();
                    if ((zzc == null || zzc.zze(3600L)) && zzfjk.zza(this.zzo)) {
                        this.zzi.execute(new zzaak(this));
                    }
                }
            }
        }
    }
}
