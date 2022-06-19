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
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efa.class */
public final class efa implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    Activity f48919a;

    /* renamed from: b */
    Context f48920b;

    /* renamed from: d */
    long f48922d;

    /* renamed from: j */
    private Runnable f48928j;

    /* renamed from: e */
    private final Object f48923e = new Object();

    /* renamed from: f */
    private boolean f48924f = true;

    /* renamed from: g */
    private boolean f48925g = false;

    /* renamed from: h */
    private final List<efc> f48926h = new ArrayList();

    /* renamed from: i */
    private final List<efo> f48927i = new ArrayList();

    /* renamed from: c */
    boolean f48921c = false;

    /* renamed from: a */
    public final void m15106a(Activity activity) {
        synchronized (this.f48923e) {
            if (!activity.getClass().getName().startsWith(MobileAds.ERROR_DOMAIN)) {
                this.f48919a = activity;
            }
        }
    }

    /* renamed from: a */
    public final void m15104a(efc efcVar) {
        synchronized (this.f48923e) {
            this.f48926h.add(efcVar);
        }
    }

    /* renamed from: b */
    public final void m15102b(efc efcVar) {
        synchronized (this.f48923e) {
            this.f48926h.remove(efcVar);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        synchronized (this.f48923e) {
            Activity activity2 = this.f48919a;
            if (activity2 == null) {
                return;
            }
            if (activity2.equals(activity)) {
                this.f48919a = null;
            }
            Iterator<efo> it2 = this.f48927i.iterator();
            while (it2.hasNext()) {
                try {
                    if (it2.next().m15089a()) {
                        it2.remove();
                    }
                } catch (Exception e) {
                    zzr.zzkz().m13979a(e, "AppActivityTracker.ActivityListener.onActivityDestroyed");
                    C13088za.zzc("", e);
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m15106a(activity);
        synchronized (this.f48923e) {
            Iterator<efo> it2 = this.f48927i.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        }
        this.f48925g = true;
        if (this.f48928j != null) {
            zzj.zzegq.removeCallbacks(this.f48928j);
        }
        cxg cxgVar = zzj.zzegq;
        eez eezVar = new eez(this);
        this.f48928j = eezVar;
        cxgVar.postDelayed(eezVar, this.f48922d);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m15106a(activity);
        this.f48925g = false;
        boolean z = this.f48924f;
        this.f48924f = true;
        if (this.f48928j != null) {
            zzj.zzegq.removeCallbacks(this.f48928j);
        }
        synchronized (this.f48923e) {
            Iterator<efo> it2 = this.f48927i.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
            if (!z) {
                for (efc efcVar : this.f48926h) {
                    try {
                        efcVar.mo13953a(true);
                    } catch (Exception e) {
                        C13088za.zzc("", e);
                    }
                }
            } else {
                zzd.zzdz("App is still foreground.");
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m15106a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
