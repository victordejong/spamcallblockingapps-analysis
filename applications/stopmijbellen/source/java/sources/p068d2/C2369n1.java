package p068d2;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
/* renamed from: d2.n1 */
/* loaded from: classes-dex2jar.jar:d2/n1.class */
public class C2369n1 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    public final Set<Integer> f8388a = new HashSet();

    /* renamed from: b */
    public final /* synthetic */ C2230f1 f8389b;

    public C2369n1(C2230f1 c2230f1) {
        this.f8389b = c2230f1;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        C2272g2 c2272g2 = this.f8389b.f8088c;
        if (!c2272g2.f8172f) {
            c2272g2.m3693c(true);
        }
        C2408t.f8531a = activity;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        C2408t.f8534d = false;
        this.f8389b.f8088c.m3692d(false);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        ScheduledExecutorService scheduledExecutorService;
        this.f8388a.add(Integer.valueOf(activity.hashCode()));
        C2408t.f8534d = true;
        C2408t.f8531a = activity;
        C2195d2 c2195d2 = this.f8389b.m3718p().f8197d;
        Context context = C2408t.f8531a;
        if (context == null || !this.f8389b.f8088c.f8170d || !(context instanceof ActivityC2429w) || ((ActivityC2429w) context).f8599d) {
            C2408t.f8531a = activity;
            C2410t0 c2410t0 = this.f8389b.f8104s;
            if (c2410t0 != null) {
                if (!Objects.equals(c2410t0.f8537b.m3697o("m_origin"), "")) {
                    C2410t0 c2410t02 = this.f8389b.f8104s;
                    c2410t02.m3587a(c2410t02.f8537b).m3586b();
                }
                this.f8389b.f8104s = null;
            }
            C2230f1 c2230f1 = this.f8389b;
            c2230f1.f8064B = false;
            C2272g2 c2272g2 = c2230f1.f8088c;
            c2272g2.f8176j = false;
            if (c2230f1.f8067E && !c2272g2.f8172f) {
                c2272g2.m3693c(true);
            }
            this.f8389b.f8088c.m3692d(true);
            C2204e2 c2204e2 = this.f8389b.f8090e;
            C2410t0 c2410t03 = c2204e2.f8031a;
            if (c2410t03 != null) {
                c2204e2.m3759a(c2410t03);
                c2204e2.f8031a = null;
            }
            if (c2195d2 != null && (scheduledExecutorService = c2195d2.f8008b) != null && !scheduledExecutorService.isShutdown() && !c2195d2.f8008b.isTerminated()) {
                return;
            }
            C2168b.m3796b(activity, C2408t.m3591d().f8103r);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        C2272g2 c2272g2 = this.f8389b.f8088c;
        if (!c2272g2.f8173g) {
            c2272g2.f8173g = true;
            c2272g2.f8174h = true;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        this.f8388a.remove(Integer.valueOf(activity.hashCode()));
        if (this.f8388a.isEmpty()) {
            C2272g2 c2272g2 = this.f8389b.f8088c;
            if (!c2272g2.f8173g) {
                return;
            }
            c2272g2.f8173g = false;
            c2272g2.f8174h = true;
            c2272g2.m3695a(false);
        }
    }
}
