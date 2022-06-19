package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfx.class */
public final class zzfx extends BroadcastReceiver {

    /* renamed from: a */
    private boolean f9673a = true;

    public zzfx(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        context.registerReceiver(this, intentFilter);
    }

    /* renamed from: a */
    public final boolean m4489a() {
        return this.f9673a;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        boolean z;
        if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            z = true;
        } else if (!"android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            return;
        } else {
            z = false;
        }
        this.f9673a = z;
    }
}
