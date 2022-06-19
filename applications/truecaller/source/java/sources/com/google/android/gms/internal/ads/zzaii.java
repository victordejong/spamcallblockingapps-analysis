package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaii.class */
public final class zzaii extends BroadcastReceiver {
    public final /* synthetic */ zzaij zza;

    public /* synthetic */ zzaii(zzaij zzaijVar, zzaig zzaigVar) {
        this.zza = zzaijVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Handler handler;
        handler = this.zza.zzb;
        handler.post(new Runnable(this.zza) { // from class: com.google.android.gms.internal.ads.zzaih
            private final zzaij zza;

            {
                this.zza = zzaijVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzaij.zzf(this.zza);
            }
        });
    }
}
