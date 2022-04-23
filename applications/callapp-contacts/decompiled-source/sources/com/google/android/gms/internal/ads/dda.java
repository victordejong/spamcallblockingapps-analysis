package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dda.class */
final class dda implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ MotionEvent f26739a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dda(czy czyVar, MotionEvent motionEvent) {
        this.f26739a = motionEvent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        cuy cuyVar;
        csa csaVar;
        try {
            csaVar = czy.s;
            csaVar.zza(this.f26739a);
        } catch (Exception e) {
            cuyVar = czy.u;
            cuyVar.a(2022, -1L, e);
        }
    }
}
