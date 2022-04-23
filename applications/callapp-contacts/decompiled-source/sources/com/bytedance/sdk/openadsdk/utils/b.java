package com.bytedance.sdk.openadsdk.utils;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.os.Bundle;
import android.os.SystemClock;
import com.bytedance.sdk.openadsdk.core.k;
import com.bytedance.sdk.openadsdk.i.a;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/b.class */
public class b implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    public static String f10286a = "pangle_event_timer_ten_min";

    /* renamed from: b  reason: collision with root package name */
    public static boolean f10287b = false;

    /* renamed from: c  reason: collision with root package name */
    public static long f10288c;

    /* renamed from: d  reason: collision with root package name */
    public static long f10289d;
    private AtomicInteger e = new AtomicInteger(0);
    private AtomicBoolean f = new AtomicBoolean(false);
    private HashSet<Integer> g = new HashSet<>();
    private long h = 0;

    private void b() {
        if (a()) {
            f10287b = false;
            f10289d = System.currentTimeMillis();
            a.a().a(f10288c / 1000, f10289d / 1000, !k.f8987b.get());
            k.f8987b.set(false);
        }
    }

    public boolean a() {
        return this.f.get();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        if (activity != null) {
            this.g.remove(Integer.valueOf(activity.hashCode()));
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        if (activity != null) {
            this.g.add(Integer.valueOf(activity.hashCode()));
            if (this.h == 0) {
                this.h = SystemClock.elapsedRealtime();
            } else if (SystemClock.elapsedRealtime() - this.h > 300000) {
                this.h = SystemClock.elapsedRealtime();
                activity.sendBroadcast(new Intent(f10286a));
            }
            com.bytedance.sdk.adnet.a.a(activity);
            if (!f10287b) {
                f10288c = System.currentTimeMillis();
                f10287b = true;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        if (this.e.incrementAndGet() > 0) {
            this.f.set(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (this.e.decrementAndGet() == 0) {
            this.f.set(true);
        }
        b();
    }
}
