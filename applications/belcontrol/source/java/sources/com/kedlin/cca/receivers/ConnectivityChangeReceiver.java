package com.kedlin.cca.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import p000.r71;
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/receivers/ConnectivityChangeReceiver.class */
public class ConnectivityChangeReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null || !intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
            return;
        }
        nf.b(lm1.m1292a()).d(intent);
        if (!fa1.m1827w()) {
            return;
        }
        j61.m1539d();
        if (!r71.EnumC1638a.f7926V.m695a()) {
            return;
        }
        nf.b(context).d(new Intent(aa1.f215h));
    }
}
