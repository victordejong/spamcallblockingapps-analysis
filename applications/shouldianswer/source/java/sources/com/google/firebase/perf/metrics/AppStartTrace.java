package com.google.firebase.perf.metrics;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.internal.firebase-perf.zzan;
import com.google.android.gms.internal.firebase-perf.zzaz;
import com.google.android.gms.internal.firebase-perf.zzcp;
import com.google.android.gms.internal.firebase_perf.zzao;
import com.google.android.gms.internal.firebase_perf.zzbj;
import com.google.firebase.perf.internal.SessionManager;
import com.google.firebase.perf.internal.zzf;
import com.google.firebase.perf.provider.FirebasePerfProvider;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/metrics/AppStartTrace.class */
public class AppStartTrace implements Application.ActivityLifecycleCallbacks {
    private static final long zzfa = TimeUnit.MINUTES.toMicros(1);
    private static volatile AppStartTrace zzfb;
    private final zzan zzay;
    private Context zzfc;
    private WeakReference<Activity> zzfd;
    private WeakReference<Activity> zzfe;
    private boolean mRegistered = false;
    private boolean zzff = false;
    private zzaz zzfg = null;
    private zzaz zzfh = null;
    private zzaz zzfi = null;
    private boolean zzfj = false;
    private zzf zzax = null;

    /* loaded from: classes-dex2jar.jar:com/google/firebase/perf/metrics/AppStartTrace$zza.class */
    public static final class zza implements Runnable {
        private final AppStartTrace zzez;

        public zza(AppStartTrace appStartTrace) {
            this.zzez = appStartTrace;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.zzez.zzfg == null) {
                this.zzez.zzfj = true;
            }
        }
    }

    private AppStartTrace(zzf zzfVar, zzan zzanVar) {
        this.zzay = zzanVar;
    }

    public static void setLauncherActivityOnCreateTime(String str) {
    }

    public static void setLauncherActivityOnResumeTime(String str) {
    }

    public static void setLauncherActivityOnStartTime(String str) {
    }

    private static AppStartTrace zza(zzf zzfVar, zzan zzanVar) {
        if (zzfb == null) {
            synchronized (AppStartTrace.class) {
                try {
                    if (zzfb == null) {
                        zzfb = new AppStartTrace(null, zzanVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzfb;
    }

    public static AppStartTrace zzbo() {
        return zzfb != null ? zzfb : zza((zzf) null, (zzan) new com.google.android.gms.internal.firebase_perf.zzan());
    }

    private final void zzbp() {
        synchronized (this) {
            if (!this.mRegistered) {
                return;
            }
            ((Application) this.zzfc).unregisterActivityLifecycleCallbacks(this);
            this.mRegistered = false;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        synchronized (this) {
            if (!this.zzfj && this.zzfg == null) {
                this.zzfd = new WeakReference<>(activity);
                this.zzfg = new com.google.android.gms.internal.firebase_perf.zzaz();
                if (FirebasePerfProvider.zzbw().zzk(this.zzfg) > zzfa) {
                    this.zzff = true;
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        synchronized (this) {
            if (!this.zzfj && this.zzfi == null && !this.zzff) {
                this.zzfe = new WeakReference<>(activity);
                this.zzfi = new com.google.android.gms.internal.firebase_perf.zzaz();
                zzaz zzbw = FirebasePerfProvider.zzbw();
                String name = activity.getClass().getName();
                long zzk = zzbw.zzk(this.zzfi);
                StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 47);
                sb.append("onResume(): ");
                sb.append(name);
                sb.append(": ");
                sb.append(zzk);
                sb.append(" microseconds");
                Log.d("FirebasePerformance", sb.toString());
                zzcp.zza zzaj = com.google.android.gms.internal.firebase_perf.zzcp.zzez().zzac(zzao.zzgo.toString()).zzai(zzbw.zzbx()).zzaj(zzbw.zzk(this.zzfi));
                ArrayList arrayList = new ArrayList(3);
                arrayList.add((com.google.android.gms.internal.firebase_perf.zzcp) com.google.android.gms.internal.firebase_perf.zzcp.zzez().zzac(zzao.zzgp.toString()).zzai(zzbw.zzbx()).zzaj(zzbw.zzk(this.zzfg)).zzgm());
                zzcp.zza zzez = com.google.android.gms.internal.firebase_perf.zzcp.zzez();
                zzez.zzac(zzao.zzgq.toString()).zzai(this.zzfg.zzbx()).zzaj(this.zzfg.zzk(this.zzfh));
                arrayList.add((com.google.android.gms.internal.firebase_perf.zzcp) zzez.zzgm());
                zzcp.zza zzez2 = com.google.android.gms.internal.firebase_perf.zzcp.zzez();
                zzez2.zzac(zzao.zzgr.toString()).zzai(this.zzfh.zzbx()).zzaj(this.zzfh.zzk(this.zzfi));
                arrayList.add((com.google.android.gms.internal.firebase_perf.zzcp) zzez2.zzgm());
                zzaj.zzd(arrayList).zzb(SessionManager.zzbl().zzbm().zzay());
                if (this.zzax == null) {
                    this.zzax = zzf.zzal();
                }
                if (this.zzax != null) {
                    this.zzax.zza((zzcp) ((com.google.android.gms.internal.firebase_perf.zzcp) zzaj.zzgm()), zzbj.zzil);
                }
                if (this.mRegistered) {
                    zzbp();
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        synchronized (this) {
            if (!this.zzfj && this.zzfh == null && !this.zzff) {
                this.zzfh = new com.google.android.gms.internal.firebase_perf.zzaz();
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        synchronized (this) {
        }
    }

    public final void zzc(Context context) {
        synchronized (this) {
            if (this.mRegistered) {
                return;
            }
            Context applicationContext = context.getApplicationContext();
            if (applicationContext instanceof Application) {
                ((Application) applicationContext).registerActivityLifecycleCallbacks(this);
                this.mRegistered = true;
                this.zzfc = applicationContext;
            }
        }
    }
}
