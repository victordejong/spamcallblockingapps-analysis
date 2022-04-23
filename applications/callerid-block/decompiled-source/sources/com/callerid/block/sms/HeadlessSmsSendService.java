package com.callerid.block.sms;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/callerid/block/sms/HeadlessSmsSendService.class */
public class HeadlessSmsSendService extends Service {
    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        Log.e("sms", "HeadlessSmsSendService: " + intent);
        return null;
    }
}
