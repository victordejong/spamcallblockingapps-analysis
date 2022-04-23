package com.appsflyer.internal.referrer;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/referrer/Referrer.class */
public abstract class Referrer {
    public final Map<String, Object> map = new HashMap();

    /* renamed from: ǃ  reason: contains not printable characters */
    State f322 = State.NOT_STARTED;

    /* renamed from: Ι  reason: contains not printable characters */
    long f323;

    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/referrer/Referrer$State.class */
    public enum State {
        NOT_STARTED,
        STARTED,
        FINISHED
    }

    public State getState() {
        return this.f322;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: ι  reason: contains not printable characters */
    public final void m1021(Context context) {
        this.f323 = System.currentTimeMillis();
        this.f322 = State.STARTED;
        final Application application = (Application) context.getApplicationContext();
        application.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.appsflyer.internal.referrer.Referrer.2
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
                Referrer.this.map.put(Payload.LATENCY_FOREGROUND, Long.valueOf(System.currentTimeMillis() - Referrer.this.f323));
                application.unregisterActivityLifecycleCallbacks(this);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityStarted(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityStopped(Activity activity) {
            }
        });
    }
}
