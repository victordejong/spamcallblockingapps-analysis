package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/tt2.class */
final class tt2 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ View f8731b;

    /* renamed from: c */
    final /* synthetic */ xt2 f8732c;

    public tt2(xt2 xt2Var, View view) {
        this.f8732c = xt2Var;
        this.f8731b = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8732c.m4842b(this.f8731b);
    }
}
