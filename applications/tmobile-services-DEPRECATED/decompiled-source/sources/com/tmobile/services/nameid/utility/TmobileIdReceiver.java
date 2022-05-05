package com.tmobile.services.nameid.utility;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/TmobileIdReceiver.class */
public class TmobileIdReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.hasExtra("user_logged_in")) {
            boolean booleanExtra = intent.getBooleanExtra("user_logged_in", false);
            StringBuilder sb = new StringBuilder();
            sb.append("is logged in? ");
            sb.append(booleanExtra ? "yes" : "no");
            LogUtil.m5632o("TmobileIdReceiver#onReceive", sb.toString());
        }
    }
}
