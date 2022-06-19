package com.mglab.scm.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import p095f8.C2779g;
import p095f8.C2780h;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/api/BootBroadcastReceiver.class */
public class BootBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        C2779g.m3128E(context, false);
        C2779g.m3119N(context);
        C2779g.m3130C(context);
        C2780h.m3041k0(context, "bootbrlaststart", System.currentTimeMillis());
    }
}
