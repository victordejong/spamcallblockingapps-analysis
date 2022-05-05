package com.android.contacts;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/android/contacts/AsusSpeedUpService.class */
public class AsusSpeedUpService extends Service {
    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Log.i("AsusSpeedUpService", "start AsusSpeedUpService");
        return 1;
    }
}
