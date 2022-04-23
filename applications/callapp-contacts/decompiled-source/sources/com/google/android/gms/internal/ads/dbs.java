package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dbs.class */
public interface dbs extends ExecutorService {
    dbt<?> a(Runnable runnable);

    <T> dbt<T> a(Callable<T> callable);
}
