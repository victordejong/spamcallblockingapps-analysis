package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dsq.class */
final class dsq implements ThreadFactory {

    /* renamed from: a */
    private final /* synthetic */ String f15590a;

    public dsq(String str) {
        this.f15590a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, this.f15590a);
    }
}
