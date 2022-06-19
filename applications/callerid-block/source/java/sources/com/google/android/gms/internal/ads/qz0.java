package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import com.google.android.gms.ads.internal.overlay.n;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qz0.class */
final class qz0 extends TimerTask {

    /* renamed from: b */
    final /* synthetic */ AlertDialog f8284b;

    /* renamed from: c */
    final /* synthetic */ Timer f8285c;

    /* renamed from: d */
    final /* synthetic */ n f8286d;

    public qz0(AlertDialog alertDialog, Timer timer, n nVar) {
        this.f8284b = alertDialog;
        this.f8285c = timer;
        this.f8286d = nVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        this.f8284b.dismiss();
        this.f8285c.cancel();
        n nVar = this.f8286d;
        if (nVar != null) {
            nVar.b();
        }
    }
}
