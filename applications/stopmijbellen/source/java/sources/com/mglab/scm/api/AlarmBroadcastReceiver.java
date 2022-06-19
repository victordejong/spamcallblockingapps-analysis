package com.mglab.scm.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.mglab.scm.visual.MGNotification;
import p095f8.C2779g;
import p095f8.C2780h;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/api/AlarmBroadcastReceiver.class */
public class AlarmBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        C2779g.m3120M(context);
        C2780h.m3041k0(context, "lastalrmcheck", System.currentTimeMillis());
        if (C2780h.m3052f(context, "rate_notification", false) || C2780h.m3054e(context).intValue() < 10) {
            return;
        }
        C2780h.m3049g0(context, "rate_notification", true);
        MGNotification.m3932d(context);
    }
}
