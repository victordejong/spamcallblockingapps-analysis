package com.allinone.callerid.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.allinone.callerid.util.C3710a0;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/receiver/KeepReceiver.class */
public class KeepReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            String action = intent.getAction();
            if (TextUtils.equals(action, "android.intent.action.SCREEN_OFF")) {
                C3710a0.m24668b().m24665e(context);
            } else if (TextUtils.equals(action, "android.intent.action.SCREEN_ON")) {
                C3710a0.m24668b().m24669a();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
