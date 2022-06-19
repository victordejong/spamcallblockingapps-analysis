package com.criteo.publisher.p256m0;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.criteo.publisher.C8272e;
import com.criteo.publisher.p241a.C8221a;
import com.criteo.publisher.p251j0.C8356b;
import java.util.concurrent.Future;
/* renamed from: com.criteo.publisher.m0.e */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/e.class */
public class C8431e implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    private final C8221a f30190a;

    /* renamed from: b */
    private final C8272e f30191b;

    /* renamed from: c */
    private int f30192c = 0;

    /* renamed from: d */
    private int f30193d = 0;

    /* renamed from: e */
    private boolean f30194e = false;

    /* renamed from: f */
    private boolean f30195f = false;

    public C8431e(C8221a c8221a, C8272e c8272e) {
        this.f30190a = c8221a;
        this.f30191b = c8272e;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (!this.f30195f) {
            this.f30195f = true;
            this.f30190a.m25985a("Launch");
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        this.f30194e = true;
        this.f30193d--;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        if (this.f30193d == 0 && !this.f30194e) {
            this.f30190a.m25985a("Active");
        }
        this.f30194e = false;
        this.f30193d++;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        this.f30192c++;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (this.f30192c == 1) {
            if (this.f30194e && this.f30193d == 0) {
                this.f30190a.m25985a("Inactive");
            }
            C8356b c8356b = this.f30191b.f29837c;
            synchronized (c8356b.f30025f) {
                for (Future<?> future : c8356b.f30024e.values()) {
                    future.cancel(true);
                }
                c8356b.f30024e.clear();
            }
        }
        this.f30194e = false;
        this.f30192c--;
    }
}
