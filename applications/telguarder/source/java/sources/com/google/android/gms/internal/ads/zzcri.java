package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import com.google.android.gms.ads.internal.overlay.zzc;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcri.class */
final class zzcri extends TimerTask {
    private final /* synthetic */ AlertDialog zzgsq;
    private final /* synthetic */ Timer zzgsr;
    private final /* synthetic */ zzc zzgss;

    public zzcri(AlertDialog alertDialog, Timer timer, zzc zzcVar) {
        this.zzgsq = alertDialog;
        this.zzgsr = timer;
        this.zzgss = zzcVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        this.zzgsq.dismiss();
        this.zzgsr.cancel();
        zzc zzcVar = this.zzgss;
        if (zzcVar != null) {
            zzcVar.close();
        }
    }
}
