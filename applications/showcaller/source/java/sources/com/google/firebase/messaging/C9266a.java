package com.google.firebase.messaging;

import android.annotation.TargetApi;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.C0565h;
import androidx.core.content.C0586a;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.firebase.messaging.a */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/a.class */
public final class C9266a {

    /* renamed from: a */
    private static final AtomicInteger f39752a = new AtomicInteger((int) SystemClock.elapsedRealtime());

    /* renamed from: com.google.firebase.messaging.a$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/a$a.class */
    public static class C9267a {

        /* renamed from: a */
        public final C0565h.C0574e f39753a;

        /* renamed from: b */
        public final String f39754b;

        /* renamed from: c */
        public final int f39755c = 0;

        C9267a(C0565h.C0574e c0574e, String str, int i) {
            this.f39753a = c0574e;
            this.f39754b = str;
        }
    }

    /* renamed from: a */
    private static PendingIntent m1341a(Context context, C9283g0 c9283g0, String str, PackageManager packageManager) {
        Intent m1336f = m1336f(str, c9283g0, packageManager);
        if (m1336f == null) {
            return null;
        }
        m1336f.addFlags(67108864);
        m1336f.putExtras(c9283g0.m1232y());
        PendingIntent activity = PendingIntent.getActivity(context, m1335g(), m1336f, m1330l(1073741824));
        return m1325q(c9283g0) ? m1324r(context, c9283g0, activity) : activity;
    }

    /* renamed from: b */
    private static PendingIntent m1340b(Context context, C9283g0 c9283g0) {
        if (!m1325q(c9283g0)) {
            return null;
        }
        return m1339c(context, new Intent("com.google.firebase.messaging.NOTIFICATION_DISMISS").putExtras(c9283g0.m1233x()));
    }

    /* renamed from: c */
    private static PendingIntent m1339c(Context context, Intent intent) {
        return PendingIntent.getBroadcast(context, m1335g(), new Intent("com.google.firebase.MESSAGING_EVENT").setComponent(new ComponentName(context, "com.google.firebase.iid.FirebaseInstanceIdReceiver")).putExtra("wrapped_intent", intent), m1330l(1073741824));
    }

    /* renamed from: d */
    public static C9267a m1338d(Context context, C9283g0 c9283g0) {
        Bundle m1332j = m1332j(context.getPackageManager(), context.getPackageName());
        return m1337e(context, context.getPackageName(), c9283g0, m1331k(context, c9283g0.m1246k(), m1332j), context.getResources(), context.getPackageManager(), m1332j);
    }

    /* renamed from: e */
    public static C9267a m1337e(Context context, String str, C9283g0 c9283g0, String str2, Resources resources, PackageManager packageManager, Bundle bundle) {
        C0565h.C0574e c0574e = new C0565h.C0574e(context, str2);
        String m1243n = c9283g0.m1243n(resources, str, "gcm.n.title");
        if (!TextUtils.isEmpty(m1243n)) {
            c0574e.m33419k(m1243n);
        }
        String m1243n2 = c9283g0.m1243n(resources, str, "gcm.n.body");
        if (!TextUtils.isEmpty(m1243n2)) {
            c0574e.m33420j(m1243n2);
            c0574e.m33406x(new C0565h.C0570c().m33435h(m1243n2));
        }
        c0574e.m33408v(m1329m(packageManager, resources, str, c9283g0.m1241p("gcm.n.icon"), bundle));
        Uri m1328n = m1328n(str, c9283g0, resources);
        if (m1328n != null) {
            c0574e.m33407w(m1328n);
        }
        c0574e.m33421i(m1341a(context, c9283g0, str, packageManager));
        PendingIntent m1340b = m1340b(context, c9283g0);
        if (m1340b != null) {
            c0574e.m33417m(m1340b);
        }
        Integer m1334h = m1334h(context, c9283g0.m1241p("gcm.n.color"), bundle);
        if (m1334h != null) {
            c0574e.m33422h(m1334h.intValue());
        }
        c0574e.m33424f(!c9283g0.m1256a("gcm.n.sticky"));
        c0574e.m33413q(c9283g0.m1256a("gcm.n.local_only"));
        String m1241p = c9283g0.m1241p("gcm.n.ticker");
        if (m1241p != null) {
            c0574e.m33405y(m1241p);
        }
        Integer m1244m = c9283g0.m1244m();
        if (m1244m != null) {
            c0574e.m33410t(m1244m.intValue());
        }
        Integer m1239r = c9283g0.m1239r();
        if (m1239r != null) {
            c0574e.m33431A(m1239r.intValue());
        }
        Integer m1245l = c9283g0.m1245l();
        if (m1245l != null) {
            c0574e.m33412r(m1245l.intValue());
        }
        Long m1247j = c9283g0.m1247j("gcm.n.event_time");
        if (m1247j != null) {
            c0574e.m33409u(true);
            c0574e.m33430B(m1247j.longValue());
        }
        long[] m1240q = c9283g0.m1240q();
        if (m1240q != null) {
            c0574e.m33404z(m1240q);
        }
        int[] m1252e = c9283g0.m1252e();
        if (m1252e != null) {
            c0574e.m33414p(m1252e[0], m1252e[1], m1252e[2]);
        }
        c0574e.m33418l(m1333i(c9283g0));
        return new C9267a(c0574e, m1327o(c9283g0), 0);
    }

