package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.internal.ads.aq;
import com.google.android.gms.internal.ads.bum;
import com.google.android.gms.internal.ads.csa;
import com.google.android.gms.internal.ads.cuy;
import com.google.android.gms.internal.ads.cwf;
import com.google.android.gms.internal.ads.cwt;
import com.google.android.gms.internal.ads.cwv;
import com.google.android.gms.internal.ads.cxx;
import com.google.android.gms.internal.ads.dfc;
import com.google.android.gms.internal.ads.ekb;
import com.google.android.gms.internal.ads.yq;
import com.google.android.gms.internal.ads.zd;
import com.google.android.gms.internal.ads.zzbar;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/zzf.class */
public final class zzf implements cxx, Runnable {
    private Context context;
    private int zzbpf;
    private final boolean zzbpg;
    private final Context zzbpi;
    private zzbar zzbpj;
    private final zzbar zzbpk;
    private final Executor zzvy;
    private final cuy zzxh;
    private final List<Object[]> zzbpc = new Vector();
    private final AtomicReference<cxx> zzbpd = new AtomicReference<>();
    private final AtomicReference<cxx> zzbpe = new AtomicReference<>();
    private CountDownLatch zzbpl = new CountDownLatch(1);
    private final boolean zzbph = ((Boolean) ekb.e().a(aq.br)).booleanValue();

    public zzf(Context context, zzbar zzbarVar) {
        this.context = context;
        this.zzbpi = context;
        this.zzbpj = zzbarVar;
        this.zzbpk = zzbarVar;
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        this.zzvy = newCachedThreadPool;
        cuy a2 = cuy.a(context, newCachedThreadPool);
        this.zzxh = a2;
        if (((Boolean) ekb.e().a(aq.bt)).booleanValue()) {
            this.zzbpf = bum.f25137b;
        } else {
            this.zzbpf = bum.f25136a;
        }
        cwf cwfVar = new cwf(this.context, a2);
        zzi zziVar = new zzi(this);
        this.zzbpg = new cwt(this.context, cwfVar.a(), zziVar, ((Boolean) ekb.e().a(aq.bs)).booleanValue()).b(cwv.f26513a);
        if (((Boolean) ekb.e().a(aq.bH)).booleanValue()) {
            zd.f28573a.execute(this);
            return;
        }
        ekb.a();
        if (yq.b()) {
            zd.f28573a.execute(this);
        } else {
            run();
        }
    }

    private final void zza(cxx cxxVar) {
        this.zzbpd.set(cxxVar);
    }

    private final cxx zzcb() {
        return zzkf() == bum.f25137b ? this.zzbpe.get() : this.zzbpd.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Context zze(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    private final boolean zzkd() {
        try {
            this.zzbpl.await();
            return true;
        } catch (InterruptedException e) {
            zzd.zzd("Interrupted during GADSignals creation.", e);
            return false;
        }
    }

    private final void zzke() {
        cxx zzcb = zzcb();
        if (!(this.zzbpc.isEmpty() || zzcb == null)) {
            for (Object[] objArr : this.zzbpc) {
                if (objArr.length == 1) {
                    zzcb.zza((MotionEvent) objArr[0]);
                } else if (objArr.length == 3) {
                    zzcb.zza(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
                }
            }
            this.zzbpc.clear();
        }
    }

    private final int zzkf() {
        return (!this.zzbph || this.zzbpg) ? this.zzbpf : bum.f25136a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            boolean z = this.zzbpj.zzekc;
            boolean z2 = false;
            if (!((Boolean) ekb.e().a(aq.aF)).booleanValue()) {
                z2 = false;
                if (z) {
                    z2 = true;
                }
            }
            if (zzkf() == bum.f25136a) {
                zza(dfc.b(this.zzbpj.zzbrz, zze(this.context), z2, this.zzbpf));
                if (this.zzbpf == bum.f25137b) {
                    this.zzvy.execute(new zzh(this, z2));
                }
            } else {
                long currentTimeMillis = System.currentTimeMillis();
                try {
                    this.zzbpe.set(csa.a(this.zzbpj.zzbrz, zze(this.context), z2));
                } catch (NullPointerException e) {
                    this.zzbpf = bum.f25136a;
                    zza(dfc.b(this.zzbpj.zzbrz, zze(this.context), z2, this.zzbpf));
                    this.zzxh.a(2031, System.currentTimeMillis() - currentTimeMillis, e);
                }
            }
        } finally {
            this.zzbpl.countDown();
            this.context = null;
            this.zzbpj = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public final String zza(Context context, View view, Activity activity) {
        cxx zzcb = zzcb();
        return zzcb != null ? zzcb.zza(context, view, activity) : "";
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public final String zza(Context context, String str, View view) {
        return zza(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public final String zza(Context context, String str, View view, Activity activity) {
        cxx zzcb;
        if (!zzkd() || (zzcb = zzcb()) == null) {
            return "";
        }
        zzke();
        return zzcb.zza(zze(context), str, view, activity);
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public final void zza(int i, int i2, int i3) {
        cxx zzcb = zzcb();
        if (zzcb != null) {
            zzke();
            zzcb.zza(i, i2, i3);
            return;
        }
        this.zzbpc.add(new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)});
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public final void zza(MotionEvent motionEvent) {
        cxx zzcb = zzcb();
        if (zzcb != null) {
            zzke();
            zzcb.zza(motionEvent);
            return;
        }
        this.zzbpc.add(new Object[]{motionEvent});
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public final String zzb(Context context) {
        cxx zzcb;
        if (!zzkd() || (zzcb = zzcb()) == null) {
            return "";
        }
        zzke();
        return zzcb.zzb(zze(context));
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public final void zzb(View view) {
        cxx zzcb = zzcb();
        if (zzcb != null) {
            zzcb.zzb(view);
        }
    }
}
