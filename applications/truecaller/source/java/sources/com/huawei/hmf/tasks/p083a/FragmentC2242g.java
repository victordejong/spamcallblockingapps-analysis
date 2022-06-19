package com.huawei.hmf.tasks.p083a;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import com.huawei.hmf.tasks.ExecuteResult;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
/* renamed from: com.huawei.hmf.tasks.a.g */
/* loaded from: classes3-dex2jar.jar:com/huawei/hmf/tasks/a/g.class */
public final class FragmentC2242g extends Fragment {

    /* renamed from: b */
    private static final WeakHashMap<Activity, WeakReference<FragmentC2242g>> f7232b = new WeakHashMap<>();

    /* renamed from: a */
    private final List<WeakReference<ExecuteResult<?>>> f7233a = new ArrayList();

    /* renamed from: a */
    private static FragmentC2242g m38203a(Activity activity) {
        FragmentC2242g fragmentC2242g;
        FragmentC2242g fragmentC2242g2;
        ClassCastException e;
        WeakHashMap<Activity, WeakReference<FragmentC2242g>> weakHashMap = f7232b;
        WeakReference<FragmentC2242g> weakReference = weakHashMap.get(activity);
        if (weakReference == null || weakReference.get() == null) {
            FragmentManager fragmentManager = activity.getFragmentManager();
            try {
                fragmentC2242g2 = (FragmentC2242g) fragmentManager.findFragmentByTag("com.huawei.hmf.tasks.lifecycle_fragment_tag");
                if (fragmentC2242g2 == null) {
                    try {
                        fragmentC2242g2 = m38201a(fragmentManager);
                    } catch (ClassCastException e2) {
                        e = e2;
                        e.getMessage();
                        fragmentC2242g = fragmentC2242g2;
                        return fragmentC2242g;
                    }
                }
                try {
                    weakHashMap.put(activity, new WeakReference<>(fragmentC2242g2));
                } catch (ClassCastException e3) {
                    e = e3;
                    e.getMessage();
                    fragmentC2242g = fragmentC2242g2;
                    return fragmentC2242g;
                }
            } catch (ClassCastException e4) {
                e = e4;
                fragmentC2242g2 = null;
            }
            fragmentC2242g = fragmentC2242g2;
        } else {
            fragmentC2242g = weakReference.get();
        }
        return fragmentC2242g;
    }

    /* renamed from: a */
    private static FragmentC2242g m38201a(FragmentManager fragmentManager) {
        FragmentC2242g fragmentC2242g;
        Exception e;
        FragmentC2242g fragmentC2242g2;
        try {
            fragmentC2242g = new FragmentC2242g();
            try {
                fragmentManager.beginTransaction().add(fragmentC2242g, "com.huawei.hmf.tasks.lifecycle_fragment_tag").commitAllowingStateLoss();
            } catch (Exception e2) {
                e = e2;
                fragmentC2242g2 = fragmentC2242g;
                e.getMessage();
                fragmentC2242g = fragmentC2242g2;
                return fragmentC2242g;
            }
        } catch (Exception e3) {
            e = e3;
            fragmentC2242g2 = null;
        }
        return fragmentC2242g;
    }

    /* renamed from: a */
    public static void m38202a(Activity activity, ExecuteResult executeResult) {
        FragmentC2242g m38203a = m38203a(activity);
        if (m38203a != null) {
            synchronized (m38203a.f7233a) {
                m38203a.f7233a.add(new WeakReference<>(executeResult));
            }
        }
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        synchronized (this.f7233a) {
            for (WeakReference<ExecuteResult<?>> weakReference : this.f7233a) {
                ExecuteResult<?> executeResult = weakReference.get();
                if (executeResult != null) {
                    executeResult.cancel();
                }
            }
            this.f7233a.clear();
        }
    }
}
