package com.google.android.gms.common.api.internal;

import android.app.Activity;
import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ActivityLifecycleObserver.class */
public abstract class ActivityLifecycleObserver {
    @KeepForSdk
    /* renamed from: of */
    public static final ActivityLifecycleObserver m4440of(Activity activity) {
        return new zaa(activity);
    }

    @KeepForSdk
    public abstract ActivityLifecycleObserver onStopCallOnce(Runnable runnable);
}
