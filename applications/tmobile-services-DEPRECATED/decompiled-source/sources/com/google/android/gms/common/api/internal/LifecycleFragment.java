package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/LifecycleFragment.class */
public interface LifecycleFragment {
    @KeepForSdk
    /* renamed from: I */
    <T extends LifecycleCallback> T mo14644I(String str, Class<T> cls);

    @KeepForSdk
    /* renamed from: L */
    Activity mo14642L();

    @KeepForSdk
    /* renamed from: g */
    void mo14641g(String str, @NonNull LifecycleCallback lifecycleCallback);

    @KeepForSdk
    void startActivityForResult(Intent intent, int i);
}
