package com.allinone.callerid.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import android.util.Log;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.util.C3767h1;
import p020b.p067p.p068a.C1764a;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/NLService.class */
public class NLService extends NotificationListenerService {

    /* renamed from: d */
    public static boolean f11548d;

    /* renamed from: e */
    long f11549e = 5000;

    /* renamed from: f */
    private C3583a f11550f;

    /* renamed from: com.allinone.callerid.service.NLService$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/NLService$a.class */
    class C3583a extends BroadcastReceiver {
        C3583a() {
            NLService.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            StatusBarNotification[] activeNotifications;
            Log.e("wbb", "Received Broadcast");
            try {
                for (StatusBarNotification statusBarNotification : NLService.this.getActiveNotifications()) {
                    if (Build.VERSION.SDK_INT >= 26) {
                        NLService.this.m24849c(statusBarNotification);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: b */
    private void m24850b() {
        StatusBarNotification[] activeNotifications;
        try {
            if (Build.VERSION.SDK_INT < 26 || (activeNotifications = getActiveNotifications()) == null || activeNotifications.length <= 0) {
                return;
            }
            for (StatusBarNotification statusBarNotification : activeNotifications) {
                int id = statusBarNotification.getId();
                String packageName = statusBarNotification.getPackageName();
                if (id == 977 && getPackageName().equals(packageName)) {
                    snoozeNotification(statusBarNotification.getKey(), this.f11549e);
                    return;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public void m24849c(StatusBarNotification statusBarNotification) {
        try {
            Log.e("wbb", "in snoozeNotification");
            if (statusBarNotification.getPackageName().equals("android") && statusBarNotification.getNotification().extras.containsKey("android.foregroundApps")) {
                Log.e("wbb", "found the notification");
                String string = statusBarNotification.getNotification().extras.getString("android.title");
                if (string == null) {
                    return;
                }
                snoozeNotification(statusBarNotification.getKey(), this.f11549e);
                Log.e("wbb", statusBarNotification.getPackageName() + ": " + string + ", snoozed for " + this.f11549e);
            }
            if (EZCallApplication.m26146c().f9915i) {
                return;
            }
            Log.e("wbb", "close the caller");
            m24850b();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Log.e("wbb", "onCreate");
        this.f11550f = new C3583a();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.allinone.callerid.CHANGE_NOTIFI");
        C1764a.m28939b(getApplicationContext()).m28938c(this.f11550f, intentFilter);
    }

    @Override // android.service.notification.NotificationListenerService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        if (this.f11550f != null) {
            C1764a.m28939b(getApplicationContext()).m28936e(this.f11550f);
        }
    }

    @Override // android.service.notification.NotificationListenerService
    public void onNotificationPosted(StatusBarNotification statusBarNotification) {
        Log.e("wbb", "NLService");
        try {
            if (f11548d) {
                C3767h1.m24235n(getApplicationContext());
                f11548d = false;
            }
            if (Build.VERSION.SDK_INT < 26) {
                return;
            }
            m24849c(statusBarNotification);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.service.notification.NotificationListenerService
    public void onNotificationRemoved(StatusBarNotification statusBarNotification) {
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Log.e("wbb", "onStartCommand");
        return super.onStartCommand(intent, i, i2);
    }
}
