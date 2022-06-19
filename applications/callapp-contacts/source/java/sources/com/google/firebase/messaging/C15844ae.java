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
import com.google.android.datatransport.AbstractC10679g;
import com.google.android.datatransport.C10626a;
import com.google.android.datatransport.C10627b;
import com.google.android.datatransport.EnumC10676d;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14188k;
import com.google.firebase.C15601b;
import com.google.firebase.analytics.connector.AbstractC15587a;
import com.google.firebase.encoders.AbstractC15732a;
import com.google.firebase.encoders.AbstractC15738d;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
import com.google.firebase.installations.C15813c;
import com.google.firebase.messaging.C15897y;
import io.bidmachine.BidMachineFetcher;
import java.util.concurrent.ExecutionException;
/* renamed from: com.google.firebase.messaging.ae */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/ae.class */
public final class C15844ae {

    /* renamed from: a */
    private static final AbstractC15732a f56325a = new JsonDataEncoderBuilder().registerEncoder(C15897y.C15899b.class, (AbstractC15738d) new C15897y.C15900c()).registerEncoder(C15897y.class, (AbstractC15738d) new C15897y.C15898a()).build();

    /* renamed from: a */
    public static String m8232a() {
        return C15601b.m8573d().m8583a().getPackageName();
    }

    /* renamed from: a */
    public static void m8231a(Intent intent) {
        if (m8225e(intent)) {
            m8230a("_nr", intent);
        }
        if ((intent == null || m8214p(intent)) ? false : m8229b()) {
            AbstractC10679g m8256c = FirebaseMessaging.m8256c();
            if (m8256c == null) {
                Log.e("FirebaseMessaging", "TransportFactory is null. Skip exporting message delivery metrics to Big Query");
                return;
            }
            try {
                m8256c.mo8245a("FCM_CLIENT_EVENT_LOGGING", C10627b.m22610a("json"), C15845af.f56326a).mo8247a(new C10626a(null, f56325a.encode(new C15897y.C15899b(new C15897y("MESSAGE_DELIVERED", intent))), EnumC10676d.VERY_LOW));
            } catch (EncodingException e) {
            }
        }
    }

    /* renamed from: a */
    private static void m8230a(String str, Intent intent) {
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
        String m8217m = m8217m(intent);
        if (m8217m != null) {
            bundle.putString("_nt", m8217m);
        }
        String stringExtra5 = intent.getStringExtra("google.c.a.ts");
        if (stringExtra5 != null) {
            try {
                bundle.putInt("_nmt", Integer.parseInt(stringExtra5));
            } catch (NumberFormatException e) {
                Log.w("FirebaseMessaging", "Error while parsing timestamp in GCM event", e);
            }
        }
        String m8212r = m8212r(intent);
        if (m8212r != null) {
            try {
                bundle.putInt("_ndt", Integer.parseInt(m8212r));
            } catch (NumberFormatException e2) {
                Log.w("FirebaseMessaging", "Error while parsing use_device_time in GCM event", e2);
            }
        }
        String m8213q = m8213q(intent);
        if ("_nr".equals(str) || "_nf".equals(str)) {
            bundle.putString("_nmc", m8213q);
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            String valueOf = String.valueOf(bundle);
            StringBuilder sb = new StringBuilder(str.length() + 37 + String.valueOf(valueOf).length());
            sb.append("Logging to scion event=");
            sb.append(str);
            sb.append(" scionPayload=");
            sb.append(valueOf);
        }
        AbstractC15587a abstractC15587a = (AbstractC15587a) C15601b.m8573d().m8577a(AbstractC15587a.class);
        if (abstractC15587a != null) {
            abstractC15587a.mo8597a("fcm", str, bundle);
        } else {
            Log.w("FirebaseMessaging", "Unable to log event: analytics library is missing");
        }
    }

    /* renamed from: b */
    public static void m8228b(Intent intent) {
        if (intent != null) {
            if ("1".equals(intent.getStringExtra("google.c.a.tc"))) {
                AbstractC15587a abstractC15587a = (AbstractC15587a) C15601b.m8573d().m8577a(AbstractC15587a.class);
                Log.isLoggable("FirebaseMessaging", 3);
                if (abstractC15587a != null) {
                    String stringExtra = intent.getStringExtra("google.c.a.c_id");
                    abstractC15587a.mo8596a("fcm", "_ln", stringExtra);
                    Bundle bundle = new Bundle();
                    bundle.putString(Payload.SOURCE, "Firebase");
                    bundle.putString("medium", "notification");
                    bundle.putString("campaign", stringExtra);
                    abstractC15587a.mo8597a("fcm", "_cmp", bundle);
                } else {
                    Log.w("FirebaseMessaging", "Unable to set user property for conversion tracking:  analytics library is missing");
                }
            } else {
                Log.isLoggable("FirebaseMessaging", 3);
            }
        }
        m8230a("_no", intent);
    }

