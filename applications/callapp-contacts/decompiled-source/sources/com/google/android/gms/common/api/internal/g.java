package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.ContextWrapper;
import com.google.android.gms.common.internal.o;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    final Object f22738a;

    public g(Activity activity) {
        o.a(activity, "Activity must not be null");
        this.f22738a = activity;
    }

    public g(ContextWrapper contextWrapper) {
        throw new UnsupportedOperationException();
    }
}
