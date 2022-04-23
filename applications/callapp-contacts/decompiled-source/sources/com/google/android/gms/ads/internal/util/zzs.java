package com.google.android.gms.ads.internal.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzs.class */
public final class zzs extends BroadcastReceiver {
    private final /* synthetic */ zzj zzegw;

    private zzs(zzj zzjVar) {
        this.zzegw = zzjVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzs(zzj zzjVar, zzl zzlVar) {
        this(zzjVar);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            this.zzegw.zzza = true;
        } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            this.zzegw.zzza = false;
        }
    }
}
