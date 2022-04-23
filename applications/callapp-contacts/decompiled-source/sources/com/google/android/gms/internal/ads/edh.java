package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/edh.class */
final class edh implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f27672a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public edh(String str) {
        this.f27672a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, this.f27672a);
    }
}
