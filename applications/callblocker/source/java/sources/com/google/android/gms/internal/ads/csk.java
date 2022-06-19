package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/csk.class */
final class csk implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ MotionEvent f13641a;

    public csk(clf clfVar, MotionEvent motionEvent) {
        this.f13641a = motionEvent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        clq clqVar;
        cfb cfbVar;
        try {
            cfbVar = clf.f13259s;
            cfbVar.mo11047a(this.f13641a);
        } catch (Exception e) {
            clqVar = clf.f13261u;
            clqVar.m11085a(2022, -1L, e);
        }
    }
}
