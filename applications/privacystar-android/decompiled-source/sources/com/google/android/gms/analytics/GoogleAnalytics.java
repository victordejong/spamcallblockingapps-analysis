package com.google.android.gms.analytics;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.RequiresPermission;
import android.util.Log;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzaw;
import com.google.android.gms.internal.measurement.zzcf;
import com.google.android.gms.internal.measurement.zzco;
import com.google.android.gms.internal.measurement.zzdd;
import com.google.android.gms.internal.measurement.zzdf;
import com.google.android.gms.internal.measurement.zzdh;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/GoogleAnalytics.class */
public final class GoogleAnalytics extends com.google.android.gms.analytics.zza {
    private static List<Runnable> zzrl = new ArrayList();
    private boolean zzrm;
    private Set<zza> zzrn = new HashSet();
    private boolean zzro;
    private boolean zzrp;
    private volatile boolean zzrq;
    private boolean zzrr;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/GoogleAnalytics$zza.class */
    public interface zza {
        void zzc(Activity activity);

        void zzd(Activity activity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(14)
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/GoogleAnalytics$zzb.class */
    public final class zzb implements Application.ActivityLifecycleCallbacks {
        zzb() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            GoogleAnalytics.this.zza(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
            GoogleAnalytics.this.zzb(activity);
        }
    }

    @VisibleForTesting
    public GoogleAnalytics(zzaw zzawVar) {
        super(zzawVar);
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public static GoogleAnalytics getInstance(Context context) {
        return zzaw.zzc(context).zzco();
    }

    public static void zzr() {
        synchronized (GoogleAnalytics.class) {
            try {
                if (zzrl != null) {
                    for (Runnable runnable : zzrl) {
                        runnable.run();
                    }
                    zzrl = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void dispatchLocalHits() {
        zzl().zzcc().zzbs();
    }

    @TargetApi(14)
    public final void enableAutoActivityReports(Application application) {
        if (!this.zzro) {
            application.registerActivityLifecycleCallbacks(new zzb());
            this.zzro = true;
        }
    }

    public final boolean getAppOptOut() {
        return this.zzrq;
    }

    @Deprecated
    public final Logger getLogger() {
        return zzco.getLogger();
    }

    public final boolean isDryRunEnabled() {
        return this.zzrp;
    }

    public final boolean isInitialized() {
        return this.zzrm;
    }

    public final Tracker newTracker(int i) {
        Tracker tracker;
        zzdf zzq;
        synchronized (this) {
            tracker = new Tracker(zzl(), null, null);
            if (i > 0 && (zzq = new zzdd(zzl()).zzq(i)) != null) {
                tracker.zza(zzq);
            }
            tracker.zzq();
        }
        return tracker;
    }

    public final Tracker newTracker(String str) {
        Tracker tracker;
        synchronized (this) {
            tracker = new Tracker(zzl(), str, null);
            tracker.zzq();
        }
        return tracker;
    }

    public final void reportActivityStart(Activity activity) {
        if (!this.zzro) {
            zza(activity);
        }
    }

    public final void reportActivityStop(Activity activity) {
        if (!this.zzro) {
            zzb(activity);
        }
    }

    public final void setAppOptOut(boolean z) {
        this.zzrq = z;
        if (this.zzrq) {
            zzl().zzcc().zzbr();
        }
    }

    public final void setDryRun(boolean z) {
        this.zzrp = z;
    }

    public final void setLocalDispatchPeriod(int i) {
        zzl().zzcc().setLocalDispatchPeriod(i);
    }

    @Deprecated
    public final void setLogger(Logger logger) {
        zzco.setLogger(logger);
        if (!this.zzrr) {
            String str = zzcf.zzyx.get();
            String str2 = zzcf.zzyx.get();
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 112);
            sb.append("GoogleAnalytics.setLogger() is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag.");
            sb.append(str2);
            sb.append(" DEBUG");
            Log.i(str, sb.toString());
            this.zzrr = true;
        }
    }

    @VisibleForTesting
    final void zza(Activity activity) {
        for (zza zzaVar : this.zzrn) {
            zzaVar.zzc(activity);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zza zzaVar) {
        this.zzrn.add(zzaVar);
        Context context = zzl().getContext();
        if (context instanceof Application) {
            enableAutoActivityReports((Application) context);
        }
    }

    @VisibleForTesting
    final void zzb(Activity activity) {
        for (zza zzaVar : this.zzrn) {
            zzaVar.zzd(activity);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzb(zza zzaVar) {
        this.zzrn.remove(zzaVar);
    }

    public final void zzq() {
        zzdh zzce = zzl().zzce();
        zzce.zzfr();
        if (zzce.zzfs()) {
            setDryRun(zzce.zzft());
        }
        zzce.zzfr();
        this.zzrm = true;
    }
}
