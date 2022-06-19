package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.util.p354a.ThreadFactoryC12096b;
import com.google.android.gms.internal.base.C13159i;
import java.util.concurrent.ExecutorService;
/* renamed from: com.google.android.gms.common.api.internal.ax */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/ax.class */
public final class C11856ax {

    /* renamed from: a */
    private static final ExecutorService f39264a = C13159i.m13593a().mo13594a(new ThreadFactoryC12096b("GAC_Transform"));

    /* renamed from: a */
    public static ExecutorService m19398a() {
        return f39264a;
    }
}
