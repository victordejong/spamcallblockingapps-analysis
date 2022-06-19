package com.google.android.play.core.assetpacks;

import java.util.concurrent.ThreadFactory;
/* renamed from: com.google.android.play.core.assetpacks.h2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/h2.class */
final /* synthetic */ class ThreadFactoryC8393h2 implements ThreadFactory {

    /* renamed from: c */
    private final /* synthetic */ int f37782c = 0;

    /* renamed from: b */
    static final ThreadFactory f37781b = new ThreadFactoryC8393h2(null);

    /* renamed from: a */
    static final ThreadFactory f37780a = new ThreadFactoryC8393h2();

    private ThreadFactoryC8393h2() {
    }

    private ThreadFactoryC8393h2(byte[] bArr) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return this.f37782c != 0 ? new Thread(runnable, "AssetPackBackgroundExecutor") : new Thread(runnable, "UpdateListenerExecutor");
    }
}
