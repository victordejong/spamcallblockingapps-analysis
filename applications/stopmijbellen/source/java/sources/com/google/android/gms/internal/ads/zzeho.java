package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import com.google.android.gms.ads.internal.overlay.zzl;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeho.class */
final class zzeho extends TimerTask {
    public final /* synthetic */ AlertDialog zza;
    public final /* synthetic */ Timer zzb;
    public final /* synthetic */ zzl zzc;

    public zzeho(AlertDialog alertDialog, Timer timer, zzl zzlVar) {
        this.zza = alertDialog;
        this.zzb = timer;
        this.zzc = zzlVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        this.zza.dismiss();
        this.zzb.cancel();
        zzl zzlVar = this.zzc;
        if (zzlVar != null) {
            zzlVar.zzb();
        }
    }
}
