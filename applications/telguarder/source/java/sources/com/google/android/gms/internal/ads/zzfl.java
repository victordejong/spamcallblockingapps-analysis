package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfl.class */
public final class zzfl extends BroadcastReceiver {
    private final /* synthetic */ zzfj zzaar;

    public zzfl(zzfj zzfjVar) {
        this.zzaar = zzfjVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.zzaar.zzcv();
    }
}
