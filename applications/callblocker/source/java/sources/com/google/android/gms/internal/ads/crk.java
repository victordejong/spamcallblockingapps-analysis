package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/crk.class */
final class crk implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ int f13608a;

    /* renamed from: b */
    private final /* synthetic */ int f13609b;

    /* renamed from: c */
    private final /* synthetic */ int f13610c;

    public crk(clf clfVar, int i, int i2, int i3) {
        this.f13608a = i;
        this.f13609b = i2;
        this.f13610c = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        clq clqVar;
        cfb cfbVar;
        try {
            cfbVar = clf.f13259s;
            cfbVar.mo11047a(MotionEvent.obtain(0L, this.f13608a, 0, this.f13609b, this.f13610c, 0));
        } catch (Exception e) {
            clqVar = clf.f13261u;
            clqVar.m11085a(2022, -1L, e);
        }
    }
}
