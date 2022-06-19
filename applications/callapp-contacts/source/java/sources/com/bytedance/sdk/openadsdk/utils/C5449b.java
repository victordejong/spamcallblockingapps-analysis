package com.bytedance.sdk.openadsdk.utils;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.os.Bundle;
import android.os.SystemClock;
import com.bytedance.sdk.adnet.C4151a;
import com.bytedance.sdk.openadsdk.core.C4592k;
import com.bytedance.sdk.openadsdk.p171i.C4927a;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.bytedance.sdk.openadsdk.utils.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/b.class */
public class C5449b implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    public static String f18992a = "pangle_event_timer_ten_min";

    /* renamed from: b */
    public static boolean f18993b = false;

    /* renamed from: c */
    public static long f18994c;

    /* renamed from: d */
    public static long f18995d;

    /* renamed from: e */
    private AtomicInteger f18996e = new AtomicInteger(0);

    /* renamed from: f */
    private AtomicBoolean f18997f = new AtomicBoolean(false);

    /* renamed from: g */
    private HashSet<Integer> f18998g = new HashSet<>();

    /* renamed from: h */
    private long f18999h = 0;

    /* renamed from: b */
    private void m32195b() {
        if (m32196a()) {
            f18993b = false;
            f18995d = System.currentTimeMillis();
            C4927a.m33549a().m33548a(f18994c / 1000, f18995d / 1000, !C4592k.f16795b.get());
            C4592k.f16795b.set(false);
        }
    }

    /* renamed from: a */
    public boolean m32196a() {
        return this.f18997f.get();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        if (activity != null) {
            this.f18998g.remove(Integer.valueOf(activity.hashCode()));
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        if (activity == null) {
            return;
        }
        this.f18998g.add(Integer.valueOf(activity.hashCode()));
        if (this.f18999h == 0) {
            this.f18999h = SystemClock.elapsedRealtime();
        } else if (SystemClock.elapsedRealtime() - this.f18999h > 300000) {
            this.f18999h = SystemClock.elapsedRealtime();
            activity.sendBroadcast(new Intent(f18992a));
        }
        C4151a.m36310a(activity);
        if (f18993b) {
            return;
        }
        f18994c = System.currentTimeMillis();
        f18993b = true;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        if (this.f18996e.incrementAndGet() > 0) {
            this.f18997f.set(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (this.f18996e.decrementAndGet() == 0) {
            this.f18997f.set(true);
        }
        m32195b();
    }
}
