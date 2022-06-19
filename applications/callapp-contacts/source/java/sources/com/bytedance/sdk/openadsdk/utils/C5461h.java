package com.bytedance.sdk.openadsdk.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.accessibility.AccessibilityManager;
import com.bytedance.sdk.openadsdk.core.C4516c;
import com.bytedance.sdk.openadsdk.core.C4590i;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p157h.C4588e;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.p094a.p095a.p096a.p097a.p099b.C3236a;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.utils.h */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/h.class */
public class C5461h {

    /* renamed from: a */
    private static volatile boolean f19010a = false;

    /* renamed from: b */
    private static volatile boolean f19011b = true;

    /* renamed from: com.bytedance.sdk.openadsdk.utils.h$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/h$a.class */
    public static class C5462a {

        /* renamed from: a */
        private static final IntentFilter f19012a = new IntentFilter("android.intent.action.BATTERY_CHANGED");

        /* renamed from: a */
        public static int m32151a(Context context) {
            try {
                Intent registerReceiver = context.registerReceiver(null, f19012a);
                if (registerReceiver == null) {
                    return -1;
                }
                int intExtra = registerReceiver.getIntExtra("status", -1);
                return intExtra == -1 ? intExtra : intExtra == 2 ? 1 : 0;
            } catch (Throwable th) {
                return -1;
            }
        }

        /* renamed from: b */
        public static float m32150b(Context context) {
            try {
                Intent registerReceiver = context.registerReceiver(null, f19012a);
                if (registerReceiver == null) {
                    return BitmapDescriptorFactory.HUE_RED;
                }
                return (registerReceiver.getIntExtra("level", -1) * 100) / registerReceiver.getIntExtra("scale", -1);
            } catch (Throwable th) {
                return BitmapDescriptorFactory.HUE_RED;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.openadsdk.utils.h$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/h$b.class */
    public static class C5463b extends BroadcastReceiver {
        C5463b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.SCREEN_ON".equals(intent.getAction())) {
                boolean unused = C5461h.f19011b = true;
                C5478q.m32109c("DeviceUtils", "screen_on");
            } else if (!"android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            } else {
                boolean unused2 = C5461h.f19011b = false;
                C5478q.m32109c("DeviceUtils", "screen_off");
            }
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.utils.h$c */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/h$c.class */
    public static class RunnableC5464c implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            try {
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(C4600n.m34815a());
                boolean isLimitAdTrackingEnabled = advertisingIdInfo != null ? advertisingIdInfo.isLimitAdTrackingEnabled() : true;
                if (isLimitAdTrackingEnabled) {
                    return;
                }
                C4516c.m35418a(C4600n.m34815a()).m35417a("limit_ad_track", isLimitAdTrackingEnabled ? 1 : 0);
            } catch (GooglePlayServicesNotAvailableException e) {
                C5478q.m32108c("DeviceUtils", "getLmtTask error : indicating that Google Play is not installed on this device.", e);
            } catch (GooglePlayServicesRepairableException e2) {
                C5478q.m32108c("DeviceUtils", "getLmtTask error : indicating that there was a recoverable error connecting to Google Play Services.", e2);
            } catch (IOException e3) {
                C5478q.m32108c("DeviceUtils", "getLmtTask error : signaling connection to Google Play Services failed.", e3);
            } catch (Throwable th) {
                C5478q.m32106e("DeviceUtils", th.getMessage());
            }
        }
    }

