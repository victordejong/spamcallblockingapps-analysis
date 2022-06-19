package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.ContextWrapper;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.io.FileDescriptor;
import java.io.PrintWriter;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/LifecycleCallback.class */
public class LifecycleCallback {
    @RecentlyNonNull
    @KeepForSdk
    public final LifecycleFragment mLifecycleFragment;

    @KeepForSdk
    public LifecycleCallback(@RecentlyNonNull LifecycleFragment lifecycleFragment) {
        this.mLifecycleFragment = lifecycleFragment;
    }

    @Keep
    private static LifecycleFragment getChimeraLifecycleFragmentImpl(LifecycleActivity lifecycleActivity) {
        throw new IllegalStateException("Method not available in SDK.");
    }

    @RecentlyNonNull
    @KeepForSdk
    public static LifecycleFragment getFragment(@RecentlyNonNull Activity activity) {
        return getFragment(new LifecycleActivity(activity));
    }

    @RecentlyNonNull
    @KeepForSdk
    public static LifecycleFragment getFragment(@RecentlyNonNull ContextWrapper contextWrapper) {
        throw new UnsupportedOperationException();
    }

    @RecentlyNonNull
    @KeepForSdk
    public static LifecycleFragment getFragment(@RecentlyNonNull LifecycleActivity lifecycleActivity) {
        if (lifecycleActivity.isSupport()) {
            return zzd.zza(lifecycleActivity.asFragmentActivity());
        }
        if (!lifecycleActivity.zza()) {
            throw new IllegalArgumentException("Can't get fragment for unexpected activity.");
        }
        return zzb.zza(lifecycleActivity.asActivity());
    }

    @KeepForSdk
    public void dump(@RecentlyNonNull String str, @RecentlyNonNull FileDescriptor fileDescriptor, @RecentlyNonNull PrintWriter printWriter, @RecentlyNonNull String[] strArr) {
    }

    @RecentlyNonNull
    @KeepForSdk
    public Activity getActivity() {
        return this.mLifecycleFragment.getLifecycleActivity();
    }

    @KeepForSdk
    public void onActivityResult(int i, int i2, @RecentlyNonNull Intent intent) {
    }

    @KeepForSdk
    public void onCreate(Bundle bundle) {
    }

    @KeepForSdk
    public void onDestroy() {
    }

    @KeepForSdk
    public void onResume() {
    }

    @KeepForSdk
    public void onSaveInstanceState(@RecentlyNonNull Bundle bundle) {
    }

    @KeepForSdk
    public void onStart() {
    }

    @KeepForSdk
    public void onStop() {
    }
}
