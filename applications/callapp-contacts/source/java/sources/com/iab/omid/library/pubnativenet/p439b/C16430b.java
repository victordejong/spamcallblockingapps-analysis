package com.iab.omid.library.pubnativenet.p439b;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import com.iab.omid.library.pubnativenet.adsession.C16427k;
import java.util.Collections;
/* renamed from: com.iab.omid.library.pubnativenet.b.b */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/b/b.class */
public final class C16430b implements Application.ActivityLifecycleCallbacks {

    /* renamed from: d */
    private static C16430b f57928d = new C16430b();

    /* renamed from: a */
    public boolean f57929a;

    /* renamed from: b */
    public boolean f57930b;

    /* renamed from: c */
    public AbstractC16431a f57931c;

    /* renamed from: com.iab.omid.library.pubnativenet.b.b$a */
    /* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/b/b$a.class */
    public interface AbstractC16431a {
        /* renamed from: a */
        void mo7245a(boolean z);
    }

    private C16430b() {
    }

    /* renamed from: a */
    public static C16430b m7261a() {
        return f57928d;
    }

    /* renamed from: a */
    private void m7260a(boolean z) {
        if (this.f57930b != z) {
            this.f57930b = z;
            if (!this.f57929a) {
                return;
            }
            m7259b();
            AbstractC16431a abstractC16431a = this.f57931c;
            if (abstractC16431a == null) {
                return;
            }
            abstractC16431a.mo7245a(!z);
        }
    }

    /* renamed from: b */
    public void m7259b() {
        boolean z = this.f57930b;
        for (C16427k c16427k : Collections.unmodifiableCollection(C16429a.m7263a().f57926a)) {
            c16427k.f57916c.m7209a(!z);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        View m7266e;
        if (Build.VERSION.SDK_INT >= 16) {
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            boolean z = true;
            boolean z2 = runningAppProcessInfo.importance != 100;
            boolean z3 = true;
            for (C16427k c16427k : Collections.unmodifiableCollection(C16429a.m7263a().f57927b)) {
                if (c16427k.m7264f() && (m7266e = c16427k.m7266e()) != null && m7266e.hasWindowFocus()) {
                    z3 = false;
                }
            }
            if (!z2 || !z3) {
                z = false;
            }
            m7260a(z);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m7260a(false);
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
}
