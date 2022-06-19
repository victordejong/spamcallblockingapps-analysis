package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dbt.class */
public interface dbt<V> extends Future<V> {
    void addListener(Runnable runnable, Executor executor);
}
