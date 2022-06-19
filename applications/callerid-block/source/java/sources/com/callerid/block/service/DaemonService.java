package com.callerid.block.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import e.b.a.b;
/* loaded from: classes-dex2jar.jar:com/callerid/block/service/DaemonService.class */
public class DaemonService extends Service {
    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        b.b(this, DaemonService.class, 60);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        try {
            startService(new Intent(getApplicationContext(), MyService.class));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return super.onStartCommand(intent, i, i2);
    }
}
