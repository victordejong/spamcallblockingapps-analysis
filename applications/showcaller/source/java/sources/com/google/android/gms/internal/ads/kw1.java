package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import com.google.android.gms.ads.internal.overlay.BinderC5650l;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kw1.class */
final class kw1 extends TimerTask {

    /* renamed from: d */
    final /* synthetic */ AlertDialog f25854d;

    /* renamed from: e */
    final /* synthetic */ Timer f25855e;

    /* renamed from: f */
    final /* synthetic */ BinderC5650l f25856f;

    public kw1(AlertDialog alertDialog, Timer timer, BinderC5650l binderC5650l) {
        this.f25854d = alertDialog;
        this.f25855e = timer;
        this.f25856f = binderC5650l;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        this.f25854d.dismiss();
        this.f25855e.cancel();
        BinderC5650l binderC5650l = this.f25856f;
        if (binderC5650l != null) {
            binderC5650l.m18189b();
        }
    }
}
