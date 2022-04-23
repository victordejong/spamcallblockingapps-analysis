package com.iab.omid.library.pubnativenet.b;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import com.iab.omid.library.pubnativenet.adsession.k;
import java.util.Collections;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/b/b.class */
public final class b implements Application.ActivityLifecycleCallbacks {

    /* renamed from: d  reason: collision with root package name */
    private static b f33358d = new b();

    /* renamed from: a  reason: collision with root package name */
    public boolean f33359a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f33360b;

    /* renamed from: c  reason: collision with root package name */
    public a f33361c;

    /* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/b/b$a.class */
    public interface a {
        void a(boolean z);
    }

    private b() {
    }

    public static b a() {
        return f33358d;
    }

    private void a(boolean z) {
        if (this.f33360b != z) {
            this.f33360b = z;
            if (this.f33359a) {
                b();
                a aVar = this.f33361c;
                if (aVar != null) {
                    aVar.a(!z);
                }
            }
        }
    }

    public void b() {
        boolean z = this.f33360b;
        for (k kVar : Collections.unmodifiableCollection(com.iab.omid.library.pubnativenet.b.a.a().f33356a)) {
            kVar.f33352c.a(!z);
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
        View e;
        if (Build.VERSION.SDK_INT >= 16) {
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            boolean z = true;
            boolean z2 = runningAppProcessInfo.importance != 100;
            boolean z3 = true;
            for (k kVar : Collections.unmodifiableCollection(com.iab.omid.library.pubnativenet.b.a.a().f33357b)) {
                if (kVar.f() && (e = kVar.e()) != null && e.hasWindowFocus()) {
                    z3 = false;
                }
            }
            if (!z2 || !z3) {
                z = false;
            }
            a(z);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        a(false);
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
