package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import com.google.android.gms.ads.internal.overlay.zze;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bsf.class */
final class bsf extends TimerTask {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ AlertDialog f24998a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ Timer f24999b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ zze f25000c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bsf(AlertDialog alertDialog, Timer timer, zze zzeVar) {
        this.f24998a = alertDialog;
        this.f24999b = timer;
        this.f25000c = zzeVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        this.f24998a.dismiss();
        this.f24999b.cancel();
        zze zzeVar = this.f25000c;
        if (zzeVar != null) {
            zzeVar.close();
        }
    }
}
