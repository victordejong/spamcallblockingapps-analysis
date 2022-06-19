package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zziz.class */
public final class zziz extends BroadcastReceiver {
    public final /* synthetic */ zzja zza;

    public /* synthetic */ zziz(zzja zzjaVar, zziy zziyVar) {
        this.zza = zzjaVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Handler handler;
        handler = this.zza.zzb;
        final zzja zzjaVar = this.zza;
        handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzix
            @Override // java.lang.Runnable
            public final void run() {
                zzja.zzd(zzja.this);
            }
        });
    }
}
