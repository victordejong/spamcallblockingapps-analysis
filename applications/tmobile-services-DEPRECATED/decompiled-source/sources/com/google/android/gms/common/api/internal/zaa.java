package com.google.android.gms.common.api.internal;

import androidx.annotation.MainThread;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaa.class */
public final class zaa extends ActivityLifecycleObserver {

    @VisibleForTesting
    /* renamed from: com.google.android.gms.common.api.internal.zaa$zaa  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaa$zaa.class */
    static class C2478zaa extends LifecycleCallback {

        /* renamed from: g */
        private List<Runnable> f7126g;

        @Override // com.google.android.gms.common.api.internal.LifecycleCallback
        @MainThread
        /* renamed from: k */
        public void mo10770k() {
            List<Runnable> list;
            synchronized (this) {
                list = this.f7126g;
                this.f7126g = new ArrayList();
            }
            for (Runnable runnable : list) {
                runnable.run();
            }
        }
    }
}
