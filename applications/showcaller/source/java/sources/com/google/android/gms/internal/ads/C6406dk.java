package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.internal.ads.dk */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dk.class */
final class C6406dk implements Application.ActivityLifecycleCallbacks {

    /* renamed from: d */
    private final Application f21654d;

    /* renamed from: e */
    private final WeakReference<Application.ActivityLifecycleCallbacks> f21655e;

    /* renamed from: f */
    private boolean f21656f = false;

    public C6406dk(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.f21655e = new WeakReference<>(activityLifecycleCallbacks);
        this.f21654d = application;
    }

    /* renamed from: a */
    protected final void m15779a(AbstractC6369ck abstractC6369ck) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.f21655e.get();
            if (activityLifecycleCallbacks != null) {
                abstractC6369ck.mo8351a(activityLifecycleCallbacks);
            } else if (this.f21656f) {
            } else {
                this.f21654d.unregisterActivityLifecycleCallbacks(this);
                this.f21656f = true;
            }
        } catch (Exception e) {
            ei0.m15466d("Error while dispatching lifecycle callback.", e);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m15779a(new C7073vj(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m15779a(new C6332bk(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m15779a(new C7184yj(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m15779a(new C7147xj(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m15779a(new C6295ak(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m15779a(new C7110wj(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        m15779a(new C7221zj(this, activity));
    }
}
