package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzt;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzalm;
import com.google.android.gms.internal.ads.zzalp;
import com.google.android.gms.internal.ads.zzals;
import com.google.android.gms.internal.ads.zzbgo;
import com.google.android.gms.internal.ads.zzbgq;
import com.google.android.gms.internal.ads.zzblj;
import com.google.android.gms.internal.ads.zzcis;
import com.google.android.gms.internal.ads.zzciz;
import com.google.android.gms.internal.ads.zzcjf;
import com.google.android.gms.internal.ads.zzcjm;
import com.google.android.gms.internal.ads.zzfmh;
import com.google.android.gms.internal.ads.zzfnj;
import com.google.android.gms.internal.ads.zzfod;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzi.class */
public final class zzi implements Runnable, zzalp {
    @VisibleForTesting
    public boolean zza;
    private final Executor zzh;
    private final zzfmh zzi;
    private Context zzj;
    private final Context zzk;
    private zzcjf zzl;
    private final zzcjf zzm;
    private final boolean zzn;
    private int zzo;
    private final List<Object[]> zzc = new Vector();
    private final AtomicReference<zzalp> zzd = new AtomicReference<>();
    private final AtomicReference<zzalp> zze = new AtomicReference<>();
    public final CountDownLatch zzb = new CountDownLatch(1);
    private final boolean zzf = ((Boolean) zzbgq.zzc().zzb(zzblj.zzbA)).booleanValue();
    private final boolean zzg = ((Boolean) zzbgq.zzc().zzb(zzblj.zzbF)).booleanValue();

    public zzi(Context context, zzcjf zzcjfVar) {
        this.zzj = context;
        this.zzk = context;
        this.zzl = zzcjfVar;
        this.zzm = zzcjfVar;
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        this.zzh = newCachedThreadPool;
        boolean booleanValue = ((Boolean) zzbgq.zzc().zzb(zzblj.zzbE)).booleanValue();
        this.zzn = booleanValue;
        this.zzi = zzfmh.zza(context, newCachedThreadPool, booleanValue);
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzbD)).booleanValue()) {
            this.zzo = 2;
        } else {
            this.zzo = 1;
        }
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzce)).booleanValue()) {
            this.zza = zzc();
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzbZ)).booleanValue()) {
            zzcjm.zza.execute(this);
            return;
        }
        zzbgo.zzb();
        if (zzcis.zzp()) {
            zzcjm.zza.execute(this);
        } else {
            run();
        }
    }

    private final zzalp zzj() {
        return zzi() == 2 ? this.zze.get() : this.zzd.get();
    }

    private final void zzm() {
        zzalp zzj = zzj();
        if (this.zzc.isEmpty() || zzj == null) {
            return;
        }
        for (Object[] objArr : this.zzc) {
            int length = objArr.length;
            if (length == 1) {
                zzj.zzk((MotionEvent) objArr[0]);
            } else if (length == 3) {
                zzj.zzl(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
            }
        }
        this.zzc.clear();
    }

    private final void zzo(boolean z) {
        this.zzd.set(zzals.zzt(this.zzl.zza, zzp(this.zzj), z, this.zzo));
    }

    private static final Context zzp(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzce)).booleanValue()) {
                this.zza = zzc();
            }
            boolean z = this.zzl.zzd;
            boolean z2 = false;
            if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzaK)).booleanValue()) {
                z2 = false;
                if (z) {
                    z2 = true;
                }
            }
            if (zzi() == 1) {
                zzo(z2);
                if (this.zzo == 2) {
                    final boolean z3 = z2;
                    this.zzh.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.zzg
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzi.this.zzb(z3);
                        }
                    });
                }
            } else {
                long currentTimeMillis = System.currentTimeMillis();
                try {
                    zzalm zza = zzalm.zza(this.zzl.zza, zzp(this.zzj), z2, this.zzn);
                    this.zze.set(zza);
                    if (this.zzg && !zza.zzq()) {
                        this.zzo = 1;
                        zzo(z2);
                    }
                } catch (NullPointerException e) {
                    this.zzo = 1;
                    zzo(z2);
                    this.zzi.zzc(2031, System.currentTimeMillis() - currentTimeMillis, e);
                }
            }
        } finally {
            this.zzb.countDown();
            this.zzj = null;
            this.zzl = null;
        }
    }

    public final /* synthetic */ void zzb(boolean z) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            zzalm.zza(this.zzm.zza, zzp(this.zzk), z, this.zzn).zzo();
        } catch (NullPointerException e) {
            this.zzi.zzc(2027, System.currentTimeMillis() - currentTimeMillis, e);
        }
    }

    public final boolean zzc() {
        Context context = this.zzj;
        zzfmh zzfmhVar = this.zzi;
        zzh zzhVar = new zzh(this);
        return new zzfod(this.zzj, zzfnj.zzb(context, zzfmhVar), zzhVar, ((Boolean) zzbgq.zzc().zzb(zzblj.zzbB)).booleanValue()).zzd(1);
    }

    public final boolean zzd() {
        try {
            this.zzb.await();
            return true;
        } catch (InterruptedException e) {
            zzciz.zzk("Interrupted during GADSignals creation.", e);
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzalp
    public final String zze(Context context, String str, View view) {
        return zzf(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzalp
    public final String zzf(Context context, String str, View view, Activity activity) {
        if (zzd()) {
            zzalp zzj = zzj();
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzhg)).booleanValue()) {
                zzt.zzp();
                zzt.zzN(view, 4, null);
            }
            if (zzj == null) {
                return "";
            }
            zzm();
            return zzj.zzf(zzp(context), str, view, activity);
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzalp
    public final String zzg(Context context) {
        String str;
        zzalp zzj;
        if (!zzd() || (zzj = zzj()) == null) {
            str = "";
        } else {
            zzm();
            str = zzj.zzg(zzp(context));
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzalp
    public final String zzh(Context context, View view, Activity activity) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzhf)).booleanValue()) {
            zzalp zzj = zzj();
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzhg)).booleanValue()) {
                zzt.zzp();
                zzt.zzN(view, 2, null);
            }
            return zzj != null ? zzj.zzh(context, view, null) : "";
        } else if (!zzd()) {
            return "";
        } else {
            zzalp zzj2 = zzj();
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzhg)).booleanValue()) {
                zzt.zzp();
                zzt.zzN(view, 2, null);
            }
            return zzj2 != null ? zzj2.zzh(context, view, null) : "";
        }
    }

    public final int zzi() {
        if (!this.zzf || this.zza) {
            return this.zzo;
        }
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzalp
    public final void zzk(MotionEvent motionEvent) {
        zzalp zzj = zzj();
        if (zzj == null) {
            this.zzc.add(new Object[]{motionEvent});
            return;
        }
        zzm();
        zzj.zzk(motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.zzalp
    public final void zzl(int i, int i2, int i3) {
        zzalp zzj = zzj();
        if (zzj == null) {
            this.zzc.add(new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)});
            return;
        }
        zzm();
        zzj.zzl(i, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzalp
    public final void zzn(View view) {
        zzalp zzj = zzj();
        if (zzj != null) {
            zzj.zzn(view);
        }
    }
}
