package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzadn.class */
public final class zzadn extends BroadcastReceiver implements Runnable {
    public final /* synthetic */ zzadp zza;
    private final zzado zzb;
    private final Handler zzc;

    public zzadn(zzadp zzadpVar, Handler handler, zzado zzadoVar) {
        this.zza = zzadpVar;
        this.zzc = handler;
        this.zzb = zzadoVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
            this.zzc.post(this);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
    }
}
