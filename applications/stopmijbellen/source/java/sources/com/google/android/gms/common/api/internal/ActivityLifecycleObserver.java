package com.google.android.gms.common.api.internal;

import android.app.Activity;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ActivityLifecycleObserver.class */
public abstract class ActivityLifecycleObserver {
    @RecentlyNonNull
    @KeepForSdk
    /* renamed from: of */
    public static final ActivityLifecycleObserver m4816of(@RecentlyNonNull Activity activity) {
        return new zab(zaa.zaa(activity));
    }

    @RecentlyNonNull
    @KeepForSdk
    public abstract ActivityLifecycleObserver onStopCallOnce(@RecentlyNonNull Runnable runnable);
}
