package com.google.android.gms.ads.internal.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzby.class */
public final class zzby extends BroadcastReceiver {
    private final /* synthetic */ zzbv zzejh;

    public zzby(zzbv zzbvVar) {
        this.zzejh = zzbvVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.zzejh.zzc(context, intent);
    }
}
