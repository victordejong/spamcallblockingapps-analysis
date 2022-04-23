package com.google.android.gms.internal.ads;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nr1.class */
public final class nr1 extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ or1 f7785a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nr1(or1 or1Var) {
        this.f7785a = or1Var;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        KeyguardManager keyguardManager;
        if (intent != null) {
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                or1.m6261f(this.f7785a, true);
            } else if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                or1.m6261f(this.f7785a, false);
            } else if ("android.intent.action.SCREEN_ON".equals(intent.getAction()) && (keyguardManager = (KeyguardManager) context.getSystemService("keyguard")) != null && !keyguardManager.inKeyguardRestrictedInputMode()) {
                or1.m6261f(this.f7785a, false);
            }
        }
    }
}
