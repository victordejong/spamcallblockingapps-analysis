package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.util.a.b;
import com.google.android.gms.internal.base.i;
import java.util.concurrent.ExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/ax.class */
public final class ax {

    /* renamed from: a  reason: collision with root package name */
    private static final ExecutorService f22667a = i.a().a(new b("GAC_Transform"));

    public static ExecutorService a() {
        return f22667a;
    }
}
