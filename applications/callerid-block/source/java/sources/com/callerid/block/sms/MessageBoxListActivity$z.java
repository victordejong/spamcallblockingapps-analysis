package com.callerid.block.sms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/callerid/block/sms/MessageBoxListActivity$z.class */
class MessageBoxListActivity$z extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ MessageBoxListActivity f4862a;

    MessageBoxListActivity$z(MessageBoxListActivity messageBoxListActivity) {
        this.f4862a = messageBoxListActivity;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (action != null) {
            action.hashCode();
            if (action.equals("com.callerid.block.REPORT_OK")) {
                MessageBoxListActivity.o0(this.f4862a);
            } else if (!action.equals("com.callerid.block.MMS_SENDED_OK")) {
            } else {
                MessageBoxListActivity.p0(this.f4862a);
            }
        }
    }
}
