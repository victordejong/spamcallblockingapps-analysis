package com.google.android.gms.ads.internal.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzr.class */
public final class zzr extends BroadcastReceiver {
    public final /* synthetic */ zzs zza;

    public /* synthetic */ zzr(zzs zzsVar, zzq zzqVar) {
        this.zza = zzsVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            this.zza.zze = true;
        } else if (!"android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
        } else {
            this.zza.zze = false;
        }
    }
}
