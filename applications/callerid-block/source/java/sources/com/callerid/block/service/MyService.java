package com.callerid.block.service;

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
import androidx.core.app.C0253i;
import androidx.core.content.C0265a;
import com.callerid.block.R$color;
import com.callerid.block.R$drawable;
import com.callerid.block.R$string;
import com.callerid.block.receiver.PhoneStateReceiver;
import com.callerid.block.receiver.ScreenReceiver;
import com.callerid.block.start.CallerActivity;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import com.zhy.http.okhttp.OkHttpUtils;
/* loaded from: classes-dex2jar.jar:com/callerid/block/service/MyService.class */
public class MyService extends Service {

    /* renamed from: b */
    private boolean f4812b;

    /* renamed from: c */
    private PhoneStateReceiver f4813c;

    /* renamed from: d */
    private ScreenReceiver f4814d;

    /* loaded from: classes-dex2jar.jar:com/callerid/block/service/MyService$InnerService.class */
    public static class InnerService extends Service {
        @Override // android.app.Service
        public IBinder onBind(Intent intent) {
            return null;
        }

        @Override // android.app.Service
        public int onStartCommand(Intent intent, int i, int i2) {
            startForeground(970, new Notification());
            stopForeground(true);
            stopSelf();
            return super.onStartCommand(intent, i, i2);
        }
    }

    /* renamed from: com.callerid.block.service.MyService$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/service/MyService$a.class */
    class ServiceConnectionC1129a implements ServiceConnection {
        ServiceConnectionC1129a() {
            MyService.this = r4;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            MyService m9991a;
            try {
                if ((iBinder instanceof BinderC1135a) && (m9991a = ((BinderC1135a) iBinder).m9991a()) != null) {
                    m9991a.m10019a();
                }
                MyService.this.getApplicationContext().unbindService(this);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* renamed from: b */
    private void m10018b() {
        try {
            Intent intent = new Intent(getApplicationContext(), MyService.class);
            AlarmManager alarmManager = (AlarmManager) getSystemService("alarm");
            PendingIntent service = PendingIntent.getService(this, 0, intent, 268435456);
            long currentTimeMillis = System.currentTimeMillis();
            if (alarmManager == null) {
                return;
            }
            alarmManager.setInexactRepeating(1, currentTimeMillis, OkHttpUtils.DEFAULT_MILLISECONDS, service);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public void m10019a() {
        try {
            if (Build.VERSION.SDK_INT < 26) {
                return;
            }
            if (C1227w.f5084a) {
                C1227w.m9527a("tony", "NotificationManager");
            }
            C0265a.m13545l(this, new Intent(this, MyService.class));
            NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
            if (notificationManager == null) {
                return;
            }
            NotificationChannel notificationChannel = new NotificationChannel("com.callerid.block_notfication_N", getString(2131755055), 1);
            notificationChannel.setShowBadge(false);
            notificationChannel.enableVibration(false);
            notificationChannel.setVibrationPattern(new long[]{0});
            notificationManager.createNotificationChannel(notificationChannel);
            C0253i.C0256e c0256e = new C0253i.C0256e(this, "com.callerid.block_notfication_N");
            Intent intent = new Intent(this, CallerActivity.class);
            intent.addFlags(268435456);
            c0256e.m13617h(PendingIntent.getActivity(this, 0, intent, 134217728));
            c0256e.m13615j(getString(R$string.callerid_is_enabled));
            c0256e.m13604u(R$drawable.icon_small);
            c0256e.m13618g(getResources().getColor(R$color.colorPrimary));
            startForeground(970, c0256e.m13624a());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        m10019a();
        this.f4812b = true;
        m10018b();
        C1227w.m9527a("tony", "onCreate");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.setPriority(1000);
        intentFilter.addAction("android.intent.action.NEW_OUTGOING_CALL");
        intentFilter.addAction("android.intent.action.PHONE_STATE");
        PhoneStateReceiver phoneStateReceiver = new PhoneStateReceiver();
        this.f4813c = phoneStateReceiver;
        registerReceiver(phoneStateReceiver, intentFilter);
        if (Build.VERSION.SDK_INT < 28) {
            IntentFilter intentFilter2 = new IntentFilter();
            intentFilter2.addAction("android.intent.action.SCREEN_OFF");
            intentFilter2.setPriority(1000);
            ScreenReceiver screenReceiver = new ScreenReceiver();
            this.f4814d = screenReceiver;
            registerReceiver(screenReceiver, intentFilter2);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        ScreenReceiver screenReceiver;
        C1227w.m9527a("tony", "onDestroy");
        super.onDestroy();
        int i = Build.VERSION.SDK_INT;
        if (i < 28 && (screenReceiver = this.f4814d) != null) {
            unregisterReceiver(screenReceiver);
        }
        PhoneStateReceiver phoneStateReceiver = this.f4813c;
        if (phoneStateReceiver != null) {
            unregisterReceiver(phoneStateReceiver);
        }
        stopForeground(true);
        if (i >= 26) {
            getApplicationContext().bindService(new Intent(getApplicationContext(), MyService.class), new ServiceConnectionC1129a(), 1);
            return;
        }
        try {
            startService(new Intent(this, MyService.class));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Notification m13624a;
        if (this.f4812b) {
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 18) {
                if (i3 < 26) {
                    if (!C1216t0.m9591U()) {
                        startForeground(970, new Notification());
                        startService(new Intent(this, InnerService.class));
                    }
                } else if (intent != null && intent.getBooleanExtra("show_notifi", false)) {
                    if (C1227w.f5084a) {
                        C1227w.m9527a("tony", "NotificationManager");
                    }
                    NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
                    if (notificationManager != null) {
                        NotificationChannel notificationChannel = new NotificationChannel("com.callerid.block_notfication_N", getString(2131755055), 1);
                        notificationChannel.setShowBadge(false);
                        notificationChannel.enableVibration(false);
                        notificationChannel.setVibrationPattern(new long[]{0});
                        notificationManager.createNotificationChannel(notificationChannel);
                        C0253i.C0256e c0256e = new C0253i.C0256e(this, "com.callerid.block_notfication_N");
                        Intent intent2 = new Intent(this, CallerActivity.class);
                        intent2.addFlags(268435456);
                        c0256e.m13617h(PendingIntent.getActivity(this, 0, intent2, 134217728));
                        c0256e.m13615j(getString(R$string.callerid_is_enabled));
                        c0256e.m13604u(R$drawable.icon_small);
                        c0256e.m13618g(getResources().getColor(R$color.colorPrimary));
                        m13624a = c0256e.m13624a();
                    }
                }
                this.f4812b = false;
                return 1;
            }
            m13624a = new Notification();
            startForeground(970, m13624a);
            this.f4812b = false;
            return 1;
        }
        return 1;
    }
}
