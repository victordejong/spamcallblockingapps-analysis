package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.ContextWrapper;
import androidx.annotation.RecentlyNonNull;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/LifecycleActivity.class */
public class LifecycleActivity {
    private final Object zza;

    public LifecycleActivity(@RecentlyNonNull Activity activity) {
        Preconditions.checkNotNull(activity, "Activity must not be null");
        this.zza = activity;
    }

    @KeepForSdk
    public LifecycleActivity(@RecentlyNonNull ContextWrapper contextWrapper) {
        throw new UnsupportedOperationException();
    }

    @KeepForSdk
    public Activity asActivity() {
        return (Activity) this.zza;
    }

    @KeepForSdk
    public FragmentActivity asFragmentActivity() {
        return (FragmentActivity) this.zza;
    }

    @KeepForSdk
    public Object asObject() {
        return this.zza;
    }

    @KeepForSdk
    public boolean isChimera() {
        return false;
    }

    @KeepForSdk
    public boolean isSupport() {
        return this.zza instanceof FragmentActivity;
    }

    public final boolean zza() {
        return this.zza instanceof Activity;
    }
}
