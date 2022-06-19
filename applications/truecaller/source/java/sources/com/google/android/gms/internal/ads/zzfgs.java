package com.google.android.gms.internal.ads;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfgs.class */
public final class zzfgs extends BroadcastReceiver {
    public final /* synthetic */ zzfgt zza;

    public zzfgs(zzfgt zzfgtVar) {
        this.zza = zzfgtVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        KeyguardManager keyguardManager;
        if (intent == null) {
            return;
        }
        if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            zzfgt.zzf(this.zza, true);
        } else if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            zzfgt.zzf(this.zza, false);
        } else if (!"android.intent.action.SCREEN_ON".equals(intent.getAction()) || (keyguardManager = (KeyguardManager) context.getSystemService("keyguard")) == null || keyguardManager.inKeyguardRestrictedInputMode()) {
        } else {
            zzfgt.zzf(this.zza, false);
        }
    }
}
