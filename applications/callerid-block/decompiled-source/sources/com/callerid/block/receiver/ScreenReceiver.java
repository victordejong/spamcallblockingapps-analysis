package com.callerid.block.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.callerid.block.live.SinglePixelActivity;
/* loaded from: classes-dex2jar.jar:com/callerid/block/receiver/ScreenReceiver.class */
public class ScreenReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            if (TextUtils.equals(intent.getAction(), "android.intent.action.SCREEN_OFF")) {
                Intent intent2 = new Intent(context, SinglePixelActivity.class);
                intent2.setFlags(268435456);
                context.startActivity(intent2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
