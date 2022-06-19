package com.google.android.play.core.assetpacks;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import com.google.android.play.core.internal.C8466a;
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/ExtractionForegroundService.class */
public class ExtractionForegroundService extends Service {

    /* renamed from: d */
    private final C8466a f37651d = new C8466a("ExtractionForegroundService");

    /* renamed from: e */
    Context f37652e;

    /* renamed from: f */
    C8385f2 f37653f;

    /* renamed from: g */
    NotificationManager f37654g;

    /* renamed from: a */
    private final void m3793a(Intent intent) {
        int intExtra;
        synchronized (this) {
            String stringExtra = intent.getStringExtra("notification_title");
            String stringExtra2 = intent.getStringExtra("notification_subtext");
            long longExtra = intent.getLongExtra("notification_timeout", 600000L);
            PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra("notification_on_click_intent");
            int i = Build.VERSION.SDK_INT;
            Notification.Builder timeoutAfter = i >= 26 ? new Notification.Builder(this.f37652e, "playcore-assetpacks-service-notification-channel").setTimeoutAfter(longExtra) : new Notification.Builder(this.f37652e).setPriority(-2);
            if (pendingIntent != null) {
                timeoutAfter.setContentIntent(pendingIntent);
            }
            Notification.Builder contentTitle = timeoutAfter.setSmallIcon(17301633).setOngoing(false).setContentTitle(stringExtra == null ? "Downloading additional file" : stringExtra);
            if (stringExtra2 == null) {
                stringExtra = "Transferring";
            }
            contentTitle.setSubText(stringExtra);
            if (i >= 21 && (intExtra = intent.getIntExtra("notification_color", 0)) != 0) {
                timeoutAfter.setColor(intExtra).setVisibility(-1);
            }
            Notification build = timeoutAfter.build();
            this.f37651d.m3564d("Starting foreground installation service.", new Object[0]);
            this.f37653f.m3758a(true);
            if (i >= 26) {
                m3791c(intent.getStringExtra("notification_channel_name"));
            }
            startForeground(-1883842196, build);
        }
    }

    /* renamed from: b */
    private final void m3792b() {
        synchronized (this) {
            this.f37651d.m3564d("Stopping service.", new Object[0]);
            this.f37653f.m3758a(false);
            stopForeground(true);
            stopSelf();
        }
    }

    @TargetApi(26)
    /* renamed from: c */
    private final void m3791c(String str) {
        synchronized (this) {
            String str2 = str;
            if (str == null) {
                str2 = "File downloads by Play";
            }
            this.f37654g.createNotificationChannel(new NotificationChannel("playcore-assetpacks-service-notification-channel", str2, 2));
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        C8392h1.m3735h(getApplicationContext()).mo3744a(this);
        this.f37654g = (NotificationManager) this.f37652e.getSystemService("notification");
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        m3793a(intent);
        int intExtra = intent.getIntExtra("action_type", 0);
        if (intExtra == 2) {
            m3792b();
            return 2;
        }
        this.f37651d.m3566b("Unknown action type received: %d", Integer.valueOf(intExtra));
        return 2;
    }
}
