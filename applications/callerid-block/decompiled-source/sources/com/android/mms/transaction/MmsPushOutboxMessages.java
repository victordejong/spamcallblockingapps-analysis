package com.android.mms.transaction;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import e.d.a.a.a;
/* loaded from: classes-dex2jar.jar:com/android/mms/transaction/MmsPushOutboxMessages.class */
public class MmsPushOutboxMessages extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (a.f("Mms", 2)) {
            a.k("Mms", "Received the MMS_SEND_OUTBOX_MSG intent: " + intent);
        }
        if (intent.getAction().equalsIgnoreCase("android.intent.action.MMS_SEND_OUTBOX_MSG")) {
            a.a("Mms", "Now waking up the MMS service");
            context.startService(new Intent(context, TransactionService.class));
        }
    }
}
