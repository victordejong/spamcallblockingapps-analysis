package com.allinone.callerid.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import p078c.p079a.p080a.C1816b;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/DaemonService.class */
public class DaemonService extends Service {
    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        C1816b.m28811b(this, DaemonService.class, 60);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        startService(new Intent(getApplicationContext(), MyService.class));
        return super.onStartCommand(intent, i, i2);
    }
}
