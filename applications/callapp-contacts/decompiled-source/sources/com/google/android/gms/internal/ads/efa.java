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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efa.class */
public final class efa implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    Activity f27759a;

    /* renamed from: b  reason: collision with root package name */
    Context f27760b;

    /* renamed from: d  reason: collision with root package name */
    long f27762d;
    private Runnable j;
    private final Object e = new Object();
    private boolean f = true;
    private boolean g = false;
    private final List<efc> h = new ArrayList();
    private final List<efo> i = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    boolean f27761c = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Activity activity) {
        synchronized (this.e) {
            if (!activity.getClass().getName().startsWith(MobileAds.ERROR_DOMAIN)) {
                this.f27759a = activity;
            }
        }
    }

    public final void a(efc efcVar) {
        synchronized (this.e) {
            this.h.add(efcVar);
        }
    }

    public final void b(efc efcVar) {
        synchronized (this.e) {
            this.h.remove(efcVar);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        synchronized (this.e) {
            Activity activity2 = this.f27759a;
            if (activity2 != null) {
                if (activity2.equals(activity)) {
                    this.f27759a = null;
                }
                Iterator<efo> it2 = this.i.iterator();
                while (it2.hasNext()) {
                    try {
                        if (it2.next().a()) {
                            it2.remove();
                        }
                    } catch (Exception e) {
                        zzr.zzkz().a(e, "AppActivityTracker.ActivityListener.onActivityDestroyed");
                        za.zzc("", e);
                    }
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        a(activity);
        synchronized (this.e) {
            Iterator<efo> it2 = this.i.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        }
        this.g = true;
        if (this.j != null) {
            zzj.zzegq.removeCallbacks(this.j);
        }
        cxg cxgVar = zzj.zzegq;
        eez eezVar = new eez(this);
        this.j = eezVar;
        cxgVar.postDelayed(eezVar, this.f27762d);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        a(activity);
        this.g = false;
        boolean z = this.f;
        this.f = true;
        if (this.j != null) {
            zzj.zzegq.removeCallbacks(this.j);
        }
        synchronized (this.e) {
            Iterator<efo> it2 = this.i.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
            if (!z) {
                for (efc efcVar : this.h) {
                    try {
                        efcVar.a(true);
                    } catch (Exception e) {
                        za.zzc("", e);
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
        a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
