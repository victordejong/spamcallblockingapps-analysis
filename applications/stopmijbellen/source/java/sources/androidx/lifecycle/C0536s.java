package androidx.lifecycle;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import androidx.lifecycle.AbstractC0516f;
/* renamed from: androidx.lifecycle.s */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/s.class */
public class C0536s extends C0511c {
    public final /* synthetic */ C0533r this$0;

    /* renamed from: androidx.lifecycle.s$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/s$a.class */
    public class C0537a extends C0511c {
        public C0537a() {
            C0536s.this = r4;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            C0536s.this.this$0.m7979a();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            C0536s.this.this$0.m7978c();
        }
    }

    public C0536s(C0533r c0533r) {
        this.this$0 = c0533r;
    }

    @Override // androidx.lifecycle.C0511c, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (Build.VERSION.SDK_INT < 29) {
            int i = FragmentC0538t.f2061b;
            ((FragmentC0538t) activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag")).f2062a = this.this$0.f2058h;
        }
    }

    @Override // androidx.lifecycle.C0511c, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        C0533r c0533r = this.this$0;
        int i = c0533r.f2052b - 1;
        c0533r.f2052b = i;
        if (i == 0) {
            c0533r.f2055e.postDelayed(c0533r.f2057g, 700L);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreCreated(Activity activity, Bundle bundle) {
        activity.registerActivityLifecycleCallbacks(new C0537a());
    }

    @Override // androidx.lifecycle.C0511c, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        C0533r c0533r = this.this$0;
        int i = c0533r.f2051a - 1;
        c0533r.f2051a = i;
        if (i != 0 || !c0533r.f2053c) {
            return;
        }
        c0533r.f2056f.m7988e(AbstractC0516f.EnumC0518b.ON_STOP);
        c0533r.f2054d = true;
    }
}
