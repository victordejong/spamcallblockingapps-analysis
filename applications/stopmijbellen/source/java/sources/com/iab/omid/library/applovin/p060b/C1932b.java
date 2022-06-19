package com.iab.omid.library.applovin.p060b;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.iab.omid.library.applovin.adsession.C1929a;
/* renamed from: com.iab.omid.library.applovin.b.b */
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/b/b.class */
public class C1932b implements Application.ActivityLifecycleCallbacks {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: a */
    private static C1932b f7165a = new C1932b();

    /* renamed from: b */
    private boolean f7166b;

    /* renamed from: c */
    private boolean f7167c;

    /* renamed from: d */
    private AbstractC1933a f7168d;

    /* renamed from: com.iab.omid.library.applovin.b.b$a */
    /* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/b/b$a.class */
    public interface AbstractC1933a {
        /* renamed from: a */
        void mo4129a(boolean z);
    }

    private C1932b() {
    }

    /* renamed from: a */
    public static C1932b m4164a() {
        return f7165a;
    }

    /* renamed from: a */
    private void m4161a(boolean z) {
        if (this.f7167c != z) {
            this.f7167c = z;
            if (!this.f7166b) {
                return;
            }
            m4157e();
            AbstractC1933a abstractC1933a = this.f7168d;
            if (abstractC1933a == null) {
                return;
            }
            abstractC1933a.mo4129a(!z);
        }
    }

    /* renamed from: e */
    private void m4157e() {
        boolean z = this.f7167c;
        for (C1929a c1929a : C1931a.m4171a().m4169b()) {
            c1929a.getAdSessionStatePublisher().m4057a(!z);
        }
    }

    /* renamed from: a */
    public void m4163a(Context context) {
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(this);
        }
    }

    /* renamed from: a */
    public void m4162a(AbstractC1933a abstractC1933a) {
        this.f7168d = abstractC1933a;
    }

    /* renamed from: b */
    public void m4160b() {
        this.f7166b = true;
        this.f7167c = false;
        m4157e();
    }

    /* renamed from: c */
    public void m4159c() {
        this.f7166b = false;
        this.f7167c = false;
        this.f7168d = null;
    }

    /* renamed from: d */
    public ActivityManager.RunningAppProcessInfo m4158d() {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(runningAppProcessInfo);
        return runningAppProcessInfo;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        m4161a(false);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        View m4185e;
        boolean z = true;
        boolean z2 = m4158d().importance != 100;
        boolean z3 = true;
        for (C1929a c1929a : C1931a.m4171a().m4167c()) {
            if (c1929a.m4184f() && (m4185e = c1929a.m4185e()) != null && m4185e.hasWindowFocus()) {
                z3 = false;
            }
        }
        if (!z2 || !z3) {
            z = false;
        }
        m4161a(z);
    }
}
