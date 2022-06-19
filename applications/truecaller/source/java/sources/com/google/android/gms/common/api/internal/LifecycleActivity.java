package com.google.android.gms.common.api.internal;

import android.app.Activity;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/LifecycleActivity.class */
public class LifecycleActivity {

    /* renamed from: a */
    public final Object f5761a;

    public LifecycleActivity(Activity activity) {
        Preconditions.m38897k(activity, "Activity must not be null");
        this.f5761a = activity;
    }
}
