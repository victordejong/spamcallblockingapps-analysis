package com.bumptech.glide.manager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/e$a.class */
class e$a extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ e f3794a;

    e$a(e eVar) {
        this.f3794a = eVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        e eVar = this.f3794a;
        boolean z = eVar.d;
        eVar.d = eVar.j(context);
        if (z != this.f3794a.d) {
            if (Log.isLoggable("ConnectivityMonitor", 3)) {
                Log.d("ConnectivityMonitor", "connectivity changed, isConnected: " + this.f3794a.d);
            }
            e eVar2 = this.f3794a;
            eVar2.c.m10819a(eVar2.d);
        }
    }
}
