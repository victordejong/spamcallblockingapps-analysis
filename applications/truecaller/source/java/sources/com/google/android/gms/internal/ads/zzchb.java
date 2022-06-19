package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzchb.class */
public final class zzchb extends ScheduledThreadPoolExecutor {
    public zzchb(int i, ThreadFactory threadFactory) {
        super(3, threadFactory);
    }
}
