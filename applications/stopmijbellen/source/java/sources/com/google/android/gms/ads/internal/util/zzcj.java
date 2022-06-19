package com.google.android.gms.ads.internal.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzcj.class */
public final class zzcj extends BroadcastReceiver {
    public final /* synthetic */ zzck zza;

    public zzcj(zzck zzckVar) {
        this.zza = zzckVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.zza.zze(context, intent);
    }
}
