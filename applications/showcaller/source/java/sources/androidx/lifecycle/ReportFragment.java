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

    /* renamed from: d */
    private AbstractC0783a f3690d;

    /* renamed from: androidx.lifecycle.ReportFragment$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/ReportFragment$a.class */
    public interface AbstractC0783a {
        /* renamed from: a */
        void mo32362a();

        void onResume();

        void onStart();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.lifecycle.ReportFragment$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/ReportFragment$b.class */
    public static class C0784b implements Application.ActivityLifecycleCallbacks {
        C0784b() {
        }

        static void registerIn(Activity activity) {
            activity.registerActivityLifecycleCallbacks(new C0784b());
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
            ReportFragment.m32425a(activity, Lifecycle.Event.ON_CREATE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            ReportFragment.m32425a(activity, Lifecycle.Event.ON_RESUME);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            ReportFragment.m32425a(activity, Lifecycle.Event.ON_START);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreDestroyed(Activity activity) {
            ReportFragment.m32425a(activity, Lifecycle.Event.ON_DESTROY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPrePaused(Activity activity) {
            ReportFragment.m32425a(activity, Lifecycle.Event.ON_PAUSE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreStopped(Activity activity) {
            ReportFragment.m32425a(activity, Lifecycle.Event.ON_STOP);
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
    static void m32425a(Activity activity, Lifecycle.Event event) {
        if (activity instanceof AbstractC0800j) {
            ((AbstractC0800j) activity).mo32372a().m32391h(event);
        } else if (!(activity instanceof AbstractC0797h)) {
        } else {
            Lifecycle mo32372a = ((AbstractC0797h) activity).mo32372a();
            if (!(mo32372a instanceof C0798i)) {
                return;
            }
            ((C0798i) mo32372a).m32391h(event);
        }
    }

    /* renamed from: b */
    private void m32424b(Lifecycle.Event event) {
        if (Build.VERSION.SDK_INT < 29) {
            m32425a(getActivity(), event);
        }
    }

    /* renamed from: c */
    private void m32423c(AbstractC0783a abstractC0783a) {
        if (abstractC0783a != null) {
            abstractC0783a.mo32362a();
        }
    }

    /* renamed from: d */
    private void m32422d(AbstractC0783a abstractC0783a) {
        if (abstractC0783a != null) {
            abstractC0783a.onResume();
        }
    }

    /* renamed from: e */
    private void m32421e(AbstractC0783a abstractC0783a) {
        if (abstractC0783a != null) {
            abstractC0783a.onStart();
        }
    }

    /* renamed from: f */
    public static ReportFragment m32420f(Activity activity) {
        return (ReportFragment) activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag");
    }

    /* renamed from: g */
    public static void m32419g(Activity activity) {
        if (Build.VERSION.SDK_INT >= 29) {
            C0784b.registerIn(activity);
        }
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new ReportFragment(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    /* renamed from: h */
    public void m32418h(AbstractC0783a abstractC0783a) {
        this.f3690d = abstractC0783a;
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        m32423c(this.f3690d);
        m32424b(Lifecycle.Event.ON_CREATE);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        m32424b(Lifecycle.Event.ON_DESTROY);
        this.f3690d = null;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        m32424b(Lifecycle.Event.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        m32422d(this.f3690d);
        m32424b(Lifecycle.Event.ON_RESUME);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        m32421e(this.f3690d);
        m32424b(Lifecycle.Event.ON_START);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        m32424b(Lifecycle.Event.ON_STOP);
    }
}