    /* renamed from: a */
    public static String m32164a(boolean z) {
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                for (InetAddress inetAddress : Collections.list(networkInterface.getInetAddresses())) {
                    if (!inetAddress.isLoopbackAddress()) {
                        boolean z2 = inetAddress instanceof Inet4Address;
                        String upperCase = inetAddress.getHostAddress().toUpperCase();
                        if (z) {
                            if (z2) {
                                return upperCase;
                            }
                        } else if (!z2) {
                            int indexOf = upperCase.indexOf(37);
                            return indexOf < 0 ? upperCase : upperCase.substring(0, indexOf);
                        }
                    }
                }
            }
            return "";
        } catch (Throwable th) {
            return "";
        }
    }

    /* renamed from: a */
    public static void m32166a(Context context) {
        if (!f19010a) {
            try {
                PowerManager powerManager = (PowerManager) context.getSystemService("power");
                if (powerManager != null) {
                    f19011b = powerManager.isScreenOn();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            C5463b c5463b = new C5463b();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            context.registerReceiver(c5463b, intentFilter);
            f19010a = true;
        }
    }

    /* renamed from: a */
    private static void m32165a(JSONObject jSONObject) throws JSONException {
        m32161b(jSONObject);
    }

    /* renamed from: a */
    public static boolean m32167a() {
        if (Build.VERSION.SDK_INT != 29 || !C5487y.m32037r()) {
            return f19011b;
        }
        try {
            PowerManager powerManager = (PowerManager) C4600n.m34815a().getSystemService("power");
            if (powerManager != null) {
                f19011b = powerManager.isScreenOn();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return f19011b;
    }

    /* renamed from: b */
    public static int m32163b() {
        return C4516c.m35418a(C4600n.m34815a()).m35413b("limit_ad_track", -1);
    }

    /* renamed from: b */
    private static void m32161b(JSONObject jSONObject) throws JSONException {
        jSONObject.put("model", Build.MODEL);
        if (C4600n.m34805h().m34862s("gaid")) {
            jSONObject.put("gaid", C3236a.m39088a().m39084b());
        }
    }

    /* renamed from: b */
    public static boolean m32162b(Context context) {
        boolean z = false;
        try {
            if ((context.getResources().getConfiguration().screenLayout & 15) >= 3) {
                z = true;
            }
        } catch (Throwable th) {
        }
        return z;
    }

    /* renamed from: c */
    public static String m32159c() {
        if (Build.VERSION.SDK_INT >= 21) {
            String languageTag = Locale.getDefault().toLanguageTag();
            return !TextUtils.isEmpty(languageTag) ? languageTag : "";
        }
        return Locale.getDefault().getLanguage();
    }

    /* renamed from: c */
    public static boolean m32158c(Context context) {
        boolean z = false;
        try {
            if ((context.getResources().getConfiguration().uiMode & 15) == 4) {
                z = true;
            }
        } catch (Throwable th) {
        }
        return z;
    }

    /* renamed from: d */
    public static float m32157d() {
        int i;
        try {
            Context m34815a = C4600n.m34815a();
            i = -1;
            if (m34815a != null) {
                i = Settings.System.getInt(m34815a.getContentResolver(), "screen_brightness", -1);
            }
        } catch (Throwable th) {
            C5478q.m32106e("DeviceUtils", th.getMessage());
            i = -1;
        }
        if (i < 0) {
            return -1.0f;
        }
        return Math.round((i / 255.0f) * 10.0f) / 10.0f;
    }

    /* renamed from: d */
    public static int m32156d(Context context) {
        if (m32158c(context)) {
            return 3;
        }
        return m32162b(context) ? 2 : 1;
    }

    /* renamed from: e */
    public static int m32155e() {
        AccessibilityManager accessibilityManager = (AccessibilityManager) C4600n.m34815a().getSystemService("accessibility");
        if (accessibilityManager == null) {
            return -1;
        }
        return accessibilityManager.isEnabled() ? 1 : 0;
    }

    /* renamed from: e */
    public static JSONObject m32154e(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            m32165a(jSONObject);
            jSONObject.put("type", m32156d(context));
            int i = 1;
            jSONObject.put("os", 1);
            jSONObject.put("os_version", Build.VERSION.RELEASE);
            jSONObject.put("vendor", Build.MANUFACTURER);
            jSONObject.put("conn_type", C5482t.m32089b(context));
            jSONObject.put("screen_width", C5443ag.m32218c(context));
            jSONObject.put("screen_height", C5443ag.m32215d(context));
            StringBuilder sb = new StringBuilder();
            sb.append(SystemClock.elapsedRealtime());
            jSONObject.put("power_on_time", sb.toString());
            jSONObject.put("uuid", C4590i.m34842c(context));
            jSONObject.put("rom_version", C5487y.m32058a());
            jSONObject.put("sys_compiling_time", C4590i.m34843b(context));
            jSONObject.put("timezone", C5438af.m32243r());
            jSONObject.put("language", C4590i.m34847a());
            jSONObject.put("carrier_name", C5433aa.m32329a());
            jSONObject.put("locale_language", m32159c());
            jSONObject.put("screen_bright", Math.ceil(m32157d() * 10.0f) / 10.0d);
            if (m32167a()) {
                i = 0;
            }
            jSONObject.put("is_screen_off", i);
            jSONObject.put("cpu_num", C5438af.m32287c(context));
            jSONObject.put("cpu_max_freq", C5438af.m32281d(context));
            jSONObject.put("cpu_min_freq", C5438af.m32276e(context));
            jSONObject.put("battery_remaining_pct", (int) C5462a.m32150b(context));
            jSONObject.put("is_charging", C5462a.m32151a(context));
            jSONObject.put("total_mem", String.valueOf(Long.parseLong(C5438af.m32293b(context)) * 1024));
            jSONObject.put("total_space", String.valueOf(C5438af.m32271f(context)));
            jSONObject.put("free_space_in", String.valueOf(C5438af.m32267g(context)));
            jSONObject.put("sdcard_size", String.valueOf(C5438af.m32263h(context)));
            jSONObject.put("rooted", C5438af.m32260i(context));
            jSONObject.put("enable_assisted_clicking", m32155e());
            C4588e m34805h = C4600n.m34805h();
            if (m34805h.m34862s("mnc")) {
                jSONObject.put("mnc", C5433aa.m32327c());
            }
            if (m34805h.m34862s("mcc")) {
                jSONObject.put("mcc", C5433aa.m32328b());
            }
        } catch (Exception e) {
        }
        return jSONObject;
    }

    /* renamed from: f */
    public static JSONObject m32152f(Context context) {
        return m32154e(context);
    }

    /* renamed from: f */
    public static void m32153f() {
        new RunnableC5464c().run();
        Context m34815a = C4600n.m34815a();
        if (m34815a != null) {
            C4516c.m35418a(m34815a).m35417a("cpu_count", C5438af.m32268g());
            C4516c.m35418a(m34815a).m35417a("cpu_max_frequency", C5438af.m32288c(C5438af.m32268g()));
            C4516c.m35418a(m34815a).m35417a("cpu_min_frequency", C5438af.m32282d(C5438af.m32268g()));
            String m32275e = C5438af.m32275e(m34815a, "MemTotal");
            if (m32275e != null) {
                C4516c.m35418a(m34815a).m35415a("total_memory", m32275e);
            }
            C4516c.m35418a(m34815a).m35416a("total_internal_storage", C5438af.m32264h());
            C4516c.m35418a(m34815a).m35416a("free_internal_storage", C5479r.m32105a());
            C4516c.m35418a(m34815a).m35416a("total_sdcard_storage", C5438af.m32261i());
            C4516c.m35418a(m34815a).m35417a("is_root", C5438af.m32258j() ? 1 : 0);
        }
    }
}
