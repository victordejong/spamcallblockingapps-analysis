package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.datatransport.AbstractC4603c;
import com.google.android.datatransport.AbstractC4646e;
import com.google.android.datatransport.AbstractC4647f;
import com.google.android.datatransport.C4602b;
import com.google.android.gms.tasks.C7970j;
import com.google.firebase.C8849c;
import com.google.firebase.analytics.p292a.AbstractC8834a;
import com.google.firebase.encoders.AbstractC9151a;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.p307h.C9162d;
import com.google.firebase.installations.C9211f;
import com.google.firebase.messaging.C9320x;
import java.util.concurrent.ExecutionException;
/* renamed from: com.google.firebase.messaging.e0 */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/e0.class */
public class C9279e0 {

    /* renamed from: a */
    private static final AbstractC9151a f39783a = new C9162d().mo1705a(C9320x.C9322b.class, new C9320x.C9323c()).mo1705a(C9320x.class, new C9320x.C9321a()).m1700f();

    /* renamed from: A */
    public static boolean m1292A(Intent intent) {
        if (intent == null || m1272s(intent)) {
            return false;
        }
        return m1290a();
    }

    /* renamed from: B */
    public static boolean m1291B(Intent intent) {
        if (intent == null || m1272s(intent)) {
            return false;
        }
        return "1".equals(intent.getStringExtra("google.c.a.e"));
    }

