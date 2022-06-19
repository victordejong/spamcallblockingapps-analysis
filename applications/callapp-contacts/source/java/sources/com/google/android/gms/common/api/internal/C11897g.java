package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.ContextWrapper;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.common.api.internal.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/g.class */
public final class C11897g {

    /* renamed from: a */
    final Object f39364a;

    public C11897g(Activity activity) {
        C12045o.m19161a(activity, "Activity must not be null");
        this.f39364a = activity;
    }

    public C11897g(ContextWrapper contextWrapper) {
        throw new UnsupportedOperationException();
    }
}
