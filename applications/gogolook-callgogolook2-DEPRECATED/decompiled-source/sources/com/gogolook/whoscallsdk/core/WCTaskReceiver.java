package com.gogolook.whoscallsdk.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import p081h.p160h.p179e.p180a.C6334a;
import p081h.p160h.p179e.p180a.C6354g;
import p081h.p160h.p179e.p180a.p190p.C6438i;
/* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/core/WCTaskReceiver.class */
public class WCTaskReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        C6438i.m22579c("receive broadcast event : " + action);
        if (action != null) {
            try {
                if (action.equals("com.gogolook.whoscallsdk.core.wcsdk_scheduletask")) {
                    Bundle extras = intent.getExtras();
                    if (!(extras == null || extras.getLong("schedule_taskid") == 0)) {
                        C6354g.m23071a(context, extras.getLong("schedule_taskid"));
                    }
                } else if (action.equals("com.gogolook.whoscallsdk.core.wcsdk_queuetask")) {
                    C6334a.m23211s().m23213q();
                }
            } catch (Exception e) {
                C6438i.m22579c(e.getMessage());
            }
        }
    }
}
