package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/edh.class */
final class edh implements ThreadFactory {

    /* renamed from: a */
    private final /* synthetic */ String f48753a;

    public edh(String str) {
        this.f48753a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, this.f48753a);
    }
}
