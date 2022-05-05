package com.google.android.gms.common.api.internal;

import android.app.Activity;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/LifecycleActivity.class */
public class LifecycleActivity {

    /* renamed from: a */
    private final Object f7107a;

    public LifecycleActivity(Activity activity) {
        Preconditions.m14522l(activity, "Activity must not be null");
        this.f7107a = activity;
    }

    @KeepForSdk
    /* renamed from: a */
    public Activity m14885a() {
        return (Activity) this.f7107a;
    }

    @KeepForSdk
    /* renamed from: b */
    public FragmentActivity m14884b() {
        return (FragmentActivity) this.f7107a;
    }

    @KeepForSdk
    /* renamed from: c */
    public boolean m14883c() {
        return this.f7107a instanceof FragmentActivity;
    }

    /* renamed from: d */
    public final boolean m14882d() {
        return this.f7107a instanceof Activity;
    }
}
