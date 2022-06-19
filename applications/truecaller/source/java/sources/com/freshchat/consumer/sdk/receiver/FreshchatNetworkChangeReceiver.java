package com.freshchat.consumer.sdk.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1611ag;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1618al;
import com.freshchat.consumer.sdk.p057j.C1723q;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/receiver/FreshchatNetworkChangeReceiver.class */
public class FreshchatNetworkChangeReceiver extends BroadcastReceiver {
    /* renamed from: e */
    private boolean m39542e(Intent intent) {
        return intent != null && "android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction());
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        C1613ai.m40284d("FRESHCHAT", "NetworkChangeReceiver::onReceive() called");
        C1611ag.m40301a("FRESHCHAT", intent);
        try {
            if (!m39542e(intent)) {
                return;
            }
            C1594aa.m40345c(context, C1618al.m40261aS(context.getApplicationContext()));
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }
}
