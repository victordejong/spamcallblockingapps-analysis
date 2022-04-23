package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/uh2.class */
final class uh2 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ Context f8784b;

    /* renamed from: c */
    final /* synthetic */ String f8785c;

    /* renamed from: d */
    final /* synthetic */ View f8786d;

    /* renamed from: e */
    final /* synthetic */ Activity f8787e;

    uh2(xh2 xh2Var, Context context, String str, View view, Activity activity) {
        this.f8784b = context;
        this.f8785c = str;
        this.f8786d = view;
        this.f8787e = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            xh2.t().e(this.f8784b, this.f8785c, this.f8786d, this.f8787e);
        } catch (Exception e) {
            xh2.u().m7589d(2021, -1L, e);
        }
    }
}
