package com.google.android.gms.internal.ads;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfkq.class */
public final class zzfkq extends BroadcastReceiver {
    public final /* synthetic */ zzfkr zza;

    public zzfkq(zzfkr zzfkrVar) {
        this.zza = zzfkrVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        KeyguardManager keyguardManager;
        if (intent == null) {
            return;
        }
        if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            zzfkr.zzb(this.zza, true);
        } else if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            zzfkr.zzb(this.zza, false);
        } else if (!"android.intent.action.SCREEN_ON".equals(intent.getAction()) || (keyguardManager = (KeyguardManager) context.getSystemService("keyguard")) == null || keyguardManager.inKeyguardRestrictedInputMode()) {
        } else {
            zzfkr.zzb(this.zza, false);
        }
    }
}
