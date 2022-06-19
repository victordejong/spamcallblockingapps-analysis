package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/th2.class */
final class th2 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ Context f8598b;

    /* renamed from: c */
    final /* synthetic */ View f8599c;

    th2(xh2 xh2Var, Context context, View view, Activity activity) {
        this.f8598b = context;
        this.f8599c = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            xh2.t().b(this.f8598b, this.f8599c, (Activity) null);
        } catch (Exception e) {
            xh2.u().m7589d(2020, -1L, e);
        }
    }
}
