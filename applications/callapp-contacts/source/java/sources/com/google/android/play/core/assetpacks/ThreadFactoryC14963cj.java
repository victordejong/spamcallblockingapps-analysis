package com.google.android.play.core.assetpacks;

import java.util.concurrent.ThreadFactory;
/* renamed from: com.google.android.play.core.assetpacks.cj */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/cj.class */
final /* synthetic */ class ThreadFactoryC14963cj implements ThreadFactory {

    /* renamed from: c */
    private final /* synthetic */ int f54632c = 0;

    /* renamed from: b */
    static final ThreadFactory f54631b = new ThreadFactoryC14963cj(null);

    /* renamed from: a */
    static final ThreadFactory f54630a = new ThreadFactoryC14963cj();

    private ThreadFactoryC14963cj() {
    }

    private ThreadFactoryC14963cj(byte[] bArr) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return this.f54632c != 0 ? new Thread(runnable, "AssetPackBackgroundExecutor") : new Thread(runnable, "UpdateListenerExecutor");
    }
}
