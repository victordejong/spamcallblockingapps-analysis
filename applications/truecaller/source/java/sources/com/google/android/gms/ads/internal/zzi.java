package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.internal.ads.zzaal;
import com.google.android.gms.internal.ads.zzaao;
import com.google.android.gms.internal.ads.zzaar;
import com.google.android.gms.internal.ads.zzber;
import com.google.android.gms.internal.ads.zzbet;
import com.google.android.gms.internal.ads.zzbjl;
import com.google.android.gms.internal.ads.zzcgm;
import com.google.android.gms.internal.ads.zzcgt;
import com.google.android.gms.internal.ads.zzcgz;
import com.google.android.gms.internal.ads.zzchg;
import com.google.android.gms.internal.ads.zzfii;
import com.google.android.gms.internal.ads.zzfjk;
import com.google.android.gms.internal.ads.zzfke;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/zzi.class */
public final class zzi implements Runnable, zzaao {
    private final boolean zze;
    private final Executor zzh;
    private final zzfii zzi;
    private Context zzj;
    private final Context zzk;
    private zzcgz zzl;
    private final zzcgz zzm;
    private final boolean zzn;
    private int zzo;
    private final List<Object[]> zzb = new Vector();
    private final AtomicReference<zzaao> zzc = new AtomicReference<>();
    private final AtomicReference<zzaao> zzd = new AtomicReference<>();
    public final CountDownLatch zza = new CountDownLatch(1);
    private final boolean zzf = ((Boolean) zzbet.zzc().zzc(zzbjl.zzbu)).booleanValue();
    private final boolean zzg = ((Boolean) zzbet.zzc().zzc(zzbjl.zzbz)).booleanValue();

    public zzi(Context context, zzcgz zzcgzVar) {
        this.zzj = context;
        this.zzk = context;
        this.zzl = zzcgzVar;
        this.zzm = zzcgzVar;
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        this.zzh = newCachedThreadPool;
        boolean booleanValue = ((Boolean) zzbet.zzc().zzc(zzbjl.zzby)).booleanValue();
        this.zzn = booleanValue;
        zzfii zza = zzfii.zza(context, newCachedThreadPool, booleanValue);
        this.zzi = zza;
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzbx)).booleanValue()) {
            this.zzo = 2;
        } else {
            this.zzo = 1;
        }
        Context context2 = this.zzj;
        zzh zzhVar = new zzh(this);
        this.zze = new zzfke(this.zzj, zzfjk.zzb(context2, zza), zzhVar, ((Boolean) zzbet.zzc().zzc(zzbjl.zzbv)).booleanValue()).zzd(1);
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzbT)).booleanValue()) {
            zzchg.zza.execute(this);
            return;
        }
        zzber.zza();
        if (zzcgm.zzp()) {
            zzchg.zza.execute(this);
        } else {
            run();
        }
    }

    private final void zze() {
        zzaao zzg = zzg();
        if (this.zzb.isEmpty() || zzg == null) {
            return;
        }
        for (Object[] objArr : this.zzb) {
            int length = objArr.length;
            if (length == 1) {
                zzg.zzj((MotionEvent) objArr[0]);
            } else if (length == 3) {
                zzg.zzk(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
            }
        }
        this.zzb.clear();
    }

    private final void zzf(boolean z) {
        this.zzc.set(zzaar.zzt(this.zzl.zza, zzh(this.zzj), z, this.zzo));
    }

    private final zzaao zzg() {
        return zzd() == 2 ? this.zzd.get() : this.zzc.get();
    }

    private static final Context zzh(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            boolean z = this.zzl.zzd;
            boolean z2 = false;
            if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzaH)).booleanValue()) {
                z2 = false;
                if (z) {
                    z2 = true;
                }
            }
            if (zzd() == 1) {
                zzf(z2);
                if (this.zzo == 2) {
                    this.zzh.execute(new Runnable(this, z2) { // from class: com.google.android.gms.ads.internal.zzg
                        private final zzi zza;
                        private final boolean zzb;

                        {
                            this.zza = this;
                            this.zzb = z2;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zza.zzc(this.zzb);
                        }
                    });
                }
            } else {
                long currentTimeMillis = System.currentTimeMillis();
                try {
                    zzaal zzf = zzaal.zzf(this.zzl.zza, zzh(this.zzj), z2, this.zzn);
                    this.zzd.set(zzf);
                    if (this.zzg && !zzf.zzg()) {
                        this.zzo = 1;
                        zzf(z2);
                    }
                } catch (NullPointerException e) {
                    this.zzo = 1;
                    zzf(z2);
                    this.zzi.zzc(2031, System.currentTimeMillis() - currentTimeMillis, e);
                }
            }
        } finally {
            this.zza.countDown();
            this.zzj = null;
            this.zzl = null;
        }
    }

    public final boolean zzb() {
        try {
            this.zza.await();
            return true;
        } catch (InterruptedException e) {
            zzcgt.zzj("Interrupted during GADSignals creation.", e);
            return false;
        }
    }

    public final /* synthetic */ void zzc(boolean z) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            zzaal.zzf(this.zzm.zza, zzh(this.zzk), z, this.zzn).zzq();
        } catch (NullPointerException e) {
            this.zzi.zzc(2027, System.currentTimeMillis() - currentTimeMillis, e);
        }
    }

    public final int zzd() {
        if (!this.zzf || this.zze) {
            return this.zzo;
        }
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzaao
    public final void zzj(MotionEvent motionEvent) {
        zzaao zzg = zzg();
        if (zzg == null) {
            this.zzb.add(new Object[]{motionEvent});
            return;
        }
        zze();
        zzg.zzj(motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.zzaao
    public final void zzk(int i, int i2, int i3) {
        zzaao zzg = zzg();
        if (zzg == null) {
            this.zzb.add(new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)});
            return;
        }
        zze();
        zzg.zzk(i, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzaao
    public final String zzl(Context context, String str, View view, Activity activity) {
        if (zzb()) {
            zzaao zzg = zzg();
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgV)).booleanValue()) {
                zzt.zzc();
                zzs.zzM(view, 4, null);
            }
            if (zzg == null) {
                return "";
            }
            zze();
            return zzg.zzl(zzh(context), str, view, activity);
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzaao
    public final String zzm(Context context, String str, View view) {
        return zzl(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzaao
    public final void zzn(View view) {
        zzaao zzg = zzg();
        if (zzg != null) {
            zzg.zzn(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaao
    public final String zzo(Context context, View view, Activity activity) {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzgU)).booleanValue()) {
            zzaao zzg = zzg();
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgV)).booleanValue()) {
                zzt.zzc();
                zzs.zzM(view, 2, null);
            }
            return zzg != null ? zzg.zzo(context, view, null) : "";
        } else if (!zzb()) {
            return "";
        } else {
            zzaao zzg2 = zzg();
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgV)).booleanValue()) {
                zzt.zzc();
                zzs.zzM(view, 2, null);
            }
            return zzg2 != null ? zzg2.zzo(context, view, null) : "";
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaao
    public final String zzp(Context context) {
        String str;
        zzaao zzg;
        if (!zzb() || (zzg = zzg()) == null) {
            str = "";
        } else {
            zze();
            str = zzg.zzp(zzh(context));
        }
        return str;
    }
}
