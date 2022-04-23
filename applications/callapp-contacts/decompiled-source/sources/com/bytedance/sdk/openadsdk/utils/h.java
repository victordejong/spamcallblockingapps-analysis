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
import com.bytedance.sdk.openadsdk.core.h.e;
import com.bytedance.sdk.openadsdk.core.i;
import com.bytedance.sdk.openadsdk.core.n;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/h.class */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private static volatile boolean f10300a = false;

    /* renamed from: b  reason: collision with root package name */
    private static volatile boolean f10301b = true;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/h$a.class */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final IntentFilter f10302a = new IntentFilter("android.intent.action.BATTERY_CHANGED");

        public static int a(Context context) {
            try {
                Intent registerReceiver = context.registerReceiver(null, f10302a);
                if (registerReceiver == null) {
                    return -1;
                }
                int intExtra = registerReceiver.getIntExtra("status", -1);
                return intExtra == -1 ? intExtra : intExtra == 2 ? 1 : 0;
            } catch (Throwable th) {
                return -1;
            }
        }

        public static float b(Context context) {
            try {
                Intent registerReceiver = context.registerReceiver(null, f10302a);
                if (registerReceiver == null) {
                    return BitmapDescriptorFactory.HUE_RED;
                }
                return (registerReceiver.getIntExtra("level", -1) * 100) / registerReceiver.getIntExtra("scale", -1);
            } catch (Throwable th) {
                return BitmapDescriptorFactory.HUE_RED;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/h$b.class */
    static class b extends BroadcastReceiver {
        b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.SCREEN_ON".equals(intent.getAction())) {
                boolean unused = h.f10301b = true;
                q.c("DeviceUtils", "screen_on");
            } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                boolean unused2 = h.f10301b = false;
                q.c("DeviceUtils", "screen_off");
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/h$c.class */
    public static class c implements Runnable {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v9, types: [com.bytedance.sdk.openadsdk.core.c] */
        /* JADX WARN: Type inference failed for: r6v0, types: [int] */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r4 = this;
                android.content.Context r0 = com.bytedance.sdk.openadsdk.core.n.a()     // Catch: all -> 0x0027, GooglePlayServicesRepairableException -> 0x0032, GooglePlayServicesNotAvailableException -> 0x003c, IOException -> 0x0046
                com.google.android.gms.ads.identifier.AdvertisingIdClient$Info r0 = com.google.android.gms.ads.identifier.AdvertisingIdClient.getAdvertisingIdInfo(r0)     // Catch: all -> 0x0027, GooglePlayServicesRepairableException -> 0x0032, GooglePlayServicesNotAvailableException -> 0x003c, IOException -> 0x0046
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L_0x0013
                r0 = r5
                boolean r0 = r0.isLimitAdTrackingEnabled()     // Catch: all -> 0x0027, GooglePlayServicesRepairableException -> 0x0032, GooglePlayServicesNotAvailableException -> 0x003c, IOException -> 0x0046
                r6 = r0
                goto L_0x0015
            L_0x0013:
                r0 = -1
                r6 = r0
            L_0x0015:
                r0 = r6
                r1 = -1
                if (r0 == r1) goto L_0x0026
                android.content.Context r0 = com.bytedance.sdk.openadsdk.core.n.a()     // Catch: all -> 0x0027, GooglePlayServicesRepairableException -> 0x0032, GooglePlayServicesNotAvailableException -> 0x003c, IOException -> 0x0046
                com.bytedance.sdk.openadsdk.core.c r0 = com.bytedance.sdk.openadsdk.core.c.a(r0)     // Catch: all -> 0x0027, GooglePlayServicesRepairableException -> 0x0032, GooglePlayServicesNotAvailableException -> 0x003c, IOException -> 0x0046
                java.lang.String r1 = "limit_ad_track"
                r2 = r6
                r0.a(r1, r2)     // Catch: all -> 0x0027, GooglePlayServicesRepairableException -> 0x0032, GooglePlayServicesNotAvailableException -> 0x003c, IOException -> 0x0046
            L_0x0026:
                return
            L_0x0027:
                r5 = move-exception
                java.lang.String r0 = "DeviceUtils"
                r1 = r5
                java.lang.String r1 = r1.getMessage()
                com.bytedance.sdk.openadsdk.utils.q.e(r0, r1)
                return
            L_0x0032:
                r5 = move-exception
                java.lang.String r0 = "DeviceUtils"
                java.lang.String r1 = "getLmtTask error : indicating that there was a recoverable error connecting to Google Play Services."
                r2 = r5
                com.bytedance.sdk.openadsdk.utils.q.c(r0, r1, r2)
                return
            L_0x003c:
                r5 = move-exception
                java.lang.String r0 = "DeviceUtils"
                java.lang.String r1 = "getLmtTask error : indicating that Google Play is not installed on this device."
                r2 = r5
                com.bytedance.sdk.openadsdk.utils.q.c(r0, r1, r2)
                return
            L_0x0046:
                r5 = move-exception
                java.lang.String r0 = "DeviceUtils"
                java.lang.String r1 = "getLmtTask error : signaling connection to Google Play Services failed."
                r2 = r5
                com.bytedance.sdk.openadsdk.utils.q.c(r0, r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.utils.h.c.run():void");
        }
    }

    public static String a(boolean z) {
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

    public static void a(Context context) {
        if (!f10300a) {
            try {
                PowerManager powerManager = (PowerManager) context.getSystemService("power");
                if (powerManager != null) {
                    f10301b = powerManager.isScreenOn();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            b bVar = new b();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            context.registerReceiver(bVar, intentFilter);
            f10300a = true;
        }
    }

    private static void a(JSONObject jSONObject) throws JSONException {
        b(jSONObject);
    }

    public static boolean a() {
        if (Build.VERSION.SDK_INT != 29 || !y.r()) {
            return f10301b;
        }
        try {
            PowerManager powerManager = (PowerManager) n.a().getSystemService("power");
            if (powerManager != null) {
                f10301b = powerManager.isScreenOn();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return f10301b;
    }

    public static int b() {
        return com.bytedance.sdk.openadsdk.core.c.a(n.a()).b("limit_ad_track", -1);
    }

    private static void b(JSONObject jSONObject) throws JSONException {
        jSONObject.put("model", Build.MODEL);
        if (n.h().s("gaid")) {
            jSONObject.put("gaid", com.a.a.a.a.b.a.a().b());
        }
    }

    public static boolean b(Context context) {
        boolean z = false;
        try {
            if ((context.getResources().getConfiguration().screenLayout & 15) >= 3) {
                z = true;
            }
        } catch (Throwable th) {
        }
        return z;
    }

    public static String c() {
        if (Build.VERSION.SDK_INT < 21) {
            return Locale.getDefault().getLanguage();
        }
        String languageTag = Locale.getDefault().toLanguageTag();
        return !TextUtils.isEmpty(languageTag) ? languageTag : "";
    }

    public static boolean c(Context context) {
        boolean z = false;
        try {
            if ((context.getResources().getConfiguration().uiMode & 15) == 4) {
                z = true;
            }
        } catch (Throwable th) {
        }
        return z;
    }

    public static float d() {
        int i;
        try {
            Context a2 = n.a();
            i = -1;
            if (a2 != null) {
                i = Settings.System.getInt(a2.getContentResolver(), "screen_brightness", -1);
            }
        } catch (Throwable th) {
            q.e("DeviceUtils", th.getMessage());
            i = -1;
        }
        if (i < 0) {
            return -1.0f;
        }
        return Math.round((i / 255.0f) * 10.0f) / 10.0f;
    }

    public static int d(Context context) {
        if (c(context)) {
            return 3;
        }
        return b(context) ? 2 : 1;
    }

    public static int e() {
        AccessibilityManager accessibilityManager = (AccessibilityManager) n.a().getSystemService("accessibility");
        if (accessibilityManager == null) {
            return -1;
        }
        return accessibilityManager.isEnabled() ? 1 : 0;
    }

    public static JSONObject e(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            a(jSONObject);
            jSONObject.put("type", d(context));
            int i = 1;
            jSONObject.put("os", 1);
            jSONObject.put("os_version", Build.VERSION.RELEASE);
            jSONObject.put("vendor", Build.MANUFACTURER);
            jSONObject.put("conn_type", t.b(context));
            jSONObject.put("screen_width", ag.c(context));
            jSONObject.put("screen_height", ag.d(context));
            StringBuilder sb = new StringBuilder();
            sb.append(SystemClock.elapsedRealtime());
            jSONObject.put("power_on_time", sb.toString());
            jSONObject.put("uuid", i.c(context));
            jSONObject.put("rom_version", y.a());
            jSONObject.put("sys_compiling_time", i.b(context));
            jSONObject.put("timezone", af.r());
            jSONObject.put("language", i.a());
            jSONObject.put("carrier_name", aa.a());
            jSONObject.put("locale_language", c());
            jSONObject.put("screen_bright", Math.ceil(d() * 10.0f) / 10.0d);
            if (a()) {
                i = 0;
            }
            jSONObject.put("is_screen_off", i);
            jSONObject.put("cpu_num", af.c(context));
            jSONObject.put("cpu_max_freq", af.d(context));
            jSONObject.put("cpu_min_freq", af.e(context));
            jSONObject.put("battery_remaining_pct", (int) a.b(context));
            jSONObject.put("is_charging", a.a(context));
            jSONObject.put("total_mem", String.valueOf(Long.parseLong(af.b(context)) * 1024));
            jSONObject.put("total_space", String.valueOf(af.f(context)));
            jSONObject.put("free_space_in", String.valueOf(af.g(context)));
            jSONObject.put("sdcard_size", String.valueOf(af.h(context)));
            jSONObject.put("rooted", af.i(context));
            jSONObject.put("enable_assisted_clicking", e());
            e h = n.h();
            if (h.s("mnc")) {
                jSONObject.put("mnc", aa.c());
            }
            if (h.s("mcc")) {
                jSONObject.put("mcc", aa.b());
            }
        } catch (Exception e) {
        }
        return jSONObject;
    }

    public static JSONObject f(Context context) {
        return e(context);
    }

    public static void f() {
        new c().run();
        Context a2 = n.a();
        if (a2 != null) {
            com.bytedance.sdk.openadsdk.core.c.a(a2).a("cpu_count", af.g());
            com.bytedance.sdk.openadsdk.core.c.a(a2).a("cpu_max_frequency", af.c(af.g()));
            com.bytedance.sdk.openadsdk.core.c.a(a2).a("cpu_min_frequency", af.d(af.g()));
            String e = af.e(a2, "MemTotal");
            if (e != null) {
                com.bytedance.sdk.openadsdk.core.c.a(a2).a("total_memory", e);
            }
            com.bytedance.sdk.openadsdk.core.c.a(a2).a("total_internal_storage", af.h());
            com.bytedance.sdk.openadsdk.core.c.a(a2).a("free_internal_storage", r.a());
            com.bytedance.sdk.openadsdk.core.c.a(a2).a("total_sdcard_storage", af.i());
            com.bytedance.sdk.openadsdk.core.c.a(a2).a("is_root", af.j() ? 1 : 0);
        }
    }
}
