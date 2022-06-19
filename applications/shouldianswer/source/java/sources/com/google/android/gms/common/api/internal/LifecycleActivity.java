package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.ContextWrapper;
import androidx.fragment.app.ActivityC0711c;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/LifecycleActivity.class */
public class LifecycleActivity {
    private final Object zzbd;

    public LifecycleActivity(Activity activity) {
        Preconditions.checkNotNull(activity, "Activity must not be null");
        this.zzbd = activity;
    }

    public LifecycleActivity(ContextWrapper contextWrapper) {
        throw new UnsupportedOperationException();
    }

    public Activity asActivity() {
        return (Activity) this.zzbd;
    }

    public ActivityC0711c asFragmentActivity() {
        return (ActivityC0711c) this.zzbd;
    }

    public Object asObject() {
        return this.zzbd;
    }

    public boolean isChimera() {
        return false;
    }

    public boolean isSupport() {
        return this.zzbd instanceof ActivityC0711c;
    }

    public final boolean zzh() {
        return this.zzbd instanceof Activity;
    }
}
