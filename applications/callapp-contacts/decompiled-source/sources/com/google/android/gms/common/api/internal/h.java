package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/h.class */
public interface h {
    Activity a();

    <T extends LifecycleCallback> T a(String str, Class<T> cls);

    void a(String str, LifecycleCallback lifecycleCallback);

    void startActivityForResult(Intent intent, int i);
}
