package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
/* renamed from: com.google.android.gms.internal.ads.jl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jl.class */
final /* synthetic */ class RunnableC1805jl implements Runnable {

    /* renamed from: b */
    private final ol f6901b;

    /* renamed from: c */
    private final Bitmap f6902c;

    RunnableC1805jl(ol olVar, Bitmap bitmap) {
        this.f6901b = olVar;
        this.f6902c = bitmap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6901b.f(this.f6902c);
    }
}
