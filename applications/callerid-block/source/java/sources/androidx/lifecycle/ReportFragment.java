package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Build;
import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/ReportFragment.class */
public class ReportFragment extends Fragment {

    /* renamed from: b */
    private AbstractC0351a f2048b;

    /* renamed from: androidx.lifecycle.ReportFragment$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/ReportFragment$a.class */
    public interface AbstractC0351a {
        /* renamed from: a */
        void m12995a();

        void onResume();

        void onStart();
    }

    /* renamed from: androidx.lifecycle.ReportFragment$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/ReportFragment$b.class */
    static class C0352b implements Application.ActivityLifecycleCallbacks {
        C0352b() {
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
            ReportFragment.m13003a(activity, Lifecycle.Event.ON_CREATE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            ReportFragment.m13003a(activity, Lifecycle.Event.ON_RESUME);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            ReportFragment.m13003a(activity, Lifecycle.Event.ON_START);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreDestroyed(Activity activity) {
            ReportFragment.m13003a(activity, Lifecycle.Event.ON_DESTROY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPrePaused(Activity activity) {
            ReportFragment.m13003a(activity, Lifecycle.Event.ON_PAUSE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreStopped(Activity activity) {
            ReportFragment.m13003a(activity, Lifecycle.Event.ON_STOP);
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
    static void m13003a(Activity activity, Lifecycle.Event event) {
        if (activity instanceof j) {
            ((j) activity).a().i(event);
        } else if (!(activity instanceof AbstractC0360h)) {
        } else {
            i m12984a = ((AbstractC0360h) activity).m12984a();
            if (!(m12984a instanceof i)) {
                return;
            }
            m12984a.i(event);
        }
    }

    /* renamed from: b */
    private void m13002b(Lifecycle.Event event) {
        if (Build.VERSION.SDK_INT < 29) {
            m13003a(getActivity(), event);
        }
    }

    /* renamed from: c */
    private void m13001c(AbstractC0351a abstractC0351a) {
        if (abstractC0351a != null) {
            abstractC0351a.m12995a();
        }
    }

    /* renamed from: d */
    private void m13000d(AbstractC0351a abstractC0351a) {
        if (abstractC0351a != null) {
            abstractC0351a.onResume();
        }
    }

    /* renamed from: e */
    private void m12999e(AbstractC0351a abstractC0351a) {
        if (abstractC0351a != null) {
            abstractC0351a.onStart();
        }
    }

    /* renamed from: f */
    static ReportFragment m12998f(Activity activity) {
        return (ReportFragment) activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag");
    }

    /* renamed from: g */
    public static void m12997g(Activity activity) {
        if (Build.VERSION.SDK_INT >= 29) {
            activity.registerActivityLifecycleCallbacks(new C0352b());
        }
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new ReportFragment(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    /* renamed from: h */
    void m12996h(AbstractC0351a abstractC0351a) {
        this.f2048b = abstractC0351a;
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        m13001c(this.f2048b);
        m13002b(Lifecycle.Event.ON_CREATE);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        m13002b(Lifecycle.Event.ON_DESTROY);
        this.f2048b = null;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        m13002b(Lifecycle.Event.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        m13000d(this.f2048b);
        m13002b(Lifecycle.Event.ON_RESUME);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        m12999e(this.f2048b);
        m13002b(Lifecycle.Event.ON_START);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        m13002b(Lifecycle.Event.ON_STOP);
    }
}
