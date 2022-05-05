package com.android.contacts;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.android.contacts.activities.MainDialtactsActivity;
/* loaded from: classes-dex2jar.jar:com/android/contacts/AsusContactsForegroundFakeService.class */
public class AsusContactsForegroundFakeService extends Service {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f417a = false;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Log.d("AsusContactsForegroundFakeService", "onCreate()");
        Intent intent = new Intent(this, MainDialtactsActivity.class);
        intent.setFlags(603979776);
        PendingIntent.getActivity(this, 0, intent, 0);
    }

    @Override // android.app.Service
    public void onDestroy() {
        Log.d("AsusContactsForegroundFakeService", "onDestroy()");
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Log.d("AsusContactsForegroundFakeService", "onStartCommand");
        if (intent != null && intent.getBooleanExtra("isStop", false)) {
            Log.d("AsusContactsForegroundFakeService", "stopForeground");
            stopForeground(true);
            stopSelf();
            return 2;
        } else if (!f417a) {
            f417a = true;
            Log.d("AsusContactsForegroundFakeService", "onStartCommand: Start real service.");
            Notification notification = new Notification();
            notification.flags |= 32;
            startForeground(1235, notification);
            startService(new Intent(this, AsusContactsForegroundService.class));
            return 2;
        } else {
            Log.d("AsusContactsForegroundFakeService", "onStartCommand: real service is running, stop self.");
            stopSelf();
            return 2;
        }
    }
}
