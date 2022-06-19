package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
/* renamed from: com.google.android.gms.common.api.internal.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/h.class */
public interface AbstractC6031h {
    /* renamed from: b */
    void mo17246b(@RecentlyNonNull String str, @RecentlyNonNull LifecycleCallback lifecycleCallback);

    @RecentlyNullable
    /* renamed from: d */
    <T extends LifecycleCallback> T mo17244d(@RecentlyNonNull String str, @RecentlyNonNull Class<T> cls);

    @RecentlyNonNull
    /* renamed from: e */
    Activity mo17243e();

    void startActivityForResult(@RecentlyNonNull Intent intent, int i);
}
