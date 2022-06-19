package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxy.class */
public final class zzaxy extends BroadcastReceiver {
    public final /* synthetic */ zzayb zza;

    public zzaxy(zzayb zzaybVar) {
        this.zza = zzaybVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.zza.zzj(3);
    }
}
