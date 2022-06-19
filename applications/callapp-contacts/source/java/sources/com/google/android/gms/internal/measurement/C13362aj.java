package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* renamed from: com.google.android.gms.internal.measurement.aj */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/aj.class */
public final class C13362aj implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    final /* synthetic */ C13363ak f50595a;

    public C13362aj(C13363ak c13363ak) {
        this.f50595a = c13363ak;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        this.f50595a.m13311a(new C13355ac(this, bundle, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.f50595a.m13311a(new C13361ai(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        this.f50595a.m13311a(new C13358af(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        this.f50595a.m13311a(new C13357ae(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        BinderC13670lu binderC13670lu = new BinderC13670lu();
        this.f50595a.m13311a(new C13360ah(this, activity, binderC13670lu));
        Bundle m12333b = binderC13670lu.m12333b(50L);
        if (m12333b != null) {
            bundle.putAll(m12333b);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        this.f50595a.m13311a(new C13356ad(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        this.f50595a.m13311a(new C13359ag(this, activity));
    }
}
