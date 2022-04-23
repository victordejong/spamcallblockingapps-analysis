package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.support.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/LifecycleFragment.class */
public interface LifecycleFragment {
    @KeepForSdk
    void addCallback(String str, @NonNull LifecycleCallback lifecycleCallback);

    @KeepForSdk
    <T extends LifecycleCallback> T getCallbackOrNull(String str, Class<T> cls);

    @KeepForSdk
    Activity getLifecycleActivity();

    @KeepForSdk
    boolean isCreated();

    @KeepForSdk
    boolean isStarted();

    @KeepForSdk
    void startActivityForResult(Intent intent, int i);
}
