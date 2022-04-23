package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.appsflyer.internal.referrer.Payload;
import com.google.android.datatransport.g;
import com.google.android.gms.tasks.h;
import com.google.android.gms.tasks.k;
import com.google.firebase.b;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.a;
import com.google.firebase.encoders.d;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
import com.google.firebase.installations.c;
import com.google.firebase.messaging.y;
import io.bidmachine.BidMachineFetcher;
import java.util.concurrent.ExecutionException;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/ae.class */
public final class ae {

    /* renamed from: a  reason: collision with root package name */
    private static final a f32466a = new JsonDataEncoderBuilder().registerEncoder(y.b.class, (d) new y.c()).registerEncoder(y.class, (d) new y.a()).build();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a() {
        return b.d().a().getPackageName();
    }

    public static void a(Intent intent) {
        if (e(intent)) {
            a("_nr", intent);
        }
        if ((intent == null || p(intent)) ? false : b()) {
            g c2 = FirebaseMessaging.c();
            if (c2 != null) {
                try {
                    c2.a("FCM_CLIENT_EVENT_LOGGING", com.google.android.datatransport.b.a("json"), af.f32467a).a(new com.google.android.datatransport.a(null, f32466a.encode(new y.b(new y("MESSAGE_DELIVERED", intent))), com.google.android.datatransport.d.VERY_LOW));
                } catch (EncodingException e) {
                }
            } else {
                Log.e("FirebaseMessaging", "TransportFactory is null. Skip exporting message delivery metrics to Big Query");
            }
        }
    }

    private static void a(String str, Intent intent) {
        Bundle bundle = new Bundle();
        String stringExtra = intent.getStringExtra("google.c.a.c_id");
        if (stringExtra != null) {
            bundle.putString("_nmid", stringExtra);
        }
        String stringExtra2 = intent.getStringExtra("google.c.a.c_l");
        if (stringExtra2 != null) {
            bundle.putString("_nmn", stringExtra2);
        }
        String stringExtra3 = intent.getStringExtra("google.c.a.m_l");
        if (!TextUtils.isEmpty(stringExtra3)) {
            bundle.putString("label", stringExtra3);
        }
        String stringExtra4 = intent.getStringExtra("google.c.a.m_c");
        if (!TextUtils.isEmpty(stringExtra4)) {
            bundle.putString("message_channel", stringExtra4);
        }
        String m = m(intent);
        if (m != null) {
            bundle.putString("_nt", m);
        }
        String stringExtra5 = intent.getStringExtra("google.c.a.ts");
        if (stringExtra5 != null) {
            try {
                bundle.putInt("_nmt", Integer.parseInt(stringExtra5));
            } catch (NumberFormatException e) {
                Log.w("FirebaseMessaging", "Error while parsing timestamp in GCM event", e);
            }
        }
        String r = r(intent);
        if (r != null) {
            try {
                bundle.putInt("_ndt", Integer.parseInt(r));
            } catch (NumberFormatException e2) {
                Log.w("FirebaseMessaging", "Error while parsing use_device_time in GCM event", e2);
            }
        }
        String q = q(intent);
        if ("_nr".equals(str) || "_nf".equals(str)) {
            bundle.putString("_nmc", q);
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            String valueOf = String.valueOf(bundle);
            StringBuilder sb = new StringBuilder(str.length() + 37 + String.valueOf(valueOf).length());
            sb.append("Logging to scion event=");
            sb.append(str);
            sb.append(" scionPayload=");
            sb.append(valueOf);
        }
        com.google.firebase.analytics.connector.a aVar = (com.google.firebase.analytics.connector.a) b.d().a(com.google.firebase.analytics.connector.a.class);
        if (aVar != null) {
            aVar.a("fcm", str, bundle);
        } else {
            Log.w("FirebaseMessaging", "Unable to log event: analytics library is missing");
        }
    }

    public static void b(Intent intent) {
        if (intent != null) {
            if ("1".equals(intent.getStringExtra("google.c.a.tc"))) {
                com.google.firebase.analytics.connector.a aVar = (com.google.firebase.analytics.connector.a) b.d().a(com.google.firebase.analytics.connector.a.class);
                Log.isLoggable("FirebaseMessaging", 3);
                if (aVar != null) {
                    String stringExtra = intent.getStringExtra("google.c.a.c_id");
                    aVar.a("fcm", "_ln", stringExtra);
                    Bundle bundle = new Bundle();
                    bundle.putString(Payload.SOURCE, "Firebase");
                    bundle.putString("medium", "notification");
                    bundle.putString("campaign", stringExtra);
                    aVar.a("fcm", "_cmp", bundle);
                } else {
                    Log.w("FirebaseMessaging", "Unable to set user property for conversion tracking:  analytics library is missing");
                }
            } else {
                Log.isLoggable("FirebaseMessaging", 3);
            }
        }
        a("_no", intent);
    }

