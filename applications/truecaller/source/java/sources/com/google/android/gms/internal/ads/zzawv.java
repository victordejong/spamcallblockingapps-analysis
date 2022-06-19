package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzawv.class */
public final class zzawv implements Application.ActivityLifecycleCallbacks {
    private Activity zza;
    private Context zzb;
    private Runnable zzh;
    private long zzj;
    private final Object zzc = new Object();
    private boolean zzd = true;
    private boolean zze = false;
    private final List<zzaww> zzf = new ArrayList();
    private final List<zzaxk> zzg = new ArrayList();
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
                Iterator<zzaxk> it = this.zzg.iterator();
                while (it.hasNext()) {
                    try {
                        if (it.next().zza()) {
                            it.remove();
                        }
                    } catch (Exception e) {
                        zzt.zzg().zzk(e, "AppActivityTracker.ActivityListener.onActivityDestroyed");
                        zzcgt.zzg("", e);
                    }
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        zzk(activity);
        synchronized (this.zzc) {
            for (zzaxk zzaxkVar : this.zzg) {
                try {
                    zzaxkVar.zzb();
                } catch (Exception e) {
                    zzt.zzg().zzk(e, "AppActivityTracker.ActivityListener.onActivityPaused");
                    zzcgt.zzg("", e);
                }
            }
        }
        this.zze = true;
        Runnable runnable = this.zzh;
        if (runnable != null) {
            zzs.zza.removeCallbacks(runnable);
        }
        zzfla zzflaVar = zzs.zza;
        zzawu zzawuVar = new zzawu(this);
        this.zzh = zzawuVar;
        zzflaVar.postDelayed(zzawuVar, this.zzj);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        zzk(activity);
        this.zze = false;
        boolean z = this.zzd;
        this.zzd = true;
        Runnable runnable = this.zzh;
        if (runnable != null) {
            zzs.zza.removeCallbacks(runnable);
        }
        synchronized (this.zzc) {
            for (zzaxk zzaxkVar : this.zzg) {
                try {
                    zzaxkVar.zzc();
                } catch (Exception e) {
                    zzt.zzg().zzk(e, "AppActivityTracker.ActivityListener.onActivityResumed");
                    zzcgt.zzg("", e);
                }
            }
            if (!z) {
                for (zzaww zzawwVar : this.zzf) {
                    try {
                        zzawwVar.zza(true);
                    } catch (Exception e2) {
                        zzcgt.zzg("", e2);
                    }
                }
            } else {
                zzcgt.zzd("App is still foreground.");
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

    public final void zzf(Application application, Context context) {
        if (!this.zzi) {
            application.registerActivityLifecycleCallbacks(this);
            if (context instanceof Activity) {
                zzk((Activity) context);
            }
            this.zzb = application;
            this.zzj = ((Long) zzbet.zzc().zzc(zzbjl.zzaD)).longValue();
            this.zzi = true;
        }
    }

    public final void zzg(zzaww zzawwVar) {
        synchronized (this.zzc) {
            this.zzf.add(zzawwVar);
        }
    }

    public final void zzh(zzaww zzawwVar) {
        synchronized (this.zzc) {
            this.zzf.remove(zzawwVar);
        }
    }

    public final Activity zzi() {
        return this.zza;
    }

    public final Context zzj() {
        return this.zzb;
    }
}
