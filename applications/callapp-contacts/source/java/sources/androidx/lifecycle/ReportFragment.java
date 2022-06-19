package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Build;
import android.os.Bundle;
import androidx.lifecycle.AbstractC1253j;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/ReportFragment.class */
public class ReportFragment extends Fragment {

    /* renamed from: a */
    AbstractC1223a f4798a;

    /* renamed from: androidx.lifecycle.ReportFragment$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/ReportFragment$a.class */
    interface AbstractC1223a {
        /* renamed from: a */
        void mo43279a();

        /* renamed from: b */
        void mo43278b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.lifecycle.ReportFragment$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/ReportFragment$b.class */
    public static final class C1224b implements Application.ActivityLifecycleCallbacks {
        C1224b() {
        }

        static void registerIn(Activity activity) {
            activity.registerActivityLifecycleCallbacks(new C1224b());
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
            ReportFragment.m43324a(activity, AbstractC1253j.EnumC1255a.ON_CREATE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPostResumed(Activity activity) {
            ReportFragment.m43324a(activity, AbstractC1253j.EnumC1255a.ON_RESUME);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPostStarted(Activity activity) {
            ReportFragment.m43324a(activity, AbstractC1253j.EnumC1255a.ON_START);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPreDestroyed(Activity activity) {
            ReportFragment.m43324a(activity, AbstractC1253j.EnumC1255a.ON_DESTROY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPrePaused(Activity activity) {
            ReportFragment.m43324a(activity, AbstractC1253j.EnumC1255a.ON_PAUSE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPreStopped(Activity activity) {
            ReportFragment.m43324a(activity, AbstractC1253j.EnumC1255a.ON_STOP);
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

    /* renamed from: a */
    public static void m43325a(Activity activity) {
        if (Build.VERSION.SDK_INT >= 29) {
            C1224b.registerIn(activity);
        }
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new ReportFragment(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    /* renamed from: a */
    static void m43324a(Activity activity, AbstractC1253j.EnumC1255a enumC1255a) {
        if (activity instanceof AbstractC1264q) {
            ((AbstractC1264q) activity).m43294a().handleLifecycleEvent(enumC1255a);
        } else if (!(activity instanceof AbstractC1263p)) {
        } else {
            AbstractC1253j lifecycle = ((AbstractC1263p) activity).getLifecycle();
            if (!(lifecycle instanceof LifecycleRegistry)) {
                return;
            }
            ((LifecycleRegistry) lifecycle).handleLifecycleEvent(enumC1255a);
        }
    }

    /* renamed from: a */
    private void m43323a(AbstractC1253j.EnumC1255a enumC1255a) {
        if (Build.VERSION.SDK_INT < 29) {
            m43324a(getActivity(), enumC1255a);
        }
    }

    /* renamed from: b */
    public static ReportFragment m43322b(Activity activity) {
        return (ReportFragment) activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag");
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        m43323a(AbstractC1253j.EnumC1255a.ON_CREATE);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        m43323a(AbstractC1253j.EnumC1255a.ON_DESTROY);
        this.f4798a = null;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        m43323a(AbstractC1253j.EnumC1255a.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        AbstractC1223a abstractC1223a = this.f4798a;
        if (abstractC1223a != null) {
            abstractC1223a.mo43278b();
        }
        m43323a(AbstractC1253j.EnumC1255a.ON_RESUME);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        AbstractC1223a abstractC1223a = this.f4798a;
        if (abstractC1223a != null) {
            abstractC1223a.mo43279a();
        }
        m43323a(AbstractC1253j.EnumC1255a.ON_START);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        m43323a(AbstractC1253j.EnumC1255a.ON_STOP);
    }
}
