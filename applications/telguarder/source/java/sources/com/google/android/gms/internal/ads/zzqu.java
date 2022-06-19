package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzqu.class */
public final class zzqu extends BroadcastReceiver {
    private final /* synthetic */ zzqs zzbrs;

    public zzqu(zzqs zzqsVar) {
        this.zzbrs = zzqsVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.zzbrs.zzbr(3);
    }
}
