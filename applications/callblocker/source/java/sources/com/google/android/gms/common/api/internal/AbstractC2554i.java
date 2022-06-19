package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
/* renamed from: com.google.android.gms.common.api.internal.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/i.class */
public interface AbstractC2554i {
    /* renamed from: a */
    Activity mo14242a();

    /* renamed from: a */
    <T extends LifecycleCallback> T mo14240a(String str, Class<T> cls);

    /* renamed from: a */
    void mo14241a(String str, LifecycleCallback lifecycleCallback);

    void startActivityForResult(Intent intent, int i);
}
