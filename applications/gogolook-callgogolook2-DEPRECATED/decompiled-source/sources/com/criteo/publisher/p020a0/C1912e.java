package com.criteo.publisher.p020a0;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.criteo.publisher.C1963b;
import com.criteo.publisher.p019a.C1907a;
/* renamed from: com.criteo.publisher.a0.e */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/a0/e.class */
public class C1912e implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    public final C1907a f2019a;

    /* renamed from: b */
    public final C1963b f2020b;

    /* renamed from: c */
    public int f2021c = 0;

    /* renamed from: d */
    public int f2022d = 0;

    /* renamed from: e */
    public boolean f2023e = false;

    /* renamed from: f */
    public boolean f2024f = false;

    public C1912e(C1907a aVar, C1963b bVar) {
        this.f2019a = aVar;
        this.f2020b = bVar;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (!this.f2024f) {
            this.f2024f = true;
            this.f2019a.m36048d();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        this.f2023e = true;
        this.f2022d--;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        if (this.f2022d == 0 && !this.f2023e) {
            this.f2019a.m36050b();
        }
        this.f2023e = false;
        this.f2022d++;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        this.f2021c++;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (this.f2021c == 1) {
            if (this.f2023e && this.f2022d == 0) {
                this.f2019a.m36049c();
            }
            this.f2019a.m36052a();
            this.f2020b.m35960a();
        }
        this.f2023e = false;
        this.f2021c--;
    }
}
