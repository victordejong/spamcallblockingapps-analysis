package p1727n3.p1868v;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import p1727n3.p1868v.AbstractC27028u;
/* renamed from: n3.v.q0 */
/* loaded from: classes-dex2jar.jar:n3/v/q0.class */
public class C27018q0 extends C27014n {
    public final /* synthetic */ C27015p0 this$0;

    /* renamed from: n3.v.q0$a */
    /* loaded from: classes-dex2jar.jar:n3/v/q0$a.class */
    public class C27019a extends C27014n {
        public C27019a() {
            C27018q0.this = r4;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            C27018q0.this.this$0.m998a();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            C27018q0.this.this$0.m997b();
        }
    }

    public C27018q0(C27015p0 c27015p0) {
        this.this$0 = c27015p0;
    }

    @Override // p1727n3.p1868v.C27014n, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (Build.VERSION.SDK_INT < 29) {
            int i = FragmentC27021r0.f75557b;
            ((FragmentC27021r0) activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag")).f75558a = this.this$0.f75553h;
        }
    }

    @Override // p1727n3.p1868v.C27014n, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        C27015p0 c27015p0 = this.this$0;
        int i = c27015p0.f75547b - 1;
        c27015p0.f75547b = i;
        if (i == 0) {
            c27015p0.f75550e.postDelayed(c27015p0.f75552g, 700L);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreCreated(Activity activity, Bundle bundle) {
        activity.registerActivityLifecycleCallbacks(new C27019a());
    }

    @Override // p1727n3.p1868v.C27014n, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        C27015p0 c27015p0 = this.this$0;
        int i = c27015p0.f75546a - 1;
        c27015p0.f75546a = i;
        if (i != 0 || !c27015p0.f75548c) {
            return;
        }
        c27015p0.f75551f.m1019e(AbstractC27028u.EnumC27029a.ON_STOP);
        c27015p0.f75549d = true;
    }
}
