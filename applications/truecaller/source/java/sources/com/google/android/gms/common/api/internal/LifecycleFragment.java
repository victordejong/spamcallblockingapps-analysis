package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/LifecycleFragment.class */
public interface LifecycleFragment {
    @KeepForSdk
    /* renamed from: Dh */
    Activity mo38923Dh();

    @KeepForSdk
    /* renamed from: Gm */
    void mo38922Gm(String str, LifecycleCallback lifecycleCallback);

    @KeepForSdk
    /* renamed from: q9 */
    <T extends LifecycleCallback> T mo38921q9(String str, Class<T> cls);

    @KeepForSdk
    void startActivityForResult(Intent intent, int i);
}
