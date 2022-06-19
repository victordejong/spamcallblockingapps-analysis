package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
/* renamed from: com.google.android.gms.internal.ads.zg */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zg.class */
public final class C13094zg extends ScheduledThreadPoolExecutor {
    public C13094zg(int i, ThreadFactory threadFactory) {
        super(3, threadFactory);
    }

    @Override // java.util.concurrent.ScheduledThreadPoolExecutor, java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        cxd cxdVar;
        cxdVar = cxf.f46722b;
        super.execute(cxdVar.mo17082a(runnable));
    }
}
