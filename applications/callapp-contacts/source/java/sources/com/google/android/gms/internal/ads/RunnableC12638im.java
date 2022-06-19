package com.google.android.gms.internal.ads;

import android.os.Binder;
/* renamed from: com.google.android.gms.internal.ads.im */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/im.class */
public final class RunnableC12638im implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C12633ih f49374a;

    public RunnableC12638im(C12633ih c12633ih) {
        this.f49374a = c12633ih;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C12633ih c12633ih = this.f49374a;
        if (c12633ih.f49368a != null) {
            c12633ih.f49368a.disconnect();
            Binder.flushPendingCommands();
        }
    }
}
