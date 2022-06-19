package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcjh.class */
final class zzcjh extends ScheduledThreadPoolExecutor {
    public zzcjh(int i, ThreadFactory threadFactory) {
        super(3, threadFactory);
    }
}
