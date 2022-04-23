package com.google.android.gms.internal.b;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/b/b.class */
public interface b {
    ExecutorService a(ThreadFactory threadFactory);

    ScheduledExecutorService b(ThreadFactory threadFactory);
}
