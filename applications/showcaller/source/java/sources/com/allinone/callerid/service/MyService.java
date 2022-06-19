package com.allinone.callerid.service;

import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.IBinder;
import android.os.SystemClock;
import androidx.core.app.C0565h;
import androidx.core.content.C0586a;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$string;
import com.allinone.callerid.receiver.PhoneStateReceiver;
import com.allinone.callerid.start.PushControlActivity;
import com.allinone.callerid.util.C3710a0;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3767h1;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/MyService.class */
public class MyService extends Service {

    /* renamed from: d */
    private boolean f11544d;

    /* renamed from: e */
    private final BinderC3612a f11545e = new BinderC3612a();

    /* renamed from: f */
    private PhoneStateReceiver f11546f;

    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/MyService$InnerService.class */
    public static class InnerService extends Service {
        @Override // android.app.Service
        public IBinder onBind(Intent intent) {
            return null;
        }

        @Override // android.app.Service
        public int onStartCommand(Intent intent, int i, int i2) {
            startForeground(977, new Notification());
            stopForeground(true);
            stopSelf();
            return super.onStartCommand(intent, i, i2);
        }
    }

    /* renamed from: com.allinone.callerid.service.MyService$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/MyService$a.class */
    class ServiceConnectionC3582a implements ServiceConnection {
        ServiceConnectionC3582a() {
            MyService.this = r4;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            MyService m24807a;
            if ((iBinder instanceof BinderC3612a) && (m24807a = ((BinderC3612a) iBinder).m24807a()) != null) {
                m24807a.m24853a();
            }
            MyService.this.getApplicationContext().unbindService(this);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* renamed from: b */
    private void m24852b() {
        try {
            AlarmManager alarmManager = (AlarmManager) getSystemService("alarm");
            PendingIntent service = PendingIntent.getService(getApplicationContext(), 1024, new Intent(getApplication(), MyService.class), 67108864);
            alarmManager.cancel(service);
            alarmManager.setInexactRepeating(2, SystemClock.elapsedRealtime() + 30000, 30000L, service);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public void m24853a() {
        if (Build.VERSION.SDK_INT >= 26) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("tony", "NotificationManager");
            }
            C0586a.m33342l(this, new Intent(this, MyService.class));
            NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
            if (notificationManager == null) {
                return;
            }
            NotificationChannel notificationChannel = new NotificationChannel("com.allinone.callerid_notfication_N", getString(2131755110), 1);
            notificationChannel.setShowBadge(false);
            notificationChannel.enableVibration(false);
            notificationChannel.setVibrationPattern(new long[]{0});
            notificationManager.createNotificationChannel(notificationChannel);
            C0565h.C0574e c0574e = new C0565h.C0574e(this, "com.allinone.callerid_notfication_N");
            Intent intent = new Intent(this, PushControlActivity.class);
            intent.addFlags(268435456);
            c0574e.m33421i(PendingIntent.getActivity(this, 0, intent, 201326592));
            c0574e.m33419k(getString(R$string.showcaller_is_enabled));
            c0574e.m33408v(R$drawable.msg_icon);
            c0574e.m33422h(getResources().getColor(2131099706));
            startForeground(977, c0574e.m33428b());
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        this.f11545e.m24806b(this);
        return this.f11545e;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (C3718c0.f11914a) {
            C3718c0.m24436a("tony", "MyService_onCreate");
        }
        m24853a();
        this.f11544d = true;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.setPriority(1000);
        intentFilter.addAction("android.intent.action.NEW_OUTGOING_CALL");
        intentFilter.addAction("android.intent.action.PHONE_STATE");
        PhoneStateReceiver phoneStateReceiver = new PhoneStateReceiver();
        this.f11546f = phoneStateReceiver;
        registerReceiver(phoneStateReceiver, intentFilter);
        int i = Build.VERSION.SDK_INT;
        if (i < 28) {
            C3710a0.m24668b().m24667c(getApplicationContext());
        }
        if (i < 23) {
            m24852b();
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        try {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("tony", "MyService_onDestroy");
            }
            int i = Build.VERSION.SDK_INT;
            if (i < 28) {
                C3710a0.m24668b().m24664f(getApplicationContext());
            }
            PhoneStateReceiver phoneStateReceiver = this.f11546f;
            if (phoneStateReceiver != null) {
                unregisterReceiver(phoneStateReceiver);
            }
            stopForeground(true);
            if (i < 26) {
                startService(new Intent(this, MyService.class));
            } else if (i >= 31) {
            } else {
                getApplicationContext().bindService(new Intent(getApplicationContext(), MyService.class), new ServiceConnectionC3582a(), 1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (C3718c0.f11914a) {
            C3718c0.m24436a("tony", "onStartCommand");
        }
        try {
            if (!this.f11544d) {
                return 1;
            }
            int i3 = Build.VERSION.SDK_INT;
            if (i3 < 18) {
                startForeground(977, new Notification());
            } else if (i3 >= 26) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("tony", "NotificationManager");
                }
                NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
                if (notificationManager != null) {
                    NotificationChannel notificationChannel = new NotificationChannel("com.allinone.callerid_notfication_N", getString(2131755110), 1);
                    notificationChannel.setShowBadge(false);
                    notificationChannel.enableVibration(false);
                    notificationChannel.setVibrationPattern(new long[]{0});
                    notificationManager.createNotificationChannel(notificationChannel);
                    C0565h.C0574e c0574e = new C0565h.C0574e(this, "com.allinone.callerid_notfication_N");
                    Intent intent2 = new Intent(this, PushControlActivity.class);
                    intent2.addFlags(268435456);
                    c0574e.m33421i(PendingIntent.getActivity(this, 0, intent2, 201326592));
                    c0574e.m33419k(getString(R$string.showcaller_is_enabled));
                    c0574e.m33408v(R$drawable.msg_icon);
                    c0574e.m33422h(getResources().getColor(2131099706));
                    startForeground(977, c0574e.m33428b());
                }
            } else if (!C3767h1.m24228q0()) {
                startForeground(977, new Notification());
                startService(new Intent(this, InnerService.class));
            }
            this.f11544d = false;
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
            return 1;
        }
    }
}
