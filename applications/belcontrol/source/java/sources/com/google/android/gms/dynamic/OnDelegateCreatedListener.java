package com.google.android.gms.dynamic;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamic.LifecycleDelegate;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/OnDelegateCreatedListener.class */
public interface OnDelegateCreatedListener<T extends LifecycleDelegate> {
    @KeepForSdk
    void onDelegateCreated(@RecentlyNonNull T t);
}
