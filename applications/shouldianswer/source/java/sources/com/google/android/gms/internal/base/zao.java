package com.google.android.gms.internal.base;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/base/zao.class */
final class zao implements zal {
    /* JADX INFO: Access modifiers changed from: private */
    public zao() {
    }

    @Override // com.google.android.gms.internal.base.zal
    public final ExecutorService zaa(int i, ThreadFactory threadFactory, int i2) {
        return Executors.newFixedThreadPool(2, threadFactory);
    }
}
