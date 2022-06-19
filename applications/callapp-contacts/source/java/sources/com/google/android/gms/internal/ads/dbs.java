package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dbs.class */
public interface dbs extends ExecutorService {
    /* renamed from: a */
    dbt<?> mo16891a(Runnable runnable);

    /* renamed from: a */
    <T> dbt<T> mo16890a(Callable<T> callable);
}
