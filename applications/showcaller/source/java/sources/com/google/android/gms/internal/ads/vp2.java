package com.google.android.gms.internal.ads;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vp2.class */
public final class vp2 extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ wp2 f31287a;

    public vp2(wp2 wp2Var) {
        this.f31287a = wp2Var;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        KeyguardManager keyguardManager;
        if (intent == null) {
            return;
        }
        if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            wp2.m9490f(this.f31287a, true);
        } else if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            wp2.m9490f(this.f31287a, false);
        } else if (!"android.intent.action.SCREEN_ON".equals(intent.getAction()) || (keyguardManager = (KeyguardManager) context.getSystemService("keyguard")) == null || keyguardManager.inKeyguardRestrictedInputMode()) {
        } else {
            wp2.m9490f(this.f31287a, false);
        }
    }
}
