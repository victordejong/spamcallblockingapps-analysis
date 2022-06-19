package com.google.android.gms.internal.ads;

import android.view.Surface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dtj.class */
public final class dtj implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Surface f15676a;

    /* renamed from: b */
    private final /* synthetic */ dtd f15677b;

    public dtj(dtd dtdVar, Surface surface) {
        this.f15677b = dtdVar;
        this.f15676a = surface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dte dteVar;
        dteVar = this.f15677b.f15664b;
        dteVar.mo8632a(this.f15676a);
    }
}
