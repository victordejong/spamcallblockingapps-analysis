package com.google.android.gms.ads.internal.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.internal.ads.yu;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzp.class */
public final class zzp extends BroadcastReceiver {
    private zzp(zzj zzjVar) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzp(zzj zzjVar, zzl zzlVar) {
        this(zzjVar);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        yu.a();
        zzb.zzam(context);
    }
}
