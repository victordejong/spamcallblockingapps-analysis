package com.google.android.play.core.assetpacks;

import java.util.concurrent.ThreadFactory;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/cj.class */
final /* synthetic */ class cj implements ThreadFactory {

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ int f31247c = 0;

    /* renamed from: b  reason: collision with root package name */
    static final ThreadFactory f31246b = new cj(null);

    /* renamed from: a  reason: collision with root package name */
    static final ThreadFactory f31245a = new cj();

    private cj() {
    }

    private cj(byte[] bArr) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return this.f31247c != 0 ? new Thread(runnable, "AssetPackBackgroundExecutor") : new Thread(runnable, "UpdateListenerExecutor");
    }
}
