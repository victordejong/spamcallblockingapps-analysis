package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dda.class */
final class dda implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ MotionEvent f46967a;

    public dda(czy czyVar, MotionEvent motionEvent) {
        this.f46967a = motionEvent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        cuy cuyVar;
        csa csaVar;
        try {
            csaVar = czy.f46829s;
            csaVar.zza(this.f46967a);
        } catch (Exception e) {
            cuyVar = czy.f46831u;
            cuyVar.m17192a(2022, -1L, e);
        }
    }
}
