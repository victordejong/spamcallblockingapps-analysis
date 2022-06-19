package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Build;
import android.os.Bundle;
import androidx.lifecycle.AbstractC0516f;
/* renamed from: androidx.lifecycle.t */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/t.class */
public class FragmentC0538t extends Fragment {

    /* renamed from: b */
    public static final /* synthetic */ int f2061b = 0;

    /* renamed from: a */
    public AbstractC0539a f2062a;

    /* renamed from: androidx.lifecycle.t$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/t$a.class */
    public interface AbstractC0539a {
    }

    /* renamed from: androidx.lifecycle.t$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/t$b.class */
    public static class C0540b implements Application.ActivityLifecycleCallbacks {
        public static void registerIn(Activity activity) {
            activity.registerActivityLifecycleCallbacks(new C0540b());
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
            FragmentC0538t.m7977a(activity, AbstractC0516f.EnumC0518b.ON_CREATE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            FragmentC0538t.m7977a(activity, AbstractC0516f.EnumC0518b.ON_RESUME);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            FragmentC0538t.m7977a(activity, AbstractC0516f.EnumC0518b.ON_START);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreDestroyed(Activity activity) {
            FragmentC0538t.m7977a(activity, AbstractC0516f.EnumC0518b.ON_DESTROY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPrePaused(Activity activity) {
            FragmentC0538t.m7977a(activity, AbstractC0516f.EnumC0518b.ON_PAUSE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreStopped(Activity activity) {
            FragmentC0538t.m7977a(activity, AbstractC0516f.EnumC0518b.ON_STOP);
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
    public static void m7977a(Activity activity, AbstractC0516f.EnumC0518b enumC0518b) {
        if (activity instanceof AbstractC0527l) {
            C0525k lifecycle = ((AbstractC0527l) activity).getLifecycle();
            lifecycle.m7989d("handleLifecycleEvent");
            lifecycle.m7986g(enumC0518b.m7994a());
        } else if (!(activity instanceof AbstractC0524j)) {
        } else {
            AbstractC0516f lifecycle2 = ((AbstractC0524j) activity).getLifecycle();
            if (!(lifecycle2 instanceof C0525k)) {
                return;
            }
            C0525k c0525k = (C0525k) lifecycle2;
            c0525k.m7989d("handleLifecycleEvent");
            c0525k.m7986g(enumC0518b.m7994a());
        }
    }

    /* renamed from: c */
    public static void m7975c(Activity activity) {
        if (Build.VERSION.SDK_INT >= 29) {
            C0540b.registerIn(activity);
        }
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new FragmentC0538t(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    /* renamed from: b */
    public final void m7976b(AbstractC0516f.EnumC0518b enumC0518b) {
        if (Build.VERSION.SDK_INT < 29) {
            m7977a(getActivity(), enumC0518b);
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        m7976b(AbstractC0516f.EnumC0518b.ON_CREATE);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        m7976b(AbstractC0516f.EnumC0518b.ON_DESTROY);
        this.f2062a = null;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        m7976b(AbstractC0516f.EnumC0518b.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        AbstractC0539a abstractC0539a = this.f2062a;
        if (abstractC0539a != null) {
            C0533r.this.m7979a();
        }
        m7976b(AbstractC0516f.EnumC0518b.ON_RESUME);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        AbstractC0539a abstractC0539a = this.f2062a;
        if (abstractC0539a != null) {
            C0533r.this.m7978c();
        }
        m7976b(AbstractC0516f.EnumC0518b.ON_START);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        m7976b(AbstractC0516f.EnumC0518b.ON_STOP);
    }
}
