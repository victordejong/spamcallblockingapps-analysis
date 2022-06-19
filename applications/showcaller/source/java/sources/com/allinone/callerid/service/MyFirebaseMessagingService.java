package com.allinone.callerid.service;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import androidx.core.app.C0565h;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$mipmap;
import com.allinone.callerid.mvc.controller.MainActivity;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3767h1;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/MyFirebaseMessagingService.class */
public class MyFirebaseMessagingService extends FirebaseMessagingService {
    /* renamed from: t */
    private void m24854t(String str, String str2, String str3) {
        Intent intent;
        try {
            if (C3767h1.m24228q0()) {
                return;
            }
            NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
            Intent intent2 = new Intent();
            intent2.addFlags(268435456);
            if ("offline_notifi".equals(str3)) {
                intent2.setClass(this, MainActivity.class);
                intent2.putExtra("offline_notifi", "open_offline");
                intent = intent2;
            } else if ("callscreen".equals(str3)) {
                intent2.setClass(this, MainActivity.class);
                intent2.putExtra("is_callscreen", true);
                intent = intent2;
            } else if ("open_version_update".equals(str3)) {
                try {
                    Intent launchIntentForPackage = getApplicationContext().getPackageManager().getLaunchIntentForPackage("com.android.vending");
                    ComponentName componentName = new ComponentName("com.android.vending", "com.google.android.finsky.activities.LaunchUrlHandlerActivity");
                    intent = launchIntentForPackage;
                    if (launchIntentForPackage != null) {
                        launchIntentForPackage.setComponent(componentName);
                        launchIntentForPackage.setData(Uri.parse("market://details?id=" + getApplicationContext().getPackageName()));
                        launchIntentForPackage.setFlags(268435456);
                        intent = launchIntentForPackage;
                    }
                } catch (Exception e) {
                    intent = new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=" + getApplicationContext().getPackageName()));
                    intent.setFlags(268435456);
                }
            } else {
                intent2.setClass(this, MainActivity.class);
                intent = intent2;
            }
            PendingIntent activity = PendingIntent.getActivity(this, 1, intent, 201326592);
            C0565h.C0574e c0574e = new C0565h.C0574e(this, "Showcaller");
            int i = Build.VERSION.SDK_INT;
            if (i >= 26) {
                NotificationChannel notificationChannel = new NotificationChannel("com.allinone.callerid_notfication_N", "Showcaller", 3);
                if (notificationManager != null) {
                    notificationManager.createNotificationChannel(notificationChannel);
                    c0574e.m33423g("com.allinone.callerid_notfication_N");
                }
            }
            c0574e.m33419k(str).m33420j(str2).m33421i(activity).m33405y("Showcaller").m33430B(System.currentTimeMillis()).m33410t(0).m33411s(false).m33424f(true);
            if (i >= 21) {
                try {
                    getDrawable(R$drawable.msg_icon);
                    c0574e.m33408v(R$drawable.msg_icon);
                    c0574e.m33422h(getResources().getColor(2131099706));
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            } else {
                c0574e.m33408v(R$drawable.ic_launcher24);
                c0574e.m33415o(BitmapFactory.decodeResource(getResources(), R$mipmap.ic_launcher));
            }
            if (notificationManager == null) {
                return;
            }
            notificationManager.notify(6688, c0574e.m33428b());
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    /* renamed from: o */
    public void mo1353o(RemoteMessage remoteMessage) {
        C3718c0.m24436a("fcm", "From: " + remoteMessage.m1347l0());
        String str = null;
        if (remoteMessage.m1348k0().size() > 0) {
            C3718c0.m24436a("fcm", "Message data payload: " + remoteMessage.m1348k0());
            Map<String, String> m1348k0 = remoteMessage.m1348k0();
            str = null;
            if (m1348k0.containsKey("callscreen")) {
                str = m1348k0.get("callscreen");
            }
            if (m1348k0.containsKey("offline_notifi")) {
                str = m1348k0.get("offline_notifi");
            }
            if (m1348k0.containsKey("version_update_notifi")) {
                str = m1348k0.get("version_update_notifi");
            }
        }
        if (remoteMessage.m1346m0() != null) {
            C3718c0.m24436a("fcm", "Message Notification Title: " + remoteMessage.m1346m0().m1343c());
            C3718c0.m24436a("fcm", "Message Notification Body: " + remoteMessage.m1346m0().m1345a());
            m24854t(remoteMessage.m1346m0().m1343c(), remoteMessage.m1346m0().m1345a(), str);
        }
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    /* renamed from: q */
    public void mo1351q(String str) {
        super.mo1351q(str);
        if (C3718c0.f11914a) {
            C3718c0.m24436a("fcm", "Refreshed token: " + str);
        }
    }
}
