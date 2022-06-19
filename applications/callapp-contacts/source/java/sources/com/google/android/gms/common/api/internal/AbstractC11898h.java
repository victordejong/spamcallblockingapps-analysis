package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
/* renamed from: com.google.android.gms.common.api.internal.h */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/h.class */
public interface AbstractC11898h {
    /* renamed from: a */
    Activity mo19299a();

    /* renamed from: a */
    <T extends LifecycleCallback> T mo19295a(String str, Class<T> cls);

    /* renamed from: a */
    void mo19296a(String str, LifecycleCallback lifecycleCallback);

    void startActivityForResult(Intent intent, int i);
}
