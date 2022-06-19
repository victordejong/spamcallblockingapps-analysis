package com.mglab.scm.visual;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import ba.C0748b;
import java.util.Locale;
import p026c0.C0805m;
import p095f8.C2779g;
import p095f8.C2780h;
import p149k8.C3392h;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/MGNotification.class */
public class MGNotification {

    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/MGNotification$notificationButtonListener.class */
    public static class notificationButtonListener extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            C2780h.m3049g0(context, "psetapponoff", !C2780h.m3084E(context));
            C2779g.m3119N(context);
            C0748b.m7409b().m7404g(new C3392h(0));
        }
    }

    /* renamed from: a */
    public static String m3935a(Locale locale, int i, Context context) {
        Configuration configuration = new Configuration(context.getResources().getConfiguration());
        configuration.setLocale(locale);
        return context.createConfigurationContext(configuration).getText(i).toString();
    }

    /* renamed from: b */
    public static void m3934b(Context context, String str, String str2, int i) {
        String packageName = context.getPackageName();
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + packageName));
        intent.setFlags(268468224);
        PendingIntent activity = Build.VERSION.SDK_INT >= 31 ? PendingIntent.getActivity(context, 0, intent, 33554432) : PendingIntent.getActivity(context, 0, intent, 0);
        C0805m c0805m = new C0805m(context, "SCM_DEFAULT");
        c0805m.m7356d(str);
        c0805m.m7357c(str2);
        c0805m.m7355e(16, true);
        c0805m.m7354f(BitmapFactory.decodeResource(context.getResources(), 2131623936));
        c0805m.f2980q.icon = 2131230988;
        c0805m.f2970g = activity;
        ((NotificationManager) context.getSystemService("notification")).notify(i, c0805m.m7359a());
    }

    /* renamed from: c */
    public static void m3933c(Context context) {
        Locale locale = new Locale(C2780h.m3075N(context));
        m3934b(context, m3935a(locale, 2131820591, context), m3935a(locale, 2131820592, context), 755786);
    }

    /* renamed from: d */
    public static void m3932d(Context context) {
        Locale locale = new Locale(C2780h.m3075N(context));
        m3934b(context, m3935a(locale, 2131820653, context).replace("%s", String.valueOf(C2780h.m3054e(context))), m3935a(locale, 2131820958, context), 755787);
    }
}
