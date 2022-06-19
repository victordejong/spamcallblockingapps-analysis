package p1727n3.p1868v;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Build;
import android.os.Bundle;
import p1727n3.p1868v.AbstractC27028u;
/* renamed from: n3.v.r0 */
/* loaded from: classes-dex2jar.jar:n3/v/r0.class */
public class FragmentC27021r0 extends Fragment {

    /* renamed from: b */
    public static final /* synthetic */ int f75557b = 0;

    /* renamed from: a */
    public AbstractC27022a f75558a;

    /* renamed from: n3.v.r0$a */
    /* loaded from: classes-dex2jar.jar:n3/v/r0$a.class */
    public interface AbstractC27022a {
    }

    /* renamed from: n3.v.r0$b */
    /* loaded from: classes-dex2jar.jar:n3/v/r0$b.class */
    public static class C27023b implements Application.ActivityLifecycleCallbacks {
        public static void registerIn(Activity activity) {
            activity.registerActivityLifecycleCallbacks(new C27023b());
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
        public void onActivityPostCreated(Activity activity, Bundle bundle) {
            FragmentC27021r0.m993a(activity, AbstractC27028u.EnumC27029a.ON_CREATE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            FragmentC27021r0.m993a(activity, AbstractC27028u.EnumC27029a.ON_RESUME);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            FragmentC27021r0.m993a(activity, AbstractC27028u.EnumC27029a.ON_START);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreDestroyed(Activity activity) {
            FragmentC27021r0.m993a(activity, AbstractC27028u.EnumC27029a.ON_DESTROY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPrePaused(Activity activity) {
            FragmentC27021r0.m993a(activity, AbstractC27028u.EnumC27029a.ON_PAUSE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreStopped(Activity activity) {
            FragmentC27021r0.m993a(activity, AbstractC27028u.EnumC27029a.ON_STOP);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    /* renamed from: a */
    public static void m993a(Activity activity, AbstractC27028u.EnumC27029a enumC27029a) {
        if (activity instanceof AbstractC26997d0) {
            C26994c0 lifecycle = ((AbstractC26997d0) activity).getLifecycle();
            lifecycle.m1020d("handleLifecycleEvent");
            lifecycle.m1017g(enumC27029a.m986a());
        } else if (!(activity instanceof AbstractC26992b0)) {
        } else {
            AbstractC27028u lifecycle2 = ((AbstractC26992b0) activity).getLifecycle();
            if (!(lifecycle2 instanceof C26994c0)) {
                return;
            }
            C26994c0 c26994c0 = (C26994c0) lifecycle2;
            c26994c0.m1020d("handleLifecycleEvent");
            c26994c0.m1017g(enumC27029a.m986a());
        }
    }

    /* renamed from: c */
    public static void m991c(Activity activity) {
        if (Build.VERSION.SDK_INT >= 29) {
            C27023b.registerIn(activity);
        }
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new FragmentC27021r0(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    /* renamed from: b */
    public final void m992b(AbstractC27028u.EnumC27029a enumC27029a) {
        if (Build.VERSION.SDK_INT < 29) {
            m993a(getActivity(), enumC27029a);
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        m992b(AbstractC27028u.EnumC27029a.ON_CREATE);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        m992b(AbstractC27028u.EnumC27029a.ON_DESTROY);
        this.f75558a = null;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        m992b(AbstractC27028u.EnumC27029a.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        AbstractC27022a abstractC27022a = this.f75558a;
        if (abstractC27022a != null) {
            C27015p0.this.m998a();
        }
        m992b(AbstractC27028u.EnumC27029a.ON_RESUME);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        AbstractC27022a abstractC27022a = this.f75558a;
        if (abstractC27022a != null) {
            C27015p0.this.m997b();
        }
        m992b(AbstractC27028u.EnumC27029a.ON_START);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        m992b(AbstractC27028u.EnumC27029a.ON_STOP);
    }
}
