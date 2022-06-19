package com.kedlin.cca.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.kedlin.cca.core.CCAService;
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/receivers/SmsReceiver.class */
public class SmsReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        intent.setClass(context, CCAService.class);
        fa1.m1851O(context, intent);
    }
}
