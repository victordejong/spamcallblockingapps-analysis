package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.i0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/i0.class */
public final class C6572i0 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: d */
    private final Application f24098d;

    /* renamed from: e */
    private final WeakReference<Application.ActivityLifecycleCallbacks> f24099e;

    /* renamed from: f */
    private boolean f24100f = false;

    public C6572i0(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.f24099e = new WeakReference<>(activityLifecycleCallbacks);
        this.f24098d = application;
    }

    /* renamed from: a */
    protected final void m14519a(AbstractC6535h0 abstractC6535h0) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.f24099e.get();
            if (activityLifecycleCallbacks != null) {
                abstractC6535h0.mo8640a(activityLifecycleCallbacks);
            } else if (this.f24100f) {
            } else {
                this.f24098d.unregisterActivityLifecycleCallbacks(this);
                this.f24100f = true;
            }
        } catch (Exception e) {
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m14519a(new C7201z(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m14519a(new C6498g0(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m14519a(new C6386d0(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m14519a(new C6349c0(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m14519a(new C6461f0(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m14519a(new C6312b0(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        m14519a(new C6424e0(this, activity));
    }
}
