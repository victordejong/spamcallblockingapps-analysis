package com.kedlin.cca.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.kedlin.cca.core.CCAService;
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/receivers/IntentToServiceTransportReceiver.class */
public class IntentToServiceTransportReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null) {
            if ((!intent.getAction().equals("com.kedlin.cca.receivers.IntentToServiceTransportReceiver.ACTION_TRANSPORT") && !intent.getAction().equals("android.intent.action.BOOT_COMPLETED")) || r71.m709m().length == 0) {
                return;
            }
            intent.setClass(context, CCAService.class);
            fa1.m1851O(context, intent);
        }
    }
}