    /* renamed from: f */
    private static Intent m1336f(String str, C9283g0 c9283g0, PackageManager packageManager) {
        String m1241p = c9283g0.m1241p("gcm.n.click_action");
        if (!TextUtils.isEmpty(m1241p)) {
            Intent intent = new Intent(m1241p);
            intent.setPackage(str);
            intent.setFlags(268435456);
            return intent;
        }
        Uri m1251f = c9283g0.m1251f();
        if (m1251f != null) {
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.setPackage(str);
            intent2.setData(m1251f);
            return intent2;
        }
        Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null) {
            Log.w("FirebaseMessaging", "No activity found to launch app");
        }
        return launchIntentForPackage;
    }

    /* renamed from: g */
    private static int m1335g() {
        return f39752a.incrementAndGet();
    }

    /* renamed from: h */
    private static Integer m1334h(Context context, String str, Bundle bundle) {
        if (Build.VERSION.SDK_INT < 21) {
            return null;
        }
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.valueOf(Color.parseColor(str));
            } catch (IllegalArgumentException e) {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 56);
                sb.append("Color is invalid: ");
                sb.append(str);
                sb.append(". Notification will use default color.");
                Log.w("FirebaseMessaging", sb.toString());
            }
        }
        int i = bundle.getInt("com.google.firebase.messaging.default_notification_color", 0);
        if (i == 0) {
            return null;
        }
        try {
            return Integer.valueOf(C0586a.m33350d(context, i));
        } catch (Resources.NotFoundException e2) {
            Log.w("FirebaseMessaging", "Cannot find the color resource referenced in AndroidManifest.");
            return null;
        }
    }

    /* renamed from: i */
    private static int m1333i(C9283g0 c9283g0) {
        boolean m1256a = c9283g0.m1256a("gcm.n.default_sound");
        boolean z = m1256a;
        if (c9283g0.m1256a("gcm.n.default_vibrate_timings")) {
            z = m1256a | true;
        }
        return c9283g0.m1256a("gcm.n.default_light_settings") ? z | 4 : z ? 1 : 0;
    }

    /* renamed from: j */
    private static Bundle m1332j(PackageManager packageManager, String str) {
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 128);
            if (applicationInfo != null) {
                Bundle bundle = applicationInfo.metaData;
                if (bundle != null) {
                    return bundle;
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 35);
            sb.append("Couldn't get own application info: ");
            sb.append(valueOf);
            Log.w("FirebaseMessaging", sb.toString());
        }
        return Bundle.EMPTY;
    }

    @TargetApi(26)
    /* renamed from: k */
    public static String m1331k(Context context, String str, Bundle bundle) {
        String str2;
        if (Build.VERSION.SDK_INT < 26) {
            return null;
        }
        try {
            if (context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).targetSdkVersion < 26) {
                return null;
            }
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
            if (!TextUtils.isEmpty(str)) {
                if (notificationManager.getNotificationChannel(str) != null) {
                    return str;
                }
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 122);
                sb.append("Notification Channel requested (");
                sb.append(str);
                sb.append(") has not been created by the app. Manifest configuration, or default, value will be used.");
                Log.w("FirebaseMessaging", sb.toString());
            }
            String string = bundle.getString("com.google.firebase.messaging.default_notification_channel_id");
            if (TextUtils.isEmpty(string)) {
                Log.w("FirebaseMessaging", "Missing Default Notification Channel metadata in AndroidManifest. Default value will be used.");
            } else if (notificationManager.getNotificationChannel(string) != null) {
                return string;
            } else {
                Log.w("FirebaseMessaging", "Notification Channel set in AndroidManifest.xml has not been created by the app. Default value will be used.");
            }
            if (notificationManager.getNotificationChannel("fcm_fallback_notification_channel") != null) {
                return "fcm_fallback_notification_channel";
            }
            int identifier = context.getResources().getIdentifier("fcm_fallback_notification_channel_label", "string", context.getPackageName());
            if (identifier == 0) {
                Log.e("FirebaseMessaging", "String resource \"fcm_fallback_notification_channel_label\" is not found. Using default string channel name.");
                str2 = "Misc";
            } else {
                str2 = context.getString(identifier);
            }
            notificationManager.createNotificationChannel(new NotificationChannel("fcm_fallback_notification_channel", str2, 3));
            return "fcm_fallback_notification_channel";
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* renamed from: l */
    private static int m1330l(int i) {
        return Build.VERSION.SDK_INT >= 23 ? 1140850688 : 1073741824;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0097, code lost:
        if (m1326p(r6, r0) == false) goto L32;
     */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int m1329m(android.content.pm.PackageManager r5, android.content.res.Resources r6, java.lang.String r7, java.lang.String r8, android.os.Bundle r9) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.C9266a.m1329m(android.content.pm.PackageManager, android.content.res.Resources, java.lang.String, java.lang.String, android.os.Bundle):int");
    }

    /* renamed from: n */
    private static Uri m1328n(String str, C9283g0 c9283g0, Resources resources) {
        String m1242o = c9283g0.m1242o();
        if (TextUtils.isEmpty(m1242o)) {
            return null;
        }
        if ("default".equals(m1242o) || resources.getIdentifier(m1242o, "raw", str) == 0) {
            return RingtoneManager.getDefaultUri(2);
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 24 + String.valueOf(m1242o).length());
        sb.append("android.resource://");
        sb.append(str);
        sb.append("/raw/");
        sb.append(m1242o);
        return Uri.parse(sb.toString());
    }

    /* renamed from: o */
    private static String m1327o(C9283g0 c9283g0) {
        String m1241p = c9283g0.m1241p("gcm.n.tag");
        if (!TextUtils.isEmpty(m1241p)) {
            return m1241p;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        StringBuilder sb = new StringBuilder(37);
        sb.append("FCM-Notification:");
        sb.append(uptimeMillis);
        return sb.toString();
    }

    @TargetApi(26)
    /* renamed from: p */
    private static boolean m1326p(Resources resources, int i) {
        if (Build.VERSION.SDK_INT != 26) {
            return true;
        }
        try {
            if (!(resources.getDrawable(i, null) instanceof AdaptiveIconDrawable)) {
                return true;
            }
            StringBuilder sb = new StringBuilder(77);
            sb.append("Adaptive icons cannot be used in notifications. Ignoring icon id: ");
            sb.append(i);
            Log.e("FirebaseMessaging", sb.toString());
            return false;
        } catch (Resources.NotFoundException e) {
            StringBuilder sb2 = new StringBuilder(66);
            sb2.append("Couldn't find resource ");
            sb2.append(i);
            sb2.append(", treating it as an invalid icon");
            Log.e("FirebaseMessaging", sb2.toString());
            return false;
        }
    }

    /* renamed from: q */
    static boolean m1325q(C9283g0 c9283g0) {
        return c9283g0.m1256a("google.c.a.e");
    }

    /* renamed from: r */
    private static PendingIntent m1324r(Context context, C9283g0 c9283g0, PendingIntent pendingIntent) {
        return m1339c(context, new Intent("com.google.firebase.messaging.NOTIFICATION_OPEN").putExtras(c9283g0.m1233x()).putExtra("pending_intent", pendingIntent));
    }
}
