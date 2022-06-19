package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import com.google.android.gms.ads.internal.overlay.zze;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bsf.class */
final class bsf extends TimerTask {

    /* renamed from: a */
    private final /* synthetic */ AlertDialog f44624a;

    /* renamed from: b */
    private final /* synthetic */ Timer f44625b;

    /* renamed from: c */
    private final /* synthetic */ zze f44626c;

    public bsf(AlertDialog alertDialog, Timer timer, zze zzeVar) {
        this.f44624a = alertDialog;
        this.f44625b = timer;
        this.f44626c = zzeVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        this.f44624a.dismiss();
        this.f44625b.cancel();
        zze zzeVar = this.f44626c;
        if (zzeVar != null) {
            zzeVar.close();
        }
    }
}
