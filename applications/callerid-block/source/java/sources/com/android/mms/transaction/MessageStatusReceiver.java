package com.android.mms.transaction;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/android/mms/transaction/MessageStatusReceiver.class */
public class MessageStatusReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("com.android.mms.transaction.MessageStatusReceiver.MESSAGE_STATUS_RECEIVED".equals(intent.getAction())) {
            intent.setClass(context, MessageStatusService.class);
            context.startService(intent);
        }
    }
}
