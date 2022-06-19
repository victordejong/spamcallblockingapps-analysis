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
import com.huawei.hms.push.constant.RemoteMessageConst;
import e.m.a.h.a.a.f3;
import e.m.a.h.a.a.t0;
import e.m.a.h.a.d.g;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
/* loaded from: classes3-dex2jar.jar:com/google/android/play/core/assetpacks/ExtractionForegroundService.class */
public class ExtractionForegroundService extends Service {

    /* renamed from: a */
    public final g f6995a = new g("ExtractionForegroundService");

    /* renamed from: b */
    public Context f6996b;

    /* renamed from: c */
    public f3 f6997c;

    /* renamed from: d */
    public NotificationManager f6998d;

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        t0 m2335k2 = C26232y.m2335k2(getApplicationContext());
        Context context = m2335k2.a.a;
        Objects.requireNonNull(context, "Cannot return null from a non-@Nullable @Provides method");
        this.f6996b = context;
        this.f6997c = (f3) m2335k2.A.zza();
        this.f6998d = (NotificationManager) this.f6996b.getSystemService(RemoteMessageConst.NOTIFICATION);
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        synchronized (this) {
            String stringExtra = intent.getStringExtra("notification_title");
            String stringExtra2 = intent.getStringExtra("notification_subtext");
            long longExtra = intent.getLongExtra("notification_timeout", 600000L);
            PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra("notification_on_click_intent");
            int i3 = Build.VERSION.SDK_INT;
            Notification.Builder timeoutAfter = i3 >= 26 ? new Notification.Builder(this.f6996b, "playcore-assetpacks-service-notification-channel").setTimeoutAfter(longExtra) : new Notification.Builder(this.f6996b).setPriority(-2);
            if (pendingIntent != null) {
                timeoutAfter.setContentIntent(pendingIntent);
            }
            Notification.Builder contentTitle = timeoutAfter.setSmallIcon(17301633).setOngoing(false).setContentTitle(stringExtra == null ? "Downloading additional file" : stringExtra);
            if (stringExtra2 == null) {
                stringExtra = "Transferring";
            }
            contentTitle.setSubText(stringExtra);
            int intExtra = intent.getIntExtra("notification_color", 0);
            if (intExtra != 0) {
                timeoutAfter.setColor(intExtra).setVisibility(-1);
            }
            Notification build = timeoutAfter.build();
            this.f6995a.d("Starting foreground installation service.", new Object[0]);
            this.f6997c.a(true);
            if (i3 >= 26) {
                String stringExtra3 = intent.getStringExtra("notification_channel_name");
                synchronized (this) {
                    String str = stringExtra3;
                    if (stringExtra3 == null) {
                        str = "File downloads by Play";
                    }
                    this.f6998d.createNotificationChannel(new NotificationChannel("playcore-assetpacks-service-notification-channel", str, 2));
                }
                return 2;
            }
            startForeground(-1883842196, build);
        }
        int intExtra2 = intent.getIntExtra("action_type", 0);
        if (intExtra2 != 2) {
            this.f6995a.b("Unknown action type received: %d", new Object[]{Integer.valueOf(intExtra2)});
            return 2;
        }
        synchronized (this) {
            this.f6995a.d("Stopping service.", new Object[0]);
            this.f6997c.a(false);
            stopForeground(true);
            stopSelf();
            return 2;
        }
    }
}
