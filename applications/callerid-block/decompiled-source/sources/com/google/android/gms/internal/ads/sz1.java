package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sz1.class */
public interface sz1 extends ExecutorService {
    /* renamed from: a */
    <T> rz1<T> m5553a(Callable<T> callable);

    /* renamed from: e */
    rz1<?> m5552e(Runnable runnable);
}
