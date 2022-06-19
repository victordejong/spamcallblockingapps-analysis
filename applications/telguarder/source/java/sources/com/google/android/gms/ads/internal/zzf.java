package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzaza;
import com.google.android.gms.internal.ads.zzazn;
import com.google.android.gms.internal.ads.zzazp;
import com.google.android.gms.internal.ads.zzcv;
import com.google.android.gms.internal.ads.zzds;
import com.google.android.gms.internal.ads.zzdsy;
import com.google.android.gms.internal.ads.zzdue;
import com.google.android.gms.internal.ads.zzdux;
import com.google.android.gms.internal.ads.zzdva;
import com.google.android.gms.internal.ads.zzdy;
import com.google.android.gms.internal.ads.zzef;
import com.google.android.gms.internal.ads.zzwr;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzf.class */
public final class zzf implements zzdy, Runnable {
    private Context context;
    private int zzbov;
    private final boolean zzbow;
    private final Context zzboy;
    private zzazn zzboz;
    private final zzazn zzbpa;
    private final Executor zzvt;
    private final zzdsy zzxc;
    private final List<Object[]> zzbos = new Vector();
    private final AtomicReference<zzdy> zzbot = new AtomicReference<>();
    private final AtomicReference<zzdy> zzbou = new AtomicReference<>();
    private CountDownLatch zzbpb = new CountDownLatch(1);
    private final boolean zzbox = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcrs)).booleanValue();

    public zzf(Context context, zzazn zzaznVar) {
        this.context = context;
        this.zzboy = context;
        this.zzboz = zzaznVar;
        this.zzbpa = zzaznVar;
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        this.zzvt = newCachedThreadPool;
        zzdsy zza = zzdsy.zza(context, newCachedThreadPool);
        this.zzxc = zza;
        int intValue = ((Integer) zzwr.zzqr().zzd(zzabp.zzcru)).intValue();
        if (intValue == 1 || intValue == 2) {
            this.zzbov = zzcv.zznk;
        } else {
            this.zzbov = zzcv.zznj;
        }
        zzdue zzdueVar = new zzdue(this.context, zza);
        zzi zziVar = new zzi(this);
        this.zzbow = new zzdux(this.context, zzdueVar.zzayg(), zziVar, ((Boolean) zzwr.zzqr().zzd(zzabp.zzcrt)).booleanValue()).zzek(zzdva.zzhut);
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcsj)).booleanValue()) {
            zzazp.zzeic.execute(this);
            return;
        }
        zzwr.zzqn();
        if (zzaza.zzzx()) {
            zzazp.zzeic.execute(this);
        } else {
            run();
        }
    }

    private final void zza(zzdy zzdyVar) {
        this.zzbot.set(zzdyVar);
    }

    private final zzdy zzca() {
        return zzkb() == zzcv.zznk ? this.zzbou.get() : this.zzbot.get();
    }

    public static Context zze(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    private final boolean zzjz() {
        try {
            this.zzbpb.await();
            return true;
        } catch (InterruptedException e) {
            zzd.zzd("Interrupted during GADSignals creation.", e);
            return false;
        }
    }

    private final void zzka() {
        zzdy zzca = zzca();
        if (this.zzbos.isEmpty() || zzca == null) {
            return;
        }
        for (Object[] objArr : this.zzbos) {
            if (objArr.length == 1) {
                zzca.zza((MotionEvent) objArr[0]);
            } else if (objArr.length == 3) {
                zzca.zza(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
            }
        }
        this.zzbos.clear();
    }

    private final int zzkb() {
        return (!this.zzbox || this.zzbow) ? this.zzbov : zzcv.zznj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            boolean z = this.zzboz.zzeia;
            boolean z2 = false;
            if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcpp)).booleanValue()) {
                z2 = false;
                if (z) {
                    z2 = true;
                }
            }
            if (zzkb() == zzcv.zznj) {
                zza(zzef.zzb(this.zzboz.zzbrp, zze(this.context), z2, this.zzbov));
                if (this.zzbov == zzcv.zznk) {
                    this.zzvt.execute(new zzh(this, z2));
                }
            } else {
                long currentTimeMillis = System.currentTimeMillis();
                try {
                    this.zzbou.set(zzds.zza(this.zzboz.zzbrp, zze(this.context), z2));
                } catch (NullPointerException e) {
                    this.zzbov = zzcv.zznj;
                    zza(zzef.zzb(this.zzboz.zzbrp, zze(this.context), z2, this.zzbov));
                    this.zzxc.zza(2031, System.currentTimeMillis() - currentTimeMillis, e);
                }
            }
        } finally {
            this.zzbpb.countDown();
            this.context = null;
            this.zzboz = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final String zza(Context context, View view, Activity activity) {
        zzdy zzca = zzca();
        return zzca != null ? zzca.zza(context, view, activity) : "";
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final String zza(Context context, String str, View view) {
        return zza(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final String zza(Context context, String str, View view, Activity activity) {
        zzdy zzca;
        if (!zzjz() || (zzca = zzca()) == null) {
            return "";
        }
        zzka();
        return zzca.zza(zze(context), str, view, activity);
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final void zza(int i, int i2, int i3) {
        zzdy zzca = zzca();
        if (zzca == null) {
            this.zzbos.add(new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)});
            return;
        }
        zzka();
        zzca.zza(i, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final void zza(MotionEvent motionEvent) {
        zzdy zzca = zzca();
        if (zzca == null) {
            this.zzbos.add(new Object[]{motionEvent});
            return;
        }
        zzka();
        zzca.zza(motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final String zzb(Context context) {
        zzdy zzca;
        if (!zzjz() || (zzca = zzca()) == null) {
            return "";
        }
        zzka();
        return zzca.zzb(zze(context));
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final void zzb(View view) {
        zzdy zzca = zzca();
        if (zzca != null) {
            zzca.zzb(view);
        }
    }
}
