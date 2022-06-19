package com.google.android.gms.internal.base;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/base/zal.class */
public interface zal {
    ExecutorService zaa(int i, int i2);

    ExecutorService zab(int i, ThreadFactory threadFactory, int i2);

    ExecutorService zac(ThreadFactory threadFactory, int i);
}
