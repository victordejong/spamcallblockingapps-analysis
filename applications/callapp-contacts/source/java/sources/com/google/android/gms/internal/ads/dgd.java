package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgd.class */
final class dgd implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ int f47059a;

    /* renamed from: b */
    private final /* synthetic */ int f47060b;

    /* renamed from: c */
    private final /* synthetic */ int f47061c;

    public dgd(czy czyVar, int i, int i2, int i3) {
        this.f47059a = i;
        this.f47060b = i2;
        this.f47061c = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        cuy cuyVar;
        csa csaVar;
        try {
            csaVar = czy.f46829s;
            csaVar.zza(MotionEvent.obtain(0L, this.f47059a, 0, this.f47060b, this.f47061c, 0));
        } catch (Exception e) {
            cuyVar = czy.f46831u;
            cuyVar.m17192a(2022, -1L, e);
        }
    }
}
