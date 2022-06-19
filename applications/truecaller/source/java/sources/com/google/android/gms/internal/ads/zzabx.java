package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzabx.class */
public final class zzabx extends BroadcastReceiver {
    public final /* synthetic */ zzaby zza;

    public zzabx(zzaby zzabyVar) {
        this.zza = zzabyVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.zza.zzg();
    }
}
