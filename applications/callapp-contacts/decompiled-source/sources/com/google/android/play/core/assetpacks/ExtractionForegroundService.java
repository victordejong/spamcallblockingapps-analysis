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
import com.google.android.play.core.internal.h;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/ExtractionForegroundService.class */
public class ExtractionForegroundService extends Service {

    /* renamed from: a  reason: collision with root package name */
    Context f31078a;

    /* renamed from: b  reason: collision with root package name */
    ch f31079b;

    /* renamed from: c  reason: collision with root package name */
    NotificationManager f31080c;

    /* renamed from: d  reason: collision with root package name */
    private final h f31081d = new h("ExtractionForegroundService");

    private final void a() {
        synchronized (this) {
            this.f31081d.c("Stopping service.", new Object[0]);
            this.f31079b.a(false);
            stopForeground(true);
            stopSelf();
        }
    }

    private final void a(Intent intent) {
        int intExtra;
        synchronized (this) {
            String stringExtra = intent.getStringExtra("notification_title");
            String stringExtra2 = intent.getStringExtra("notification_subtext");
            long longExtra = intent.getLongExtra("notification_timeout", 600000L);
            PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra("notification_on_click_intent");
            Notification.Builder timeoutAfter = Build.VERSION.SDK_INT >= 26 ? new Notification.Builder(this.f31078a, "playcore-assetpacks-service-notification-channel").setTimeoutAfter(longExtra) : new Notification.Builder(this.f31078a).setPriority(-2);
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
            this.f31081d.c("Starting foreground installation service.", new Object[0]);
            this.f31079b.a(true);
            if (Build.VERSION.SDK_INT >= 26) {
                a(intent.getStringExtra("notification_channel_name"));
            }
            startForeground(-1883842196, build);
        }
    }

    private final void a(String str) {
        synchronized (this) {
            String str2 = str;
            if (str == null) {
                str2 = "File downloads by Play";
            }
            this.f31080c.createNotificationChannel(new NotificationChannel("playcore-assetpacks-service-notification-channel", str2, 2));
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        bj.a(getApplicationContext()).a(this);
        this.f31080c = (NotificationManager) this.f31078a.getSystemService("notification");
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        a(intent);
        int intExtra = intent.getIntExtra("action_type", 0);
        if (intExtra == 2) {
            a();
            return 2;
        }
        this.f31081d.b("Unknown action type received: %d", Integer.valueOf(intExtra));
        return 2;
    }
}
