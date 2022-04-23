package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cxa.class */
public interface cxa {
    ExecutorService a();

    ScheduledExecutorService a(ThreadFactory threadFactory);

    ExecutorService b();
}
