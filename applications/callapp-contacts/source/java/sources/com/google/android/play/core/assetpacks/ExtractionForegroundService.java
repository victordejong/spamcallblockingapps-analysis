package com.google.android.play.core.assetpacks;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import com.google.android.play.core.internal.C15072h;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/ExtractionForegroundService.class */
public class ExtractionForegroundService extends Service {

    /* renamed from: a */
    Context f54366a;

    /* renamed from: b */
    C14961ch f54367b;

    /* renamed from: c */
    NotificationManager f54368c;

    /* renamed from: d */
    private final C15072h f54369d = new C15072h("ExtractionForegroundService");

    /* renamed from: a */
    private final void m9792a() {
        synchronized (this) {
            this.f54369d.m9508c("Stopping service.", new Object[0]);
            this.f54367b.m9704a(false);
            stopForeground(true);
            stopSelf();
        }
    }

    /* renamed from: a */
    private final void m9791a(Intent intent) {
        int intExtra;
        synchronized (this) {
            String stringExtra = intent.getStringExtra("notification_title");
            String stringExtra2 = intent.getStringExtra("notification_subtext");
            long longExtra = intent.getLongExtra("notification_timeout", 600000L);
            PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra("notification_on_click_intent");
            Notification.Builder timeoutAfter = Build.VERSION.SDK_INT >= 26 ? new Notification.Builder(this.f54366a, "playcore-assetpacks-service-notification-channel").setTimeoutAfter(longExtra) : new Notification.Builder(this.f54366a).setPriority(-2);
            if (pendingIntent != null) {
                timeoutAfter.setContentIntent(pendingIntent);
            }
            Notification.Builder contentTitle = timeoutAfter.setSmallIcon(17301633).setOngoing(false).setContentTitle(stringExtra == null ? "Downloading additional file" : stringExtra);
            if (stringExtra2 == null) {
                stringExtra = "Transferring";
            }
            contentTitle.setSubText(stringExtra);
            if (Build.VERSION.SDK_INT >= 21 && (intExtra = intent.getIntExtra("notification_color", 0)) != 0) {
                timeoutAfter.setColor(intExtra).setVisibility(-1);
            }
            Notification build = timeoutAfter.build();
            this.f54369d.m9508c("Starting foreground installation service.", new Object[0]);
            this.f54367b.m9704a(true);
            if (Build.VERSION.SDK_INT >= 26) {
                m9790a(intent.getStringExtra("notification_channel_name"));
            }
            startForeground(-1883842196, build);
        }
    }

    /* renamed from: a */
    private final void m9790a(String str) {
        synchronized (this) {
            String str2 = str;
            if (str == null) {
                str2 = "File downloads by Play";
            }
            this.f54368c.createNotificationChannel(new NotificationChannel("playcore-assetpacks-service-notification-channel", str2, 2));
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        C14936bj.m9747a(getApplicationContext()).mo9698a(this);
        this.f54368c = (NotificationManager) this.f54366a.getSystemService("notification");
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        m9791a(intent);
        int intExtra = intent.getIntExtra("action_type", 0);
        if (intExtra == 2) {
            m9792a();
            return 2;
        }
        this.f54369d.m9509b("Unknown action type received: %d", Integer.valueOf(intExtra));
        return 2;
    }
}
