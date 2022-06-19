package p193e.p1512i.p1516b.p1531s2;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.util.Objects;
import java.util.concurrent.Future;
import p193e.p1512i.p1516b.C23161y1;
import p193e.p1512i.p1516b.p1522i2.C22961c;
import p193e.p1512i.p1516b.p1526p1.C23006a;
/* renamed from: e.i.b.s2.d */
/* loaded from: classes-dex2jar.jar:e/i/b/s2/d.class */
public class C23079d implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    public final C23006a f63903a;

    /* renamed from: b */
    public final C23161y1 f63904b;

    /* renamed from: c */
    public int f63905c = 0;

    /* renamed from: d */
    public int f63906d = 0;

    /* renamed from: e */
    public boolean f63907e = false;

    /* renamed from: f */
    public boolean f63908f = false;

    public C23079d(C23006a c23006a, C23161y1 c23161y1) {
        this.f63903a = c23006a;
        this.f63904b = c23161y1;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (!this.f63908f) {
            this.f63908f = true;
            this.f63903a.m7591a("Launch");
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        this.f63907e = true;
        this.f63906d--;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        if (this.f63906d == 0 && !this.f63907e) {
            this.f63903a.m7591a("Active");
        }
        this.f63907e = false;
        this.f63906d++;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        this.f63905c++;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (this.f63905c == 1) {
            if (this.f63907e && this.f63906d == 0) {
                this.f63903a.m7591a("Inactive");
            }
            Objects.requireNonNull(this.f63903a);
            C22961c c22961c = this.f63904b.f64136h;
            synchronized (c22961c.f63672g) {
                for (Future<?> future : c22961c.f63671f.values()) {
                    future.cancel(true);
                }
                c22961c.f63671f.clear();
            }
        }
        this.f63907e = false;
        this.f63905c--;
    }
}
