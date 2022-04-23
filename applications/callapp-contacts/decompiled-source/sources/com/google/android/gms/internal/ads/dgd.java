package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgd.class */
final class dgd implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ int f26818a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ int f26819b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ int f26820c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dgd(czy czyVar, int i, int i2, int i3) {
        this.f26818a = i;
        this.f26819b = i2;
        this.f26820c = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        cuy cuyVar;
        csa csaVar;
        try {
            csaVar = czy.s;
            csaVar.zza(MotionEvent.obtain(0L, this.f26818a, 0, this.f26819b, this.f26820c, 0));
        } catch (Exception e) {
            cuyVar = czy.u;
            cuyVar.a(2022, -1L, e);
        }
    }
}
