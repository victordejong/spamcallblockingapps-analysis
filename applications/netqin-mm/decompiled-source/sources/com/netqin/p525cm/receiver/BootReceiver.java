package com.netqin.p525cm.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.netqin.p525cm.service.MainService;
/* renamed from: com.netqin.cm.receiver.BootReceiver */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/receiver/BootReceiver.class */
public class BootReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        MainService.m3260a("COMMAND_NONE");
    }
}
