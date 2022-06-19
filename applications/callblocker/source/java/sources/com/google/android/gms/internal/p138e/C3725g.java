package com.google.android.gms.internal.p138e;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
/* renamed from: com.google.android.gms.internal.e.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/e/g.class */
final class C3725g implements AbstractC3724f {
    /* JADX INFO: Access modifiers changed from: private */
    public C3725g() {
    }

    @Override // com.google.android.gms.internal.p138e.AbstractC3724f
    /* renamed from: a */
    public final ScheduledExecutorService mo6511a(int i, int i2) {
        return Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1));
    }
}
