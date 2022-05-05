package com.google.android.gms.analytics.internal;

import android.content.Context;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.zzi;
import com.google.android.gms.common.a.d;
import com.google.android.gms.common.a.e;
import com.google.android.gms.common.internal.b;
import java.lang.Thread;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzf.class */
public class zzf {

    /* renamed from: a  reason: collision with root package name */
    private static zzf f3856a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f3857b;
    private final Context c;
    private final d d;
    private final zzr e;
    private final zzaf f;
    private final zzi g;
    private final zzb h;
    private final zzv i;
    private final zzap j;
    private final zzai k;
    private final GoogleAnalytics l;
    private final zzn m;
    private final zza n;
    private final zzk o;
    private final zzu p;

    protected zzf(zzg zzgVar) {
        Context applicationContext = zzgVar.getApplicationContext();
        b.a(applicationContext, "Application context can't be null");
        Context zzmc = zzgVar.zzmc();
        b.a(zzmc);
        this.f3857b = applicationContext;
        this.c = zzmc;
        this.d = zzgVar.zzh(this);
        this.e = zzgVar.zzg(this);
        zzaf zzf = zzgVar.zzf(this);
        zzf.initialize();
        this.f = zzf;
        if (zzlS().zzmW()) {
            zzaf zzlR = zzlR();
            String str = zze.VERSION;
            zzlR.zzbI(new StringBuilder(String.valueOf(str).length() + 33).append("Google Analytics ").append(str).append(" is starting up.").toString());
        } else {
            zzaf zzlR2 = zzlR();
            String str2 = zze.VERSION;
            zzlR2.zzbI(new StringBuilder(String.valueOf(str2).length() + 134).append("Google Analytics ").append(str2).append(" is starting up. To enable debug logging on a device run:\n  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4").toString());
        }
        zzai zzq = zzgVar.zzq(this);
        zzq.initialize();
        this.k = zzq;
        zzap zze = zzgVar.zze(this);
        zze.initialize();
        this.j = zze;
        zzb zzl = zzgVar.zzl(this);
        zzn zzd = zzgVar.zzd(this);
        zza zzc = zzgVar.zzc(this);
        zzk zzb = zzgVar.zzb(this);
        zzu zza = zzgVar.zza(this);
        zzi zzY = zzgVar.zzY(applicationContext);
        zzY.zza(zzmb());
        this.g = zzY;
        GoogleAnalytics zzi = zzgVar.zzi(this);
        zzd.initialize();
        this.m = zzd;
        zzc.initialize();
        this.n = zzc;
        zzb.initialize();
        this.o = zzb;
        zza.initialize();
        this.p = zza;
        zzv zzp = zzgVar.zzp(this);
        zzp.initialize();
        this.i = zzp;
        zzl.initialize();
        this.h = zzl;
        if (zzlS().zzmW()) {
            zzlR().zzb("Device AnalyticsService version", zze.VERSION);
        }
        zzi.initialize();
        this.l = zzi;
        zzl.start();
    }

    private static void a(zzd zzdVar) {
        b.a(zzdVar, "Analytics service not created/initialized");
        b.b(zzdVar.isInitialized(), "Analytics service not initialized");
    }

    public static zzf zzX(Context context) {
        b.a(context);
        if (f3856a == null) {
            synchronized (zzf.class) {
                try {
                    if (f3856a == null) {
                        d c = e.c();
                        long b2 = c.b();
                        zzf zzfVar = new zzf(new zzg(context));
                        f3856a = zzfVar;
                        GoogleAnalytics.zzkt();
                        long b3 = c.b() - b2;
                        long longValue = zzy.zzYt.get().longValue();
                        if (b3 > longValue) {
                            zzfVar.zzlR().zzc("Slow initialization (ms)", Long.valueOf(b3), Long.valueOf(longValue));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f3856a;
    }

    public Context getContext() {
        return this.f3857b;
    }

    public void zzkN() {
        zzi.zzkN();
    }

    public zzb zzkw() {
        a(this.h);
        return this.h;
    }

    public zzap zzkx() {
        a(this.j);
        return this.j;
    }

    public d zzlQ() {
        return this.d;
    }

    public zzaf zzlR() {
        a(this.f);
        return this.f;
    }

    public zzr zzlS() {
        return this.e;
    }

    public zzi zzlT() {
        b.a(this.g);
        return this.g;
    }

    public zzv zzlU() {
        a(this.i);
        return this.i;
    }

    public zzai zzlV() {
        a(this.k);
        return this.k;
    }

    public zzk zzlY() {
        a(this.o);
        return this.o;
    }

    public zzu zzlZ() {
        return this.p;
    }

    protected Thread.UncaughtExceptionHandler zzmb() {
        return new Thread.UncaughtExceptionHandler() { // from class: com.google.android.gms.analytics.internal.zzf.1
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public final void uncaughtException(Thread thread, Throwable th) {
                zzaf zzmd = zzf.this.zzmd();
                if (zzmd != null) {
                    zzmd.zze("Job execution failed", th);
                }
            }
        };
    }

    public Context zzmc() {
        return this.c;
    }

    public zzaf zzmd() {
        return this.f;
    }

    public GoogleAnalytics zzme() {
        b.a(this.l);
        b.b(this.l.isInitialized(), "Analytics instance not initialized");
        return this.l;
    }

    public zzai zzmf() {
        return (this.k == null || !this.k.isInitialized()) ? null : this.k;
    }

    public zza zzmg() {
        a(this.n);
        return this.n;
    }

    public zzn zzmh() {
        a(this.m);
        return this.m;
    }
}
