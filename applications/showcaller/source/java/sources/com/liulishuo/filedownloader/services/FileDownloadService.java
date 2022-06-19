package com.liulishuo.filedownloader.services;

import android.annotation.SuppressLint;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import com.liulishuo.filedownloader.download.C9351c;
import java.lang.ref.WeakReference;
import p078c.p122d.p123a.C1985b0;
import p078c.p122d.p123a.p126g0.AbstractC2018b;
import p078c.p122d.p123a.p128i0.C2031c;
import p078c.p122d.p123a.p128i0.C2036d;
import p078c.p122d.p123a.p128i0.C2037e;
import p078c.p122d.p123a.p128i0.C2040f;
@SuppressLint({"Registered"})
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/services/FileDownloadService.class */
public class FileDownloadService extends Service {

    /* renamed from: d */
    private AbstractC9394j f40122d;

    /* renamed from: e */
    private C1985b0 f40123e;

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/services/FileDownloadService$SeparateProcessService.class */
    public static class SeparateProcessService extends FileDownloadService {
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/services/FileDownloadService$SharedMainProcessService.class */
    public static class SharedMainProcessService extends FileDownloadService {
    }

    /* renamed from: a */
    private void m819a(Intent intent) {
        if (intent != null && intent.getBooleanExtra("is_foreground", false)) {
            C9391i m981h = C9351c.m979j().m981h();
            if (m981h.m746f() && Build.VERSION.SDK_INT >= 26) {
                NotificationChannel notificationChannel = new NotificationChannel(m981h.m749c(), m981h.m748d(), 2);
                NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
                if (notificationManager == null) {
                    return;
                }
                notificationManager.createNotificationChannel(notificationChannel);
            }
            startForeground(m981h.m747e(), m981h.m750b(this));
            if (!C2036d.f7151a) {
                return;
            }
            C2036d.m28253a(this, "run service foreground with config: %s", m981h);
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f40122d.mo737c0(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        C2031c.m28261b(this);
        try {
            C2040f.m28222T(C2037e.m28244a().f7152a);
            C2040f.m28221U(C2037e.m28244a().f7153b);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
        C9389g c9389g = new C9389g();
        if (C2037e.m28244a().f7155d) {
            this.f40122d = new BinderC9386e(new WeakReference(this), c9389g);
        } else {
            this.f40122d = new BinderC9385d(new WeakReference(this), c9389g);
        }
        C1985b0.m28411a();
        C1985b0 c1985b0 = new C1985b0((AbstractC2018b) this.f40122d);
        this.f40123e = c1985b0;
        c1985b0.m28408d();
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.f40123e.m28407e();
        stopForeground(true);
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        this.f40122d.mo738J0(intent, i, i2);
        m819a(intent);
        return 1;
    }
}
