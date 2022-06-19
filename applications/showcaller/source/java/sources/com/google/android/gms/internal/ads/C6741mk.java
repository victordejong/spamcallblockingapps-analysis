package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;
/* renamed from: com.google.android.gms.internal.ads.mk */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mk.class */
public final class C6741mk implements ValueCallback<String> {

    /* renamed from: a */
    final /* synthetic */ RunnableC6815ok f26635a;

    public C6741mk(RunnableC6815ok runnableC6815ok) {
        this.f26635a = runnableC6815ok;
    }

    /* renamed from: a */
    public final void onReceiveValue(String str) {
        RunnableC6815ok runnableC6815ok = this.f26635a;
        runnableC6815ok.f27585h.m11864d(runnableC6815ok.f27582e, runnableC6815ok.f27583f, str, runnableC6815ok.f27584g);
    }
}
