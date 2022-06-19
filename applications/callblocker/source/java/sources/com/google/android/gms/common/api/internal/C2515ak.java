package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.util.p133a.ThreadFactoryC2703b;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.common.api.internal.ak */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ak.class */
public final class C2515ak {

    /* renamed from: a */
    private static final ExecutorService f7094a = new ThreadPoolExecutor(0, 4, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC2703b("GAC_Transform"));

    /* renamed from: a */
    public static ExecutorService m14391a() {
        return f7094a;
    }
}