    /* renamed from: a */
    static boolean m1290a() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            C8849c.m2532h();
            Context m2533g = C8849c.m2532h().m2533g();
            SharedPreferences sharedPreferences = m2533g.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("export_to_big_query")) {
                return sharedPreferences.getBoolean("export_to_big_query", false);
            }
            try {
                PackageManager packageManager = m2533g.getPackageManager();
                if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(m2533g.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("delivery_metrics_exported_to_big_query_enabled")) {
                    return applicationInfo.metaData.getBoolean("delivery_metrics_exported_to_big_query_enabled", false);
                }
                return false;
            } catch (PackageManager.NameNotFoundException e) {
                return false;
            }
        } catch (IllegalStateException e2) {
            Log.i("FirebaseMessaging", "FirebaseApp has not being initialized. Device might be in direct boot mode. Skip exporting delivery metrics to Big Query");
            return false;
        }
    }

    /* renamed from: b */
    public static String m1289b(Intent intent) {
        return intent.getStringExtra("collapse_key");
    }

    /* renamed from: c */
    static String m1288c(Intent intent) {
        return intent.getStringExtra("google.c.a.c_id");
    }

    /* renamed from: d */
    public static String m1287d(Intent intent) {
        return intent.getStringExtra("google.c.a.c_l");
    }

    /* renamed from: e */
    public static String m1286e(Intent intent) {
        String stringExtra = intent.getStringExtra("google.to");
        if (TextUtils.isEmpty(stringExtra)) {
            try {
                return (String) C7970j.m5802a(C9211f.m1546l(C8849c.m2532h()).getId());
            } catch (InterruptedException | ExecutionException e) {
                throw new RuntimeException(e);
            }
        }
        return stringExtra;
    }

    /* renamed from: f */
    static String m1285f(Intent intent) {
        return intent.getStringExtra("google.c.a.m_c");
    }

    /* renamed from: g */
    public static String m1284g(Intent intent) {
        String stringExtra = intent.getStringExtra("google.message_id");
        return stringExtra == null ? intent.getStringExtra("message_id") : stringExtra;
    }

    /* renamed from: h */
    public static String m1283h(Intent intent) {
        return intent.getStringExtra("google.c.a.m_l");
    }

    /* renamed from: i */
    private static int m1282i(String str) {
        if ("high".equals(str)) {
            return 1;
        }
        return "normal".equals(str) ? 2 : 0;
    }

    /* renamed from: j */
    static String m1281j(Intent intent) {
        return intent.getStringExtra("google.c.a.ts");
    }

    /* renamed from: k */
    public static String m1280k(Intent intent) {
        return (intent.getExtras() == null || !C9283g0.m1237t(intent.getExtras())) ? "DATA_MESSAGE" : "DISPLAY_NOTIFICATION";
    }

    /* renamed from: l */
    static String m1279l(Intent intent) {
        return (intent.getExtras() == null || !C9283g0.m1237t(intent.getExtras())) ? "data" : "display";
    }

    /* renamed from: m */
    public static String m1278m() {
        return C8849c.m2532h().m2533g().getPackageName();
    }

    /* renamed from: n */
    public static int m1277n(Intent intent) {
        String stringExtra = intent.getStringExtra("google.delivered_priority");
        String str = stringExtra;
        if (stringExtra == null) {
            if ("1".equals(intent.getStringExtra("google.priority_reduced"))) {
                return 2;
            }
            str = intent.getStringExtra("google.priority");
        }
        return m1282i(str);
    }

    /* renamed from: o */
    public static String m1276o(Intent intent) {
        if (intent.hasExtra("google.c.sender.id")) {
            return intent.getStringExtra("google.c.sender.id");
        }
        C8849c m2532h = C8849c.m2532h();
        String m1659d = m2532h.m2530j().m1659d();
        if (m1659d != null) {
            return m1659d;
        }
        String m1660c = m2532h.m2530j().m1660c();
        if (!m1660c.startsWith("1:")) {
            return m1660c;
        }
        String[] split = m1660c.split(":");
        if (split.length < 2) {
            return null;
        }
        String str = split[1];
        if (!str.isEmpty()) {
            return str;
        }
        return null;
    }

    /* renamed from: p */
    public static String m1275p(Intent intent) {
        String stringExtra = intent.getStringExtra("from");
        if (stringExtra == null || !stringExtra.startsWith("/topics/")) {
            return null;
        }
        return stringExtra;
    }

    /* renamed from: q */
    public static int m1274q(Intent intent) {
        Object obj = intent.getExtras().get("google.ttl");
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (!(obj instanceof String)) {
            return 0;
        }
        try {
            return Integer.parseInt((String) obj);
        } catch (NumberFormatException e) {
            String valueOf = String.valueOf(obj);
            StringBuilder sb = new StringBuilder(valueOf.length() + 13);
            sb.append("Invalid TTL: ");
            sb.append(valueOf);
            Log.w("FirebaseMessaging", sb.toString());
            return 0;
        }
    }

    /* renamed from: r */
    static String m1273r(Intent intent) {
        if (intent.hasExtra("google.c.a.udt")) {
            return intent.getStringExtra("google.c.a.udt");
        }
        return null;
    }

    /* renamed from: s */
    private static boolean m1272s(Intent intent) {
        return "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT".equals(intent.getAction());
    }

    /* renamed from: t */
    public static void m1271t(Intent intent) {
        m1266y("_nd", intent);
    }

    /* renamed from: u */
    public static void m1270u(Intent intent) {
        m1266y("_nf", intent);
    }

    /* renamed from: v */
    public static void m1269v(Intent intent) {
        m1265z(intent);
        m1266y("_no", intent);
    }

    /* renamed from: w */
    public static void m1268w(Intent intent) {
        if (m1291B(intent)) {
            m1266y("_nr", intent);
        }
        if (m1292A(intent)) {
            AbstractC4647f m1380i = FirebaseMessaging.m1380i();
            if (m1380i != null) {
                m1267x("MESSAGE_DELIVERED", intent, m1380i.mo1361a("FCM_CLIENT_EVENT_LOGGING", String.class, C4602b.m22183b("json"), C9277d0.f39781a));
            } else {
                Log.e("FirebaseMessaging", "TransportFactory is null. Skip exporting message delivery metrics to Big Query");
            }
        }
    }

    /* renamed from: x */
    private static void m1267x(String str, Intent intent, AbstractC4646e<String> abstractC4646e) {
        try {
            abstractC4646e.mo1363a(AbstractC4603c.m22179d(f39783a.mo1691b(new C9320x.C9322b(new C9320x("MESSAGE_DELIVERED", intent)))));
        } catch (EncodingException e) {
            Log.d("FirebaseMessaging", "Failed to encode big query analytics payload. Skip sending");
        }
    }

    /* renamed from: y */
    static void m1266y(String str, Intent intent) {
        Bundle bundle = new Bundle();
        String m1288c = m1288c(intent);
        if (m1288c != null) {
            bundle.putString("_nmid", m1288c);
        }
        String m1287d = m1287d(intent);
        if (m1287d != null) {
            bundle.putString("_nmn", m1287d);
        }
        String m1283h = m1283h(intent);
        if (!TextUtils.isEmpty(m1283h)) {
            bundle.putString("label", m1283h);
        }
        String m1285f = m1285f(intent);
        if (!TextUtils.isEmpty(m1285f)) {
            bundle.putString("message_channel", m1285f);
        }
        String m1275p = m1275p(intent);
        if (m1275p != null) {
            bundle.putString("_nt", m1275p);
        }
        String m1281j = m1281j(intent);
        if (m1281j != null) {
            try {
                bundle.putInt("_nmt", Integer.parseInt(m1281j));
            } catch (NumberFormatException e) {
                Log.w("FirebaseMessaging", "Error while parsing timestamp in GCM event", e);
            }
        }
        String m1273r = m1273r(intent);
        if (m1273r != null) {
            try {
                bundle.putInt("_ndt", Integer.parseInt(m1273r));
            } catch (NumberFormatException e2) {
                Log.w("FirebaseMessaging", "Error while parsing use_device_time in GCM event", e2);
            }
        }
        String m1279l = m1279l(intent);
        if ("_nr".equals(str) || "_nf".equals(str)) {
            bundle.putString("_nmc", m1279l);
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            String valueOf = String.valueOf(bundle);
            StringBuilder sb = new StringBuilder(str.length() + 37 + valueOf.length());
            sb.append("Logging to scion event=");
            sb.append(str);
            sb.append(" scionPayload=");
            sb.append(valueOf);
            Log.d("FirebaseMessaging", sb.toString());
        }
        AbstractC8834a abstractC8834a = (AbstractC8834a) C8849c.m2532h().m2534f(AbstractC8834a.class);
        if (abstractC8834a != null) {
            abstractC8834a.mo2567a("fcm", str, bundle);
        } else {
            Log.w("FirebaseMessaging", "Unable to log event: analytics library is missing");
        }
    }

    /* renamed from: z */
    private static void m1265z(Intent intent) {
        if (intent == null) {
            return;
        }
        if (!"1".equals(intent.getStringExtra("google.c.a.tc"))) {
            if (!Log.isLoggable("FirebaseMessaging", 3)) {
                return;
            }
            Log.d("FirebaseMessaging", "Received event with track-conversion=false. Do not set user property");
            return;
        }
        AbstractC8834a abstractC8834a = (AbstractC8834a) C8849c.m2532h().m2534f(AbstractC8834a.class);
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Received event with track-conversion=true. Setting user property and reengagement event");
        }
        if (abstractC8834a == null) {
            Log.w("FirebaseMessaging", "Unable to set user property for conversion tracking:  analytics library is missing");
            return;
        }
        String stringExtra = intent.getStringExtra("google.c.a.c_id");
        abstractC8834a.mo2566b("fcm", "_ln", stringExtra);
        Bundle bundle = new Bundle();
        bundle.putString("source", "Firebase");
        bundle.putString("medium", "notification");
        bundle.putString("campaign", stringExtra);
        abstractC8834a.mo2567a("fcm", "_cmp", bundle);
    }
}
