package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzawb.class */
public final class zzawb extends BroadcastReceiver {
    public final /* synthetic */ zzawe zza;

    public zzawb(zzawe zzaweVar) {
        this.zza = zzaweVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.zza.zzj(3);
    }
}
