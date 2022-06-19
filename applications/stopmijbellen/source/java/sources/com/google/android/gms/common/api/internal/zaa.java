package com.google.android.gms.common.api.internal;

import android.app.Activity;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaa.class */
final class zaa extends LifecycleCallback {
    private List<Runnable> zaa = new ArrayList();

    private zaa(LifecycleFragment lifecycleFragment) {
        super(lifecycleFragment);
        this.mLifecycleFragment.addCallback("LifecycleObserverOnStop", this);
    }

    public static /* synthetic */ zaa zaa(Activity activity) {
        zaa zaaVar;
        synchronized (activity) {
            LifecycleFragment fragment = LifecycleCallback.getFragment(activity);
            zaa zaaVar2 = (zaa) fragment.getCallbackOrNull("LifecycleObserverOnStop", zaa.class);
            zaaVar = zaaVar2;
            if (zaaVar2 == null) {
                zaaVar = new zaa(fragment);
            }
        }
        return zaaVar;
    }

    public final void zac(Runnable runnable) {
        synchronized (this) {
            this.zaa.add(runnable);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onStop() {
        List<Runnable> list;
        synchronized (this) {
            list = this.zaa;
            this.zaa = new ArrayList();
        }
        for (Runnable runnable : list) {
            runnable.run();
        }
    }
}
