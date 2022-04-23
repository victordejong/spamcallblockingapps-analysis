package com.library.p518ad;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.SystemClock;
import java.util.Date;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.C6497d;
import p131c.p396i.p418b.C6619a;
/* renamed from: com.library.ad.AdUpdateService */
/* loaded from: classes2-dex2jar.jar:com/library/ad/AdUpdateService.class */
public class AdUpdateService extends Service {
    /* renamed from: a */
    public static Intent m5332a(Context context, String str) {
        Intent intent = new Intent(context, AdUpdateService.class);
        intent.setAction(str);
        return intent;
    }

    /* renamed from: a */
    public static void m5333a(Context context, long j, int i) {
        String str = "addAlarm: " + j + " jobId :" + i;
        PendingIntent service = PendingIntent.getService(context, i, m5332a(context, i == 1 ? "ALARM_SERVICE_UPDATE" : "ALARM_SERVICE_CONFIG"), 134217728);
        AlarmManager alarmManager = (AlarmManager) C6489a.m20718b().getSystemService("alarm");
        alarmManager.cancel(service);
        alarmManager.set(2, SystemClock.elapsedRealtime() + j, service);
        new Date(System.currentTimeMillis() + j);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        System.currentTimeMillis();
    }

    @Override // android.app.Service
    public void onDestroy() {
        System.currentTimeMillis();
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        String action = intent.getAction();
        String str = this + " " + System.currentTimeMillis() + " action:" + action + " startId:" + i2;
        if (C6489a.m20717c()) {
            if ("ALARM_SERVICE_UPDATE".equals(action)) {
                C6497d.m20645o().m20664d();
            } else {
                C6619a.m20316b().m20323a();
            }
        }
        stopSelf();
        return super.onStartCommand(intent, i, i2);
    }
}
