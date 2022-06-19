package com.google.android.gms.common.api.internal;

import android.app.Activity;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaa.class */
public final class zaa extends ActivityLifecycleObserver {
    private final WeakReference<C3150zaa> zacl;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.common.api.internal.zaa$zaa */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaa$zaa.class */
    public static class C3150zaa extends LifecycleCallback {
        private List<Runnable> zacm = new ArrayList();

        private C3150zaa(LifecycleFragment lifecycleFragment) {
            super(lifecycleFragment);
            this.mLifecycleFragment.addCallback("LifecycleObserverOnStop", this);
        }

        public static C3150zaa zaa(Activity activity) {
            C3150zaa c3150zaa;
            synchronized (activity) {
                LifecycleFragment fragment = getFragment(activity);
                C3150zaa c3150zaa2 = (C3150zaa) fragment.getCallbackOrNull("LifecycleObserverOnStop", C3150zaa.class);
                c3150zaa = c3150zaa2;
                if (c3150zaa2 == null) {
                    c3150zaa = new C3150zaa(fragment);
                }
            }
            return c3150zaa;
        }

        public final void zaa(Runnable runnable) {
            synchronized (this) {
                this.zacm.add(runnable);
            }
        }

        @Override // com.google.android.gms.common.api.internal.LifecycleCallback
        public void onStop() {
            List<Runnable> list;
            synchronized (this) {
                list = this.zacm;
                this.zacm = new ArrayList();
            }
            for (Runnable runnable : list) {
                runnable.run();
            }
        }
    }

    public zaa(Activity activity) {
        this(C3150zaa.zaa(activity));
    }

    private zaa(C3150zaa c3150zaa) {
        this.zacl = new WeakReference<>(c3150zaa);
    }

    @Override // com.google.android.gms.common.api.internal.ActivityLifecycleObserver
    public final ActivityLifecycleObserver onStopCallOnce(Runnable runnable) {
        C3150zaa c3150zaa = this.zacl.get();
        if (c3150zaa != null) {
            c3150zaa.zaa(runnable);
            return this;
        }
        throw new IllegalStateException("The target activity has already been GC'd");
    }
}
