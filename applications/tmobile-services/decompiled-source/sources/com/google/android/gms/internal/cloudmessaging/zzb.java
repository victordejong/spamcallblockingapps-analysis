package com.google.android.gms.internal.cloudmessaging;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/cloudmessaging/zzb.class */
public interface zzb {
    /* renamed from: a */
    ExecutorService mo14100a(ThreadFactory threadFactory, int i);

    /* renamed from: b */
    ScheduledExecutorService mo14099b(int i, ThreadFactory threadFactory, int i2);
}
