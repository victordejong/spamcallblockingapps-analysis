package com.google.android.gms.iid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzah.class */
final class zzah extends BroadcastReceiver {

    /* renamed from: a */
    private final /* synthetic */ zzaf f7766a;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (Log.isLoggable("InstanceID", 3)) {
            Log.d("InstanceID", "Received GSF callback via dynamic receiver");
        }
        this.f7766a.m14153d(intent);
    }
}
