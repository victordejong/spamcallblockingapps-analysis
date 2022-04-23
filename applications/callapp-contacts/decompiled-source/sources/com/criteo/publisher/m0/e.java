package com.criteo.publisher.m0;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.criteo.publisher.a.a;
import com.criteo.publisher.j0.b;
import java.util.concurrent.Future;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/e.class */
public class e implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private final a f17507a;

    /* renamed from: b  reason: collision with root package name */
    private final com.criteo.publisher.e f17508b;

    /* renamed from: c  reason: collision with root package name */
    private int f17509c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int f17510d = 0;
    private boolean e = false;
    private boolean f = false;

    public e(a aVar, com.criteo.publisher.e eVar) {
        this.f17507a = aVar;
        this.f17508b = eVar;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (!this.f) {
            this.f = true;
            this.f17507a.a("Launch");
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        this.e = true;
        this.f17510d--;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        if (this.f17510d == 0 && !this.e) {
            this.f17507a.a("Active");
        }
        this.e = false;
        this.f17510d++;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        this.f17509c++;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (this.f17509c == 1) {
            if (this.e && this.f17510d == 0) {
                this.f17507a.a("Inactive");
            }
            b bVar = this.f17508b.f17226c;
            synchronized (bVar.f) {
                for (Future<?> future : bVar.e.values()) {
                    future.cancel(true);
                }
                bVar.e.clear();
            }
        }
        this.e = false;
        this.f17509c--;
    }
}
