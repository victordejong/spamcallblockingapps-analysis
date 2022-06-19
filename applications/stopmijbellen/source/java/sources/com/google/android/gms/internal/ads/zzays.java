package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.internal.zzt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;
@TargetApi(14)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzays.class */
public final class zzays implements Application.ActivityLifecycleCallbacks {
    private Activity zza;
    private Context zzb;
    private Runnable zzh;
    private long zzj;
    private final Object zzc = new Object();
    private boolean zzd = true;
    private boolean zze = false;
    @GuardedBy("lock")
    private final List<zzayt> zzf = new ArrayList();
    @GuardedBy("lock")
    private final List<zzazh> zzg = new ArrayList();
    private boolean zzi = false;

    private final void zzk(Activity activity) {
        synchronized (this.zzc) {
            if (!activity.getClass().getName().startsWith(MobileAds.ERROR_DOMAIN)) {
                this.zza = activity;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        synchronized (this.zzc) {
            Activity activity2 = this.zza;
            if (activity2 != null) {
                if (activity2.equals(activity)) {
                    this.zza = null;
                }
                Iterator<zzazh> it2 = this.zzg.iterator();
                while (it2.hasNext()) {
                    try {
                        if (it2.next().zza()) {
                            it2.remove();
                        }
                    } catch (Exception e) {
                        zzt.zzo().zzs(e, "AppActivityTracker.ActivityListener.onActivityDestroyed");
                        zzciz.zzh("", e);
                    }
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        zzk(activity);
        synchronized (this.zzc) {
            for (zzazh zzazhVar : this.zzg) {
                try {
                    zzazhVar.zzb();
                } catch (Exception e) {
                    zzt.zzo().zzs(e, "AppActivityTracker.ActivityListener.onActivityPaused");
                    zzciz.zzh("", e);
                }
            }
        }
        this.zze = true;
        Runnable runnable = this.zzh;
        if (runnable != null) {
            com.google.android.gms.ads.internal.util.zzt.zza.removeCallbacks(runnable);
        }
        zzfpj zzfpjVar = com.google.android.gms.ads.internal.util.zzt.zza;
        zzayr zzayrVar = new zzayr(this);
        this.zzh = zzayrVar;
        zzfpjVar.postDelayed(zzayrVar, this.zzj);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        zzk(activity);
        this.zze = false;
        boolean z = this.zzd;
        this.zzd = true;
        Runnable runnable = this.zzh;
        if (runnable != null) {
            com.google.android.gms.ads.internal.util.zzt.zza.removeCallbacks(runnable);
        }
        synchronized (this.zzc) {
            for (zzazh zzazhVar : this.zzg) {
                try {
                    zzazhVar.zzc();
                } catch (Exception e) {
                    zzt.zzo().zzs(e, "AppActivityTracker.ActivityListener.onActivityResumed");
                    zzciz.zzh("", e);
                }
            }
            if (!z) {
                for (zzayt zzaytVar : this.zzf) {
                    try {
                        zzaytVar.zza(true);
                    } catch (Exception e2) {
                        zzciz.zzh("", e2);
                    }
                }
            } else {
                zzciz.zze("App is still foreground.");
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        zzk(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    public final Activity zza() {
        return this.zza;
    }

    public final Context zzb() {
        return this.zzb;
    }

    public final void zzf(zzayt zzaytVar) {
        synchronized (this.zzc) {
            this.zzf.add(zzaytVar);
        }
    }

    public final void zzg(Application application, Context context) {
        if (!this.zzi) {
            application.registerActivityLifecycleCallbacks(this);
            if (context instanceof Activity) {
                zzk((Activity) context);
            }
            this.zzb = application;
            this.zzj = ((Long) zzbgq.zzc().zzb(zzblj.zzaG)).longValue();
            this.zzi = true;
        }
    }

    public final void zzh(zzayt zzaytVar) {
        synchronized (this.zzc) {
            this.zzf.remove(zzaytVar);
        }
    }
}
