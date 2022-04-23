package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Build;
import android.os.Bundle;
import androidx.lifecycle.j;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/ReportFragment.class */
public class ReportFragment extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    a f2547a;

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/ReportFragment$a.class */
    interface a {
        void a();

        void b();
    }

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/ReportFragment$b.class */
    static final class b implements Application.ActivityLifecycleCallbacks {
        b() {
        }

        static void registerIn(Activity activity) {
            activity.registerActivityLifecycleCallbacks(new b());
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPostCreated(Activity activity, Bundle bundle) {
            ReportFragment.a(activity, j.a.ON_CREATE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPostResumed(Activity activity) {
            ReportFragment.a(activity, j.a.ON_RESUME);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPostStarted(Activity activity) {
            ReportFragment.a(activity, j.a.ON_START);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPreDestroyed(Activity activity) {
            ReportFragment.a(activity, j.a.ON_DESTROY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPrePaused(Activity activity) {
            ReportFragment.a(activity, j.a.ON_PAUSE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPreStopped(Activity activity) {
            ReportFragment.a(activity, j.a.ON_STOP);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
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

    public static void a(Activity activity) {
        if (Build.VERSION.SDK_INT >= 29) {
            b.registerIn(activity);
        }
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new ReportFragment(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    static void a(Activity activity, j.a aVar) {
        if (activity instanceof q) {
            ((q) activity).a().handleLifecycleEvent(aVar);
        } else if (activity instanceof p) {
            j lifecycle = ((p) activity).getLifecycle();
            if (lifecycle instanceof LifecycleRegistry) {
                ((LifecycleRegistry) lifecycle).handleLifecycleEvent(aVar);
            }
        }
    }

    private void a(j.a aVar) {
        if (Build.VERSION.SDK_INT < 29) {
            a(getActivity(), aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ReportFragment b(Activity activity) {
        return (ReportFragment) activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag");
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        a(j.a.ON_CREATE);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        a(j.a.ON_DESTROY);
        this.f2547a = null;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        a(j.a.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        a aVar = this.f2547a;
        if (aVar != null) {
            aVar.b();
        }
        a(j.a.ON_RESUME);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        a aVar = this.f2547a;
        if (aVar != null) {
            aVar.a();
        }
        a(j.a.ON_START);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        a(j.a.ON_STOP);
    }
}
