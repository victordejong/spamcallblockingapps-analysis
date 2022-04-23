package com.google.android.gms.iid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzah.class */
public final class zzah extends BroadcastReceiver {
    private final /* synthetic */ zzaf zzcx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzah(zzaf zzafVar) {
        this.zzcx = zzafVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (Log.isLoggable("InstanceID", 3)) {
            Log.d("InstanceID", "Received GSF callback via dynamic receiver");
        }
        this.zzcx.zzh(intent);
    }
}
