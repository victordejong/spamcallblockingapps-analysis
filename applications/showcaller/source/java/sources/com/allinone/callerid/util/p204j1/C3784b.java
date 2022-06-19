package com.allinone.callerid.util.p204j1;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.media.session.MediaController;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.Log;
import android.view.KeyEvent;
import com.allinone.callerid.mvc.controller.GuideNotifiPerActivity;
import com.allinone.callerid.util.C3711a1;
/* renamed from: com.allinone.callerid.util.j1.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/j1/b.class */
public class C3784b {

    /* renamed from: a */
    public static boolean f12036a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.j1.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/j1/b$a.class */
    public class RunnableC3785a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ Context f12037d;

        RunnableC3785a(Context context) {
            this.f12037d = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent(this.f12037d, GuideNotifiPerActivity.class);
            intent.addFlags(268435456);
            this.f12037d.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.j1.b$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/j1/b$b.class */
    public class RunnableC3786b implements Runnable {

        /* renamed from: d */
        final /* synthetic */ Context f12038d;

        RunnableC3786b(Context context) {
            this.f12038d = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent(this.f12038d, GuideNotifiPerActivity.class);
            intent.addFlags(268435456);
            this.f12038d.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.j1.b$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/j1/b$c.class */
    public class RunnableC3787c implements Runnable {
        RunnableC3787c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C3711a1.m24584T2(Boolean.FALSE);
            C3711a1.m24608N2(Boolean.TRUE);
        }
    }

    /* renamed from: a */
    public static boolean m24145a(Context context) {
        return Build.VERSION.SDK_INT >= 21 ? m24142d(context) : true;
    }

    /* renamed from: b */
    public static boolean m24144b(Context context) {
        return Build.VERSION.SDK_INT >= 26 && m24142d(context);
    }

    /* renamed from: c */
    public static boolean m24143c(Context context) {
        try {
            new Handler().postDelayed(new RunnableC3785a(context), 500L);
            Intent intent = new Intent("android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS");
            intent.addFlags(268435456);
            context.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException e) {
            try {
                new Handler().postDelayed(new RunnableC3786b(context), 500L);
                Intent intent2 = new Intent();
                intent2.addFlags(268435456);
                intent2.setComponent(new ComponentName("com.android.settings", "com.android.settings.Settings$NotificationAccessSettingsActivity"));
                intent2.putExtra(":settings:show_fragment", "NotificationAccessSettings");
                context.startActivity(intent2);
                return true;
            } catch (Exception e2) {
                e2.printStackTrace();
                return false;
            }
        }
    }

    /* renamed from: d */
    public static boolean m24142d(Context context) {
        String packageName = context.getPackageName();
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
        return string != null ? string.contains(packageName) : false;
    }

    /* renamed from: e */
    private static void m24141e(KeyEvent keyEvent, MediaController mediaController) {
        mediaController.dispatchMediaButtonEvent(keyEvent);
    }

    /* renamed from: f */
    public static void m24140f(int i, MediaController mediaController) {
        KeyEvent keyEvent = new KeyEvent(0, i);
        m24141e(keyEvent, mediaController);
        m24139g(500);
        for (int i2 = 0; i2 < 50; i2++) {
            m24141e(KeyEvent.changeTimeRepeat(keyEvent, SystemClock.uptimeMillis(), i2, keyEvent.getFlags() | 128), mediaController);
            m24139g(5);
        }
        m24141e(new KeyEvent(1, i), mediaController);
        new Handler(Looper.getMainLooper()).postDelayed(new RunnableC3787c(), 2000L);
    }

    /* renamed from: g */
    private static void m24139g(int i) {
        try {
            Thread.sleep(i);
        } catch (InterruptedException e) {
            Log.e("wjjj", "Could not sleep. Mosquito alert!", e);
        }
    }
}
