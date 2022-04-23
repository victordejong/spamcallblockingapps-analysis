package com.bytedance.sdk.openadsdk.core.h;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Build;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.bytedance.sdk.adnet.b.f;
import com.bytedance.sdk.adnet.core.m;
import com.bytedance.sdk.openadsdk.core.g;
import com.bytedance.sdk.openadsdk.core.i;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.j.e;
import com.bytedance.sdk.openadsdk.multipro.b;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.h;
import com.bytedance.sdk.openadsdk.utils.k;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.t;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.mopub.mobileads.PangleAdapterConfiguration;
import com.mopub.network.ImpressionData;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.io.File;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/h/c.class */
public class c implements Runnable {
    private static volatile c e;

    /* renamed from: a  reason: collision with root package name */
    private final b f8968a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f8969b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f8970c;

    /* renamed from: d  reason: collision with root package name */
    private static final AtomicLong f8967d = new AtomicLong(0);
    private static volatile boolean f = false;
    private static boolean g = true;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/h/c$a.class */
    class a extends BroadcastReceiver {
        private a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                int intExtra = intent.getIntExtra("b_msg_id", -1);
                if (intExtra == 1) {
                    long longExtra = intent.getLongExtra("b_msg_time", -1L);
                    if (longExtra > 0) {
                        c.f8967d.set(longExtra);
                    }
                } else if (intExtra == 2) {
                    try {
                        if (c.this.f8968a != null) {
                            c.this.f8968a.a();
                        }
                    } catch (Throwable th) {
                    }
                }
            }
        }
    }

    private c(b bVar) {
        this.f8968a = bVar == null ? n.h() : bVar;
        Context a2 = n.a();
        this.f8969b = a2;
        this.f8970c = Executors.newSingleThreadExecutor();
        if (b.b()) {
            try {
                a2.registerReceiver(new a(), new IntentFilter("com.bytedance.openadsdk.settingReceiver"));
            } catch (Throwable th) {
            }
        }
    }

    public static int a(Context context) {
        if (context == null || !c(context)) {
            return -2;
        }
        return PreferenceManager.getDefaultSharedPreferences(context).getInt("IABTCF_gdprApplies", -1);
    }

    public static c a(b bVar) {
        if (e == null) {
            synchronized (c.class) {
                try {
                    if (e == null) {
                        e = new c(bVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    private JSONObject a(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (g) {
            jSONObject2 = com.bytedance.sdk.openadsdk.utils.a.a(jSONObject);
        }
        return jSONObject2;
    }

    public static void a() {
        try {
            Context a2 = n.a();
            File file = new File(Build.VERSION.SDK_INT >= 24 ? new File(a2.getDataDir(), "shared_prefs") : new File(a2.getDatabasePath("1").getParentFile().getParentFile(), "shared_prefs"), "tt_sdk_settings.xml");
            if (file.exists() && file.isFile()) {
                String replace = file.getName().replace(".xml", "");
                if (Build.VERSION.SDK_INT >= 24) {
                    a2.deleteSharedPreferences(replace);
                    return;
                }
                a2.getSharedPreferences(replace, 0).edit().clear().apply();
                k.c(file);
            }
        } catch (Throwable th) {
        }
    }

    public static void a(long j) {
        if (j > 0 && n.a() != null) {
            try {
                Intent intent = new Intent();
                intent.setAction("com.bytedance.openadsdk.settingReceiver");
                intent.putExtra("b_msg_id", 1);
                intent.putExtra("b_msg_time", j);
                n.a().sendBroadcast(intent);
            } catch (Throwable th) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, Map<String, String> map) {
        int i = 1;
        try {
            if (!TextUtils.isEmpty(str)) {
                i = 1;
                if (map != null) {
                    int intValue = Integer.valueOf(map.get("active-control")).intValue();
                    long longValue = Long.valueOf(map.get("ts")).longValue();
                    String str2 = map.get("pst");
                    String a2 = com.bytedance.sdk.openadsdk.k.g.b.a(str + intValue + longValue);
                    i = 1;
                    if (a2 != null) {
                        i = 1;
                        if (a2.equalsIgnoreCase(str2)) {
                            i = intValue;
                        }
                    }
                }
            }
        } catch (Throwable th) {
            i = 1;
        }
        d.a(i);
    }

    public static String b(Context context) {
        return context != null ? PreferenceManager.getDefaultSharedPreferences(context).getString(e.f8975b, "") : "";
    }

    public static void b() {
        if (n.a() != null) {
            try {
                Intent intent = new Intent();
                intent.setAction("com.bytedance.openadsdk.settingReceiver");
                intent.putExtra("b_msg_id", 2);
                n.a().sendBroadcast(intent);
            } catch (Throwable th) {
            }
        }
    }

    private static boolean c(Context context) {
        if (context == null) {
            return true;
        }
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        return (defaultSharedPreferences.getInt("IABTCF_CmpSdkID", BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW) == Integer.MIN_VALUE && defaultSharedPreferences.getInt("IABTCF_CmpSdkVersion", BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW) == Integer.MIN_VALUE) ? false : true;
    }

    private boolean e() {
        return TextUtils.isEmpty(g.b().d());
    }

    private JSONObject f() {
        JSONObject jSONObject = new JSONObject();
        int i = 1;
        af.a(jSONObject, true);
        try {
            int g2 = g.b().g();
            q.b("setting", "Settings().isGdprUser =" + n.h().s());
            jSONObject.put("ip", h.a(true));
            jSONObject.put("model", Build.MODEL);
            jSONObject.put("device_city", af.n());
            e h = n.h();
            if (h.s("gaid")) {
                jSONObject.put("gaid", com.a.a.a.a.b.a.a().b());
            }
            jSONObject.put("gdpr", g2);
            jSONObject.put(VerizonSSPWaterfallProvider.APP_DATA_COPPA_KEY, g.b().f());
            q.c("SdkSettingsHelper", "coppa =" + g.b().f());
            if (h.s("mcc")) {
                jSONObject.put("mcc", aa.b());
            }
            jSONObject.put("conn_type", t.c(this.f8969b));
            jSONObject.put("os", 1);
            jSONObject.put("oversea_version_type", 1);
            jSONObject.put("os_version", String.valueOf(Build.VERSION.RELEASE));
            jSONObject.put("sdk_version", "3.5.0.5");
            jSONObject.put("language", i.a());
            jSONObject.put("time_zone", af.r());
            jSONObject.put("package_name", af.d());
            boolean c2 = af.c(this.f8969b, af.d());
            q.c("isApplicationForeground", "isApplicationForeground:".concat(String.valueOf(c2)));
            if (!c2) {
                i = 2;
            }
            jSONObject.put("position", i);
            jSONObject.put(ImpressionData.APP_VERSION, af.f());
            jSONObject.put("vendor", Build.MANUFACTURER);
            jSONObject.put("uuid", i.c(this.f8969b));
            if (!(g.b() == null || g.b().d() == null)) {
                jSONObject.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, g.b().d());
            }
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            jSONObject.put("ts", currentTimeMillis);
            String str = "";
            if (g.b() != null) {
                str = "";
                if (g.b().d() != null) {
                    str = g.b().d().concat(String.valueOf(currentTimeMillis)).concat("3.5.0.5");
                }
            }
            jSONObject.put("req_sign", com.bytedance.sdk.openadsdk.utils.i.a(str));
            jSONObject.put("tcstring", b(this.f8969b));
            jSONObject.put("tcf_gdpr", a(this.f8969b));
            jSONObject.put("lmt", h.b());
            jSONObject.put("locale_language", h.c());
        } catch (Exception e2) {
        }
        return jSONObject;
    }

    public void a(boolean z) {
        try {
            if (!e()) {
                long currentTimeMillis = System.currentTimeMillis();
                if (z || currentTimeMillis - f8967d.get() >= 600000) {
                    f8967d.set(currentTimeMillis);
                    if (b.b()) {
                        a(currentTimeMillis);
                    }
                    this.f8970c.execute(this);
                }
            }
        } catch (Throwable th) {
            q.a("SdkSettingsHelper", "load sdk settings error: ", th);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!t.a(this.f8969b)) {
            try {
                this.f8968a.a();
            } catch (Throwable th) {
            }
        } else if (!e()) {
            q.c("SdkSettingsHelper", "Fetch setting request start");
            new f(1, af.i("/api/ad/union/sdk/settings/"), a(f()), new m.a<JSONObject>() { // from class: com.bytedance.sdk.openadsdk.core.h.c.1
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00d1 -> B:40:0x0096). Please submit an issue!!! */
                @Override // com.bytedance.sdk.adnet.core.m.a
                public void a(m<JSONObject> mVar) {
                    JSONObject jSONObject;
                    String str;
                    if (mVar == null || mVar.f8332a == null) {
                        try {
                            c.this.f8968a.a();
                        } catch (Throwable th2) {
                        }
                    } else {
                        int optInt = mVar.f8332a.optInt("cypher", -1);
                        JSONObject jSONObject2 = mVar.f8332a;
                        Map<String, String> map = null;
                        if (optInt == 3) {
                            String b2 = com.bytedance.sdk.openadsdk.utils.a.b(mVar.f8332a.optString("message"));
                            str = b2;
                            jSONObject = jSONObject2;
                            if (!TextUtils.isEmpty(b2)) {
                                try {
                                    jSONObject = new JSONObject(b2);
                                    str = b2;
                                } catch (Throwable th3) {
                                    q.a("SdkSettingsHelper", "setting data error: ", th3);
                                    str = b2;
                                    jSONObject = jSONObject2;
                                }
                            }
                        } else {
                            str = null;
                            jSONObject = jSONObject2;
                        }
                        try {
                            if (mVar.f8333b != null) {
                                map = mVar.f8333b.h;
                            }
                            c.this.a(str, map);
                        } catch (Throwable th4) {
                        }
                        try {
                            if (!c.f) {
                                boolean unused = c.f = true;
                            }
                            c.this.f8968a.a(jSONObject);
                            q.c("SdkSettingsHelper", "Fetch setting success");
                        } catch (Throwable th5) {
                        }
                        if (b.b()) {
                            c.b();
                        }
                    }
                }

                @Override // com.bytedance.sdk.adnet.core.m.a
                public void b(m<JSONObject> mVar) {
                    try {
                        c.this.f8968a.a();
                        q.c("SdkSettingsHelper", "Fetch setting fail");
                    } catch (Throwable th2) {
                    }
                }
            }).setResponseOnMain(false).build(e.c().e());
        }
    }
}
