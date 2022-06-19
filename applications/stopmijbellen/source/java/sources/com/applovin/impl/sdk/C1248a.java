package com.applovin.impl.sdk;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.applovin.impl.sdk.utils.AbstractC1485a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.applovin.impl.sdk.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/a.class */
public class C1248a implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    private final List<AbstractC1485a> f4500a = Collections.synchronizedList(new ArrayList());

    /* renamed from: b */
    private WeakReference<Activity> f4501b;

    /* renamed from: c */
    private WeakReference<Activity> f4502c;

    public C1248a(Context context) {
        this.f4501b = new WeakReference<>(null);
        this.f4502c = new WeakReference<>(null);
        C1479t.m5110f("AppLovinSdk", "Attaching Activity lifecycle manager...");
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            this.f4501b = new WeakReference<>(activity);
            if (activity.hasWindowFocus()) {
                this.f4502c = this.f4501b;
            }
        }
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(this);
    }

    /* renamed from: a */
    public Activity m6068a() {
        return this.f4501b.get();
    }

    /* renamed from: a */
    public void m6067a(AbstractC1485a abstractC1485a) {
        this.f4500a.add(abstractC1485a);
    }

    /* renamed from: b */
    public Activity m6066b() {
        return this.f4502c.get();
    }

    /* renamed from: b */
    public void m6065b(AbstractC1485a abstractC1485a) {
        this.f4500a.remove(abstractC1485a);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        Iterator it2 = new ArrayList(this.f4500a).iterator();
        while (it2.hasNext()) {
            ((AbstractC1485a) it2.next()).onActivityCreated(activity, bundle);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        Iterator it2 = new ArrayList(this.f4500a).iterator();
        while (it2.hasNext()) {
            ((AbstractC1485a) it2.next()).onActivityDestroyed(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        this.f4502c = new WeakReference<>(null);
        Iterator it2 = new ArrayList(this.f4500a).iterator();
        while (it2.hasNext()) {
            ((AbstractC1485a) it2.next()).onActivityPaused(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        WeakReference<Activity> weakReference = new WeakReference<>(activity);
        this.f4501b = weakReference;
        this.f4502c = weakReference;
        Iterator it2 = new ArrayList(this.f4500a).iterator();
        while (it2.hasNext()) {
            ((AbstractC1485a) it2.next()).onActivityResumed(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        Iterator it2 = new ArrayList(this.f4500a).iterator();
        while (it2.hasNext()) {
            ((AbstractC1485a) it2.next()).onActivitySaveInstanceState(activity, bundle);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        Iterator it2 = new ArrayList(this.f4500a).iterator();
        while (it2.hasNext()) {
            ((AbstractC1485a) it2.next()).onActivityStarted(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        Iterator it2 = new ArrayList(this.f4500a).iterator();
        while (it2.hasNext()) {
            ((AbstractC1485a) it2.next()).onActivityStopped(activity);
        }
    }
}
