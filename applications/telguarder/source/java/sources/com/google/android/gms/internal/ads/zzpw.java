package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzpw.class */
final class zzpw implements ThreadFactory {
    private final /* synthetic */ String zzbks;

    public zzpw(String str) {
        this.zzbks = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, this.zzbks);
    }
}
