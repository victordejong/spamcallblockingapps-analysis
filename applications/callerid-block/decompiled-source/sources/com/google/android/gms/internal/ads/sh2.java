package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sh2.class */
final class sh2 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ Context f8444b;

    sh2(xh2 xh2Var, Context context) {
        this.f8444b = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            xh2.t().d(this.f8444b);
        } catch (Exception e) {
            xh2.u().m7589d(2019, -1L, e);
        }
    }
}
