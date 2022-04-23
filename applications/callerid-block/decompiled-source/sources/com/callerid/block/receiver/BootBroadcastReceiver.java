package com.callerid.block.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.callerid.block.service.DaemonService;
import com.callerid.block.service.MyService;
/* loaded from: classes-dex2jar.jar:com/callerid/block/receiver/BootBroadcastReceiver.class */
public class BootBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.intent.action.BOOT_COMPLETED".equals(intent.getAction())) {
            int i = Build.VERSION.SDK_INT;
            try {
                if (i <= 20) {
                    context.startService(new Intent(context.getApplicationContext(), DaemonService.class));
                } else if (i > 25) {
                    Intent intent2 = new Intent(context.getApplicationContext(), MyService.class);
                    intent2.putExtra("show_notifi", true);
                    context.startForegroundService(intent2);
                } else {
                    context.startService(new Intent(context, MyService.class));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
