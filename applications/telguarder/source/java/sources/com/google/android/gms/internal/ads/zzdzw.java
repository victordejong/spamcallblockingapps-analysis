package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdzw.class */
public interface zzdzw<V> extends Future<V> {
    void addListener(Runnable runnable, Executor executor);
}
