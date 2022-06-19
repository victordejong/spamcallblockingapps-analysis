package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfq.class */
public final class zzfq extends BroadcastReceiver implements Runnable {
    public final /* synthetic */ zzfs zza;
    private final zzfr zzb;
    private final Handler zzc;

    public zzfq(zzfs zzfsVar, Handler handler, zzfr zzfrVar) {
        this.zza = zzfsVar;
        this.zzc = handler;
        this.zzb = zzfrVar;
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
