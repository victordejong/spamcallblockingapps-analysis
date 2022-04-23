package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zg.class */
public final class zg extends ScheduledThreadPoolExecutor {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zg(int i, ThreadFactory threadFactory) {
        super(3, threadFactory);
    }

    @Override // java.util.concurrent.ScheduledThreadPoolExecutor, java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        cxd cxdVar;
        cxdVar = cxf.f26531b;
        super.execute(cxdVar.a(runnable));
    }
}