    private static boolean b() {
        ApplicationInfo applicationInfo;
        b.d();
        Context a2 = b.d().a();
        SharedPreferences sharedPreferences = a2.getSharedPreferences("com.google.firebase.messaging", 0);
        if (sharedPreferences.contains("export_to_big_query")) {
            return sharedPreferences.getBoolean("export_to_big_query", false);
        }
        try {
            PackageManager packageManager = a2.getPackageManager();
            if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(a2.getPackageName(), 128)) == null || applicationInfo.metaData == null || !applicationInfo.metaData.containsKey("delivery_metrics_exported_to_big_query_enabled")) {
                return false;
            }
            return applicationInfo.metaData.getBoolean("delivery_metrics_exported_to_big_query_enabled", false);
        } catch (PackageManager.NameNotFoundException | IllegalStateException e) {
            return false;
        }
    }

    public static void c(Intent intent) {
        a("_nd", intent);
    }

    public static void d(Intent intent) {
        a("_nf", intent);
    }

    public static boolean e(Intent intent) {
        if (intent == null || p(intent)) {
            return false;
        }
        return "1".equals(intent.getStringExtra("google.c.a.e"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int f(Intent intent) {
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
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 13);
            sb.append("Invalid TTL: ");
            sb.append(valueOf);
            Log.w("FirebaseMessaging", sb.toString());
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String g(Intent intent) {
        return intent.getStringExtra("collapse_key");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String h(Intent intent) {
        return intent.getStringExtra("google.c.a.c_l");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String i(Intent intent) {
        return intent.getStringExtra("google.c.a.m_l");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String j(Intent intent) {
        String stringExtra = intent.getStringExtra("google.message_id");
        return stringExtra == null ? intent.getStringExtra("message_id") : stringExtra;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String k(Intent intent) {
        String stringExtra = intent.getStringExtra("google.to");
        if (!TextUtils.isEmpty(stringExtra)) {
            return stringExtra;
        }
        try {
            return (String) k.a((h<Object>) c.a(b.d()).b());
        } catch (InterruptedException | ExecutionException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String l(Intent intent) {
        return (intent.getExtras() == null || !ah.a(intent.getExtras())) ? "DATA_MESSAGE" : "DISPLAY_NOTIFICATION";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String m(Intent intent) {
        String stringExtra = intent.getStringExtra("from");
        if (stringExtra == null || !stringExtra.startsWith("/topics/")) {
            return null;
        }
        return stringExtra;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int n(Intent intent) {
        String stringExtra = intent.getStringExtra("google.delivered_priority");
        String str = stringExtra;
        if (stringExtra == null) {
            if ("1".equals(intent.getStringExtra("google.priority_reduced"))) {
                return 2;
            }
            str = intent.getStringExtra("google.priority");
        }
        if ("high".equals(str)) {
            return 1;
        }
        return "normal".equals(str) ? 2 : 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String o(Intent intent) {
        if (intent.hasExtra("google.c.sender.id")) {
            return intent.getStringExtra("google.c.sender.id");
        }
        b d2 = b.d();
        String str = d2.c().f32316c;
        if (str != null) {
            return str;
        }
        String str2 = d2.c().f32315b;
        if (!str2.startsWith("1:")) {
            return str2;
        }
        String[] split = str2.split(":");
        if (split.length < 2) {
            return null;
        }
        String str3 = split[1];
        if (str3.isEmpty()) {
            return null;
        }
        return str3;
    }

    private static boolean p(Intent intent) {
        return FirebaseMessagingService.ACTION_DIRECT_BOOT_REMOTE_INTENT.equals(intent.getAction());
    }

    private static String q(Intent intent) {
        return (intent.getExtras() == null || !ah.a(intent.getExtras())) ? "data" : BidMachineFetcher.AD_TYPE_DISPLAY;
    }

    private static String r(Intent intent) {
        if (intent.hasExtra("google.c.a.udt")) {
            return intent.getStringExtra("google.c.a.udt");
        }
        return null;
    }
}
