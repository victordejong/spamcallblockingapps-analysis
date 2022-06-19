package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/li0.class */
final class li0 extends ScheduledThreadPoolExecutor {
    public li0(int i, ThreadFactory threadFactory) {
        super(3, threadFactory);
    }
}
