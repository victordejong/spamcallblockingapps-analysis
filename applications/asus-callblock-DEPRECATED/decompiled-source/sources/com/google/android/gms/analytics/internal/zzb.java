package com.google.android.gms.analytics.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.analytics.zzi;
import com.google.android.gms.common.internal.b;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzb.class */
public class zzb extends zzd {

    /* renamed from: a  reason: collision with root package name */
    private final e f3841a;

    public zzb(zzf zzfVar, zzg zzgVar) {
        super(zzfVar);
        b.a(zzgVar);
        this.f3841a = zzgVar.a(zzfVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        zzkN();
        this.f3841a.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        zzkN();
        this.f3841a.c();
    }

    public void setLocalDispatchPeriod(final int i) {
        zzma();
        zzb("setLocalDispatchPeriod (sec)", Integer.valueOf(i));
        zzlT().zzf(new Runnable() { // from class: com.google.android.gms.analytics.internal.zzb.1
            @Override // java.lang.Runnable
            public final void run() {
                zzb.this.f3841a.a(i * 1000);
            }
        });
    }

    public void start() {
        this.f3841a.a();
    }

    public void zzR(final boolean z) {
        zza("Network connectivity status changed", Boolean.valueOf(z));
        zzlT().zzf(new Runnable() { // from class: com.google.android.gms.analytics.internal.zzb.2
            @Override // java.lang.Runnable
            public final void run() {
                zzb.this.f3841a.h();
            }
        });
    }

    public long zza(zzh zzhVar) {
        zzma();
        b.a(zzhVar);
        zzkN();
        long b2 = this.f3841a.b(zzhVar);
        if (b2 == 0) {
            this.f3841a.a(zzhVar);
        }
        return b2;
    }

    public void zza(final zzab zzabVar) {
        b.a(zzabVar);
        zzma();
        zzb("Hit delivery requested", zzabVar);
        zzlT().zzf(new Runnable() { // from class: com.google.android.gms.analytics.internal.zzb.4
            @Override // java.lang.Runnable
            public final void run() {
                zzb.this.f3841a.a(zzabVar);
            }
        });
    }

    public void zza(final zzw zzwVar) {
        zzma();
        zzlT().zzf(new Runnable() { // from class: com.google.android.gms.analytics.internal.zzb.6
            @Override // java.lang.Runnable
            public final void run() {
                zzb.this.f3841a.a(zzwVar);
            }
        });
    }

    public void zza(final String str, final Runnable runnable) {
        b.a(str, (Object) "campaign param can't be empty");
        zzlT().zzf(new Runnable() { // from class: com.google.android.gms.analytics.internal.zzb.3
            @Override // java.lang.Runnable
            public final void run() {
                zzb.this.f3841a.a(str);
                if (runnable != null) {
                    runnable.run();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.analytics.internal.zzd
    public void zzkO() {
        this.f3841a.initialize();
    }

    public void zzlI() {
        zzma();
        zzlP();
        zzlT().zzf(new Runnable() { // from class: com.google.android.gms.analytics.internal.zzb.5
            @Override // java.lang.Runnable
            public final void run() {
                zzb.this.f3841a.f();
            }
        });
    }

    public void zzlJ() {
        zzma();
        Context context = getContext();
        if (!zzaj.zzU(context) || !zzak.zzV(context)) {
            zza((zzw) null);
            return;
        }
        Intent intent = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
        intent.setComponent(new ComponentName(context, "com.google.android.gms.analytics.AnalyticsService"));
        context.startService(intent);
    }

    public boolean zzlK() {
        boolean z = false;
        zzma();
        try {
            zzlT().zzc(new Callable<Void>() { // from class: com.google.android.gms.analytics.internal.zzb.7
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Void call() {
                    zzb.this.f3841a.g();
                    return null;
                }
            }).get(4L, TimeUnit.SECONDS);
            z = true;
        } catch (InterruptedException e) {
            zzd("syncDispatchLocalHits interrupted", e);
        } catch (ExecutionException e2) {
            zze("syncDispatchLocalHits failed", e2);
        } catch (TimeoutException e3) {
            zzd("syncDispatchLocalHits timed out", e3);
        }
        return z;
    }

    public void zzlL() {
        zzma();
        zzi.zzkN();
        this.f3841a.e();
    }

    public void zzlM() {
        zzbG("Radio powered up");
        zzlJ();
    }
}
