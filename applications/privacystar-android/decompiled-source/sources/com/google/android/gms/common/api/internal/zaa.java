package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.support.annotation.MainThread;
import android.support.annotation.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaa.class */
public final class zaa extends ActivityLifecycleObserver {
    private final WeakReference<C2903zaa> zack;

    @VisibleForTesting(otherwise = 2)
    /* renamed from: com.google.android.gms.common.api.internal.zaa$zaa  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaa$zaa.class */
    static class C2903zaa extends LifecycleCallback {
        private List<Runnable> zacl = new ArrayList();

        private C2903zaa(LifecycleFragment lifecycleFragment) {
            super(lifecycleFragment);
            this.mLifecycleFragment.addCallback("LifecycleObserverOnStop", this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static C2903zaa zaa(Activity activity) {
            C2903zaa zaaVar;
            synchronized (activity) {
                LifecycleFragment fragment = getFragment(activity);
                C2903zaa zaaVar2 = (C2903zaa) fragment.getCallbackOrNull("LifecycleObserverOnStop", C2903zaa.class);
                zaaVar = zaaVar2;
                if (zaaVar2 == null) {
                    zaaVar = new C2903zaa(fragment);
                }
            }
            return zaaVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zaa(Runnable runnable) {
            synchronized (this) {
                this.zacl.add(runnable);
            }
        }

        @Override // com.google.android.gms.common.api.internal.LifecycleCallback
        @MainThread
        public void onStop() {
            List<Runnable> list;
            synchronized (this) {
                list = this.zacl;
                this.zacl = new ArrayList();
            }
            for (Runnable runnable : list) {
                runnable.run();
            }
        }
    }

    public zaa(Activity activity) {
        this(C2903zaa.zaa(activity));
    }

    @VisibleForTesting(otherwise = 2)
    private zaa(C2903zaa zaaVar) {
        this.zack = new WeakReference<>(zaaVar);
    }

    @Override // com.google.android.gms.common.api.internal.ActivityLifecycleObserver
    public final ActivityLifecycleObserver onStopCallOnce(Runnable runnable) {
        C2903zaa zaaVar = this.zack.get();
        if (zaaVar == null) {
            throw new IllegalStateException("The target activity has already been GC'd");
        }
        zaaVar.zaa(runnable);
        return this;
    }
}