    /* renamed from: b */
    private static boolean m8229b() {
        ApplicationInfo applicationInfo;
        C15601b.m8573d();
        Context m8583a = C15601b.m8573d().m8583a();
        SharedPreferences sharedPreferences = m8583a.getSharedPreferences("com.google.firebase.messaging", 0);
        if (sharedPreferences.contains("export_to_big_query")) {
            return sharedPreferences.getBoolean("export_to_big_query", false);
        }
        try {
            PackageManager packageManager = m8583a.getPackageManager();
            if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(m8583a.getPackageName(), 128)) != null && applicationInfo.metaData != null && applicationInfo.metaData.containsKey("delivery_metrics_exported_to_big_query_enabled")) {
                return applicationInfo.metaData.getBoolean("delivery_metrics_exported_to_big_query_enabled", false);
            }
            return false;
        } catch (PackageManager.NameNotFoundException | IllegalStateException e) {
            return false;
        }
    }

    /* renamed from: c */
    public static void m8227c(Intent intent) {
        m8230a("_nd", intent);
    }

    /* renamed from: d */
    public static void m8226d(Intent intent) {
        m8230a("_nf", intent);
    }

    /* renamed from: e */
    public static boolean m8225e(Intent intent) {
        if (intent == null || m8214p(intent)) {
            return false;
        }
        return "1".equals(intent.getStringExtra("google.c.a.e"));
    }

    /* renamed from: f */
    public static int m8224f(Intent intent) {
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

    /* renamed from: g */
    public static String m8223g(Intent intent) {
        return intent.getStringExtra("collapse_key");
    }

    /* renamed from: h */
    public static String m8222h(Intent intent) {
        return intent.getStringExtra("google.c.a.c_l");
    }

    /* renamed from: i */
    public static String m8221i(Intent intent) {
        return intent.getStringExtra("google.c.a.m_l");
    }

    /* renamed from: j */
    public static String m8220j(Intent intent) {
        String stringExtra = intent.getStringExtra("google.message_id");
        return stringExtra == null ? intent.getStringExtra("message_id") : stringExtra;
    }

    /* renamed from: k */
    public static String m8219k(Intent intent) {
        String stringExtra = intent.getStringExtra("google.to");
        if (TextUtils.isEmpty(stringExtra)) {
            try {
                return (String) C14188k.m11468a((AbstractC14185h<Object>) C15813c.m8312a(C15601b.m8573d()).mo8286b());
            } catch (InterruptedException | ExecutionException e) {
                throw new RuntimeException(e);
            }
        }
        return stringExtra;
    }

    /* renamed from: l */
    public static String m8218l(Intent intent) {
        return (intent.getExtras() == null || !C15847ah.m8201a(intent.getExtras())) ? "DATA_MESSAGE" : "DISPLAY_NOTIFICATION";
    }

    /* renamed from: m */
    public static String m8217m(Intent intent) {
        String stringExtra = intent.getStringExtra("from");
        if (stringExtra == null || !stringExtra.startsWith("/topics/")) {
            return null;
        }
        return stringExtra;
    }

    /* renamed from: n */
    public static int m8216n(Intent intent) {
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

    /* renamed from: o */
    public static String m8215o(Intent intent) {
        if (intent.hasExtra("google.c.sender.id")) {
            return intent.getStringExtra("google.c.sender.id");
        }
        C15601b m8573d = C15601b.m8573d();
        String str = m8573d.m8574c().f56101c;
        if (str != null) {
            return str;
        }
        String str2 = m8573d.m8574c().f56100b;
        if (!str2.startsWith("1:")) {
            return str2;
        }
        String[] split = str2.split(":");
        if (split.length < 2) {
            return null;
        }
        String str3 = split[1];
        if (!str3.isEmpty()) {
            return str3;
        }
        return null;
    }

    /* renamed from: p */
    private static boolean m8214p(Intent intent) {
        return FirebaseMessagingService.ACTION_DIRECT_BOOT_REMOTE_INTENT.equals(intent.getAction());
    }

    /* renamed from: q */
    private static String m8213q(Intent intent) {
        return (intent.getExtras() == null || !C15847ah.m8201a(intent.getExtras())) ? "data" : BidMachineFetcher.AD_TYPE_DISPLAY;
    }

    /* renamed from: r */
    private static String m8212r(Intent intent) {
        if (intent.hasExtra("google.c.a.udt")) {
            return intent.getStringExtra("google.c.a.udt");
        }
        return null;
    }
}
