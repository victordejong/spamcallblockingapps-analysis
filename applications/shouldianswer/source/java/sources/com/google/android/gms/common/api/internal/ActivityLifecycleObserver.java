package com.google.android.gms.common.api.internal;

import android.app.Activity;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ActivityLifecycleObserver.class */
public abstract class ActivityLifecycleObserver {
    /* renamed from: of */
    public static final ActivityLifecycleObserver m3803of(Activity activity) {
        return new zaa(activity);
    }

    public abstract ActivityLifecycleObserver onStopCallOnce(Runnable runnable);
}
