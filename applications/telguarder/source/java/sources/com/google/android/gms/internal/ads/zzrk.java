package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzrk.class */
public final class zzrk implements Application.ActivityLifecycleCallbacks {
    private Context context;
    private Activity zzaas;
    private Runnable zzbta;
    private long zzbtb;
    private final Object lock = new Object();
    private boolean foreground = true;
    private boolean zzbsx = false;
    private final List<zzrm> zzbsy = new ArrayList();
    private final List<zzsb> zzbsz = new ArrayList();
    private boolean zzzl = false;

    private final void setActivity(Activity activity) {
        synchronized (this.lock) {
            if (!activity.getClass().getName().startsWith(MobileAds.ERROR_DOMAIN)) {
                this.zzaas = activity;
            }
        }
    }

    public final Activity getActivity() {
        return this.zzaas;
    }

    public final Context getContext() {
        return this.context;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        synchronized (this.lock) {
            Activity activity2 = this.zzaas;
            if (activity2 == null) {
                return;
            }
            if (activity2.equals(activity)) {
                this.zzaas = null;
            }
            Iterator<zzsb> it = this.zzbsz.iterator();
            while (it.hasNext()) {
                try {
                    if (it.next().zza(activity)) {
                        it.remove();
                    }
                } catch (Exception e) {
                    zzr.zzkv().zza(e, "AppActivityTracker.ActivityListener.onActivityDestroyed");
                    zzazk.zzc("", e);
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        setActivity(activity);
        synchronized (this.lock) {
            for (zzsb zzsbVar : this.zzbsz) {
                try {
                    zzsbVar.onActivityPaused(activity);
                } catch (Exception e) {
                    zzr.zzkv().zza(e, "AppActivityTracker.ActivityListener.onActivityPaused");
                    zzazk.zzc("", e);
                }
            }
        }
        this.zzbsx = true;
        if (this.zzbta != null) {
            zzj.zzeen.removeCallbacks(this.zzbta);
        }
        zzdvl zzdvlVar = zzj.zzeen;
        zzrn zzrnVar = new zzrn(this);
        this.zzbta = zzrnVar;
        zzdvlVar.postDelayed(zzrnVar, this.zzbtb);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        setActivity(activity);
        this.zzbsx = false;
        boolean z = this.foreground;
        this.foreground = true;
        if (this.zzbta != null) {
            zzj.zzeen.removeCallbacks(this.zzbta);
        }
        synchronized (this.lock) {
            for (zzsb zzsbVar : this.zzbsz) {
                try {
                    zzsbVar.onActivityResumed(activity);
                } catch (Exception e) {
                    zzr.zzkv().zza(e, "AppActivityTracker.ActivityListener.onActivityResumed");
                    zzazk.zzc("", e);
                }
            }
            if (!z) {
                for (zzrm zzrmVar : this.zzbsy) {
                    try {
                        zzrmVar.zzp(true);
                    } catch (Exception e2) {
                        zzazk.zzc("", e2);
                    }
                }
            } else {
                zzd.zzdy("App is still foreground.");
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        setActivity(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    public final void zza(Application application, Context context) {
        if (!this.zzzl) {
            application.registerActivityLifecycleCallbacks(this);
            if (context instanceof Activity) {
                setActivity((Activity) context);
            }
            this.context = application;
            this.zzbtb = ((Long) zzwr.zzqr().zzd(zzabp.zzcpl)).longValue();
            this.zzzl = true;
        }
    }

    public final void zza(zzrm zzrmVar) {
        synchronized (this.lock) {
            this.zzbsy.add(zzrmVar);
        }
    }

    public final void zzb(zzrm zzrmVar) {
        synchronized (this.lock) {
            this.zzbsy.remove(zzrmVar);
        }
    }
}
