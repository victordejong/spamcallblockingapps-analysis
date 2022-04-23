package com.callerid.block.service;

import android.app.Notification;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import android.util.Log;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.p040h.p041a.p052h.C1062a;
import com.callerid.block.util.C1184j;
import com.callerid.block.util.C1186k;
import com.callerid.block.util.C1219u0;
import com.callerid.block.util.C1227w;
import d.p.a.a;
/* loaded from: classes-dex2jar.jar:com/callerid/block/service/NLService.class */
public class NLService extends NotificationListenerService {

    /* renamed from: b */
    long f4816b = 5000;

    /* renamed from: c */
    private int f4817c = 23;

    /* renamed from: d */
    private C1130b f4818d;

    /* renamed from: com.callerid.block.service.NLService$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/service/NLService$b.class */
    class C1130b extends BroadcastReceiver {
        C1130b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            StatusBarNotification[] activeNotifications;
            Log.e("wbb", "Received Broadcast");
            for (StatusBarNotification statusBarNotification : NLService.this.getActiveNotifications()) {
                if (Build.VERSION.SDK_INT >= 26) {
                    NLService.this.m10014d(statusBarNotification);
                }
            }
        }
    }

    /* renamed from: b */
    private void m10016b() {
        StatusBarNotification[] activeNotifications;
        try {
            if (Build.VERSION.SDK_INT >= 26 && (activeNotifications = getActiveNotifications()) != null && activeNotifications.length > 0) {
                for (StatusBarNotification statusBarNotification : activeNotifications) {
                    int id = statusBarNotification.getId();
                    String packageName = statusBarNotification.getPackageName();
                    if (id == 970 && getPackageName().equals(packageName)) {
                        snoozeNotification(statusBarNotification.getKey(), this.f4816b);
                        return;
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    private boolean m10015c(StatusBarNotification statusBarNotification) {
        try {
            if (Build.VERSION.SDK_INT < 18 || !"com.whatsapp".equals(statusBarNotification.getPackageName())) {
                return false;
            }
            statusBarNotification.isClearable();
            int id = statusBarNotification.getId();
            if (C1227w.f5084a) {
                C1227w.m9527a("wbb", "id:" + id);
            }
            if (id != this.f4817c) {
                return false;
            }
            if (!C1227w.f5084a) {
                return true;
            }
            C1227w.m9527a("wbb", "true");
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m10014d(StatusBarNotification statusBarNotification) {
        try {
            Log.e("wbb", "in snoozeNotification");
            if (statusBarNotification.getPackageName().equals("android") && statusBarNotification.getNotification().extras.containsKey("android.foregroundApps")) {
                Log.e("wbb", "found the notification");
                String string = statusBarNotification.getNotification().extras.getString("android.title");
                if (string != null) {
                    snoozeNotification(statusBarNotification.getKey(), this.f4816b);
                    Log.e("wbb", statusBarNotification.getPackageName() + ": " + string + ", snoozed for " + this.f4816b);
                } else {
                    return;
                }
            }
            if (!EZCallApplication.m10163c().f4577b) {
                Log.e("wbb", "close the caller");
                m10016b();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Log.e("wbb", "onCreate");
        this.f4818d = new C1130b();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.callerid.block.CLOSE_NOTIFI");
        a.b(getApplicationContext()).c(this.f4818d, intentFilter);
    }

    @Override // android.service.notification.NotificationListenerService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        if (this.f4818d != null) {
            a.b(getApplicationContext()).e(this.f4818d);
        }
    }

    @Override // android.service.notification.NotificationListenerService
    public void onNotificationPosted(StatusBarNotification statusBarNotification) {
        Bundle bundle;
        try {
            Log.e("wbb", "NLService");
            int i = Build.VERSION.SDK_INT;
            if (i >= 26) {
                m10014d(statusBarNotification);
            }
            if (m10015c(statusBarNotification)) {
                Notification notification = statusBarNotification.getNotification();
                if (notification == null) {
                    if (C1227w.f5084a) {
                        C1227w.m9527a("wbb", "notification == null");
                    }
                } else if (i >= 21 && (bundle = notification.extras) != null) {
                    int length = notification.actions.length;
                    String str = notification.category;
                    if (C1227w.f5084a) {
                        C1227w.m9527a("wbb", "actionsSize: " + length);
                        C1227w.m9527a("wbb", "category: " + str);
                    }
                    String string = bundle.getString("android.title", "");
                    String string2 = bundle.getString("android.text", "");
                    if (C1227w.f5084a) {
                        C1227w.m9527a("wbb", "title: " + string);
                        C1227w.m9527a("wbb", "content: " + string2);
                    }
                    if (length == 2) {
                        if (C1227w.f5084a) {
                            C1227w.m9527a("wbb", "来电响铃");
                        }
                        C1219u0.f5078a = 1;
                        if (C1219u0.m9546c(string)) {
                            C1186k.m9816c().m9812g("whatsapp_incoming");
                            String country_code = C1184j.m9826d(getApplicationContext()).getCountry_code();
                            C1062a.m10274a(country_code, country_code, string, new a(this));
                        }
                    } else if (length == 1) {
                        if (C1227w.f5084a) {
                            C1227w.m9527a("wbb", "去电响铃");
                        }
                        if (C1219u0.f5078a != 1) {
                            C1219u0.f5078a = 2;
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.service.notification.NotificationListenerService
    public void onNotificationRemoved(StatusBarNotification statusBarNotification) {
        Notification notification;
        try {
            if (Build.VERSION.SDK_INT >= 21 && m10015c(statusBarNotification) && (notification = statusBarNotification.getNotification()) != null) {
                int length = notification.actions.length;
                String str = notification.category;
                if (C1227w.f5084a) {
                    C1227w.m9527a("wbb", "onNotificationRemoved-actionsSize: " + length);
                    C1227w.m9527a("wbb", "onNotificationRemoved-category: " + str);
                }
                if (C1219u0.f5078a == 1) {
                    if (length == 1) {
                        C1219u0.f5078a = 4;
                    } else if (length == 2) {
                        C1219u0.f5078a = 3;
                    }
                    Bundle bundle = notification.extras;
                    if (bundle != null) {
                        String string = bundle.getString("android.title", "");
                        String string2 = bundle.getString("android.text", "");
                        if (C1227w.f5084a) {
                            C1227w.m9527a("wbb", "call_status" + C1219u0.f5078a);
                            C1227w.m9527a("wbb", "onNotificationRemoved-title: " + string);
                            C1227w.m9527a("wbb", "onNotificationRemoved-content: " + string2);
                        }
                        C1219u0.m9544e(string, C1219u0.f5078a);
                    }
                    C1219u0.f5078a = 0;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Log.e("wbb", "onStartCommand");
        return super.onStartCommand(intent, i, i2);
    }
}
