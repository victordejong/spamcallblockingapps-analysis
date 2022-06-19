package com.google.android.gms.internal.p140g;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
/* renamed from: com.google.android.gms.internal.g.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/g/c.class */
final class C3736c implements AbstractC3735b {
    /* JADX INFO: Access modifiers changed from: private */
    public C3736c() {
    }

    @Override // com.google.android.gms.internal.p140g.AbstractC3735b
    /* renamed from: a */
    public final ScheduledExecutorService mo6505a(int i, ThreadFactory threadFactory, int i2) {
        return Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, threadFactory));
    }
}
