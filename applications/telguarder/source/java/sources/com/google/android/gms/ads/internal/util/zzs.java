package com.google.android.gms.ads.internal.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzs.class */
public final class zzs extends BroadcastReceiver {
    private final /* synthetic */ zzj zzeet;

    private zzs(zzj zzjVar) {
        this.zzeet = zzjVar;
    }

    public /* synthetic */ zzs(zzj zzjVar, zzl zzlVar) {
        this(zzjVar);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            this.zzeet.zzyv = true;
        } else if (!"android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
        } else {
            this.zzeet.zzyv = false;
        }
    }
}
