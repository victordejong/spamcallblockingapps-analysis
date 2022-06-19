package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzamy.class */
public final class zzamy extends BroadcastReceiver {
    public final /* synthetic */ zzamz zza;

    public zzamy(zzamz zzamzVar) {
        this.zza = zzamzVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.zza.zzf();
    }
}
