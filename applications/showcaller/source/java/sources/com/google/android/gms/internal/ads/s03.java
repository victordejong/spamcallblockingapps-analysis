package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/s03.class */
public interface s03 extends ExecutorService {
    /* renamed from: a */
    <T> r03<T> mo11185a(Callable<T> callable);

    /* renamed from: d */
    r03<?> mo11184d(Runnable runnable);
}
