package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfa.class */
public final class zzfa extends BroadcastReceiver {
    private boolean zzyv = true;

    public zzfa(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        context.registerReceiver(this, intentFilter);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            this.zzyv = true;
        } else if (!"android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
        } else {
            this.zzyv = false;
        }
    }

    public final boolean zzcf() {
        return this.zzyv;
    }
}
