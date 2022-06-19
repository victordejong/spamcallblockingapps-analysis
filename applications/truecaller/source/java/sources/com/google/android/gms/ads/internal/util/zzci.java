package com.google.android.gms.ads.internal.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzci.class */
public final class zzci extends BroadcastReceiver {
    public final /* synthetic */ zzcj zza;

    public zzci(zzcj zzcjVar) {
        this.zza = zzcjVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.zza.zze(context, intent);
    }
}
