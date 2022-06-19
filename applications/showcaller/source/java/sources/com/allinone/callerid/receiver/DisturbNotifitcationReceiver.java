package com.allinone.callerid.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.allinone.callerid.util.C3799l0;
import com.allinone.callerid.util.p203i1.C3773a;
import p020b.p067p.p068a.C1764a;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/receiver/DisturbNotifitcationReceiver.class */
public class DisturbNotifitcationReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null || context == null) {
            return;
        }
        C3799l0.m24110a(context);
        C3773a.m24171s(false);
        C1764a.m28939b(context).m28937d(new Intent("com.allinone.callerid.DISTURB_NOTIFICATION_UPDATA"));
    }
}
