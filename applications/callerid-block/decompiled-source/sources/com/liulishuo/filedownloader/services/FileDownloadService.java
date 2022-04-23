package com.liulishuo.filedownloader.services;

import android.annotation.SuppressLint;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import com.liulishuo.filedownloader.download.C2746c;
import java.lang.ref.WeakReference;
import p092e.p096e.p097a.C3010a0;
import p092e.p096e.p097a.p100f0.AbstractC3043b;
import p092e.p096e.p097a.p102h0.C3056c;
import p092e.p096e.p097a.p102h0.C3062d;
import p092e.p096e.p097a.p102h0.C3063e;
import p092e.p096e.p097a.p102h0.C3066f;
@SuppressLint({"Registered"})
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/services/FileDownloadService.class */
public class FileDownloadService extends Service {

    /* renamed from: b */
    private AbstractC2789j f11525b;

    /* renamed from: c */
    private C3010a0 f11526c;

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/services/FileDownloadService$SeparateProcessService.class */
    public static class SeparateProcessService extends FileDownloadService {
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/services/FileDownloadService$SharedMainProcessService.class */
    public static class SharedMainProcessService extends FileDownloadService {
    }

    /* renamed from: a */
    private void m1774a(Intent intent) {
        if (intent != null && intent.getBooleanExtra("is_foreground", false)) {
            C2786i h = C2746c.m1933j().m1935h();
            if (h.m1729f() && Build.VERSION.SDK_INT >= 26) {
                NotificationChannel notificationChannel = new NotificationChannel(h.m1732c(), h.m1731d(), 2);
                NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
                if (notificationManager != null) {
                    notificationManager.createNotificationChannel(notificationChannel);
                } else {
                    return;
                }
            }
            startForeground(h.m1730e(), h.m1733b(this));
            if (C3062d.f12682a) {
                C3062d.m414a(this, "run service foreground with config: %s", h);
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f11525b.mo1720h0(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        C3056c.m425b(this);
        try {
            C3066f.m383T(C3063e.m405a().f12683a);
            C3066f.m382U(C3063e.m405a().f12684b);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
        C2784g gVar = new C2784g();
        this.f11525b = C3063e.m405a().f12686d ? new BinderC2781e(new WeakReference(this), gVar) : new BinderC2780d(new WeakReference(this), gVar);
        C3010a0.m588a();
        C3010a0 a0Var = new C3010a0((AbstractC3043b) this.f11525b);
        this.f11526c = a0Var;
        a0Var.m585d();
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.f11526c.m584e();
        stopForeground(true);
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        this.f11525b.mo1721M1(intent, i, i2);
        m1774a(intent);
        return 1;
    }
}
