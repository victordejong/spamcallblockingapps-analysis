package com.google.android.material.bottomsheet;

import android.view.View;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1832m.p1833a.C26670e;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$e.class */
public class BottomSheetBehavior$e implements Runnable {

    /* renamed from: a */
    public final View f6651a;

    /* renamed from: b */
    public boolean f6652b;

    /* renamed from: c */
    public int f6653c;

    /* renamed from: d */
    public final /* synthetic */ BottomSheetBehavior f6654d;

    public BottomSheetBehavior$e(BottomSheetBehavior bottomSheetBehavior, View view, int i) {
        this.f6654d = bottomSheetBehavior;
        this.f6651a = view;
        this.f6653c = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        C26670e c26670e = this.f6654d.G;
        if (c26670e == null || !c26670e.m1480i(true)) {
            this.f6654d.N(this.f6653c);
        } else {
            View view = this.f6651a;
            AtomicInteger atomicInteger = C26614s.f74505a;
            view.postOnAnimation(this);
        }
        this.f6652b = false;
    }
}
