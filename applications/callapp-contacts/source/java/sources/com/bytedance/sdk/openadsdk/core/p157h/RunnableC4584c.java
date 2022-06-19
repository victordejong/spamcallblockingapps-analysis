package com.bytedance.sdk.openadsdk.core.p157h;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Build;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.bytedance.sdk.adnet.core.C4218m;
import com.bytedance.sdk.adnet.p141b.C4181f;
import com.bytedance.sdk.openadsdk.core.C4570g;
import com.bytedance.sdk.openadsdk.core.C4590i;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.multipro.C5094b;
import com.bytedance.sdk.openadsdk.p174j.C4959e;
import com.bytedance.sdk.openadsdk.p176k.p183g.C5028b;
import com.bytedance.sdk.openadsdk.utils.C5432a;
import com.bytedance.sdk.openadsdk.utils.C5433aa;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5461h;
import com.bytedance.sdk.openadsdk.utils.C5465i;
import com.bytedance.sdk.openadsdk.utils.C5467k;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5482t;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.mopub.mobileads.PangleAdapterConfiguration;
import com.mopub.network.ImpressionData;
import com.p094a.p095a.p096a.p097a.p099b.C3236a;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.io.File;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.core.h.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/h/c.class */
public class RunnableC4584c implements Runnable {

    /* renamed from: e */
    private static volatile RunnableC4584c f16722e;

    /* renamed from: a */
    private final AbstractC4583b f16725a;

    /* renamed from: b */
    private final Context f16726b;

    /* renamed from: c */
    private final Executor f16727c;

    /* renamed from: d */
    private static final AtomicLong f16721d = new AtomicLong(0);

    /* renamed from: f */
    private static volatile boolean f16723f = false;

    /* renamed from: g */
    private static boolean f16724g = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.openadsdk.core.h.c$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/h/c$a.class */
    public class C4586a extends BroadcastReceiver {
        private C4586a() {
            RunnableC4584c.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            int intExtra = intent.getIntExtra("b_msg_id", -1);
            if (intExtra == 1) {
                long longExtra = intent.getLongExtra("b_msg_time", -1L);
                if (longExtra <= 0) {
                    return;
                }
                RunnableC4584c.f16721d.set(longExtra);
            } else if (intExtra != 2) {
            } else {
                try {
                    if (RunnableC4584c.this.f16725a == null) {
                        return;
                    }
                    RunnableC4584c.this.f16725a.mo34915a();
                } catch (Throwable th) {
                }
            }
        }
    }

    private RunnableC4584c(AbstractC4583b abstractC4583b) {
        this.f16725a = abstractC4583b == null ? C4600n.m34805h() : abstractC4583b;
        Context m34815a = C4600n.m34815a();
        this.f16726b = m34815a;
        this.f16727c = Executors.newSingleThreadExecutor();
        if (C5094b.m33091b()) {
            try {
                m34815a.registerReceiver(new C4586a(), new IntentFilter("com.bytedance.openadsdk.settingReceiver"));
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: a */
    public static int m34934a(Context context) {
        if (context == null || !m34923c(context)) {
            return -2;
        }
        return PreferenceManager.getDefaultSharedPreferences(context).getInt("IABTCF_gdprApplies", -1);
    }

    /* renamed from: a */
    public static RunnableC4584c m34933a(AbstractC4583b abstractC4583b) {
        if (f16722e == null) {
            synchronized (RunnableC4584c.class) {
                try {
                    if (f16722e == null) {
                        f16722e = new RunnableC4584c(abstractC4583b);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f16722e;
    }

    /* renamed from: a */
    private JSONObject m34929a(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (f16724g) {
            jSONObject2 = C5432a.m32332a(jSONObject);
        }
        return jSONObject2;
    }

    /* renamed from: a */
    public static void m34936a() {
        try {
            Context m34815a = C4600n.m34815a();
            File file = new File(Build.VERSION.SDK_INT >= 24 ? new File(m34815a.getDataDir(), "shared_prefs") : new File(m34815a.getDatabasePath("1").getParentFile().getParentFile(), "shared_prefs"), "tt_sdk_settings.xml");
            if (!file.exists() || !file.isFile()) {
                return;
            }
            String replace = file.getName().replace(".xml", "");
            if (Build.VERSION.SDK_INT >= 24) {
                m34815a.deleteSharedPreferences(replace);
                return;
            }
            m34815a.getSharedPreferences(replace, 0).edit().clear().apply();
            C5467k.m32137c(file);
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public static void m34935a(long j) {
        if (j > 0 && C4600n.m34815a() != null) {
            try {
                Intent intent = new Intent();
                intent.setAction("com.bytedance.openadsdk.settingReceiver");
                intent.putExtra("b_msg_id", 1);
                intent.putExtra("b_msg_time", j);
                C4600n.m34815a().sendBroadcast(intent);
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: a */
    public void m34930a(String str, Map<String, String> map) {
        int i = 1;
        try {
            if (!TextUtils.isEmpty(str)) {
                i = 1;
                if (map != null) {
                    int intValue = Integer.valueOf(map.get("active-control")).intValue();
                    long longValue = Long.valueOf(map.get("ts")).longValue();
                    String str2 = map.get("pst");
                    String m33243a = C5028b.m33243a(str + intValue + longValue);
                    i = 1;
                    if (m33243a != null) {
                        i = 1;
                        if (m33243a.equalsIgnoreCase(str2)) {
                            i = intValue;
                        }
                    }
                }
            }
        } catch (Throwable th) {
            i = 1;
        }
        C4587d.m34918a(i);
    }

    /* renamed from: b */
    public static String m34926b(Context context) {
        return context != null ? PreferenceManager.getDefaultSharedPreferences(context).getString(C4588e.f16732b, "") : "";
    }

    /* renamed from: b */
    public static void m34927b() {
        if (C4600n.m34815a() != null) {
            try {
                Intent intent = new Intent();
                intent.setAction("com.bytedance.openadsdk.settingReceiver");
                intent.putExtra("b_msg_id", 2);
                C4600n.m34815a().sendBroadcast(intent);
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: c */
    private static boolean m34923c(Context context) {
        if (context != null) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            return (defaultSharedPreferences.getInt("IABTCF_CmpSdkID", BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW) == Integer.MIN_VALUE && defaultSharedPreferences.getInt("IABTCF_CmpSdkVersion", BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW) == Integer.MIN_VALUE) ? false : true;
        }
        return true;
    }

    /* renamed from: e */
    private boolean m34921e() {
        return TextUtils.isEmpty(C4570g.m35020b().m35012d());
    }

    /* renamed from: f */
    private JSONObject m34920f() {
        JSONObject jSONObject = new JSONObject();
        int i = 1;
        C5438af.m32297a(jSONObject, true);
        try {
            int m35004g = C4570g.m35020b().m35004g();
            C5478q.m32112b("setting", "Settings().isGdprUser =" + C4600n.m34805h().m34863s());
            jSONObject.put("ip", C5461h.m32164a(true));
            jSONObject.put("model", Build.MODEL);
            jSONObject.put("device_city", C5438af.m32247n());
            C4588e m34805h = C4600n.m34805h();
            if (m34805h.m34862s("gaid")) {
                jSONObject.put("gaid", C3236a.m39088a().m39084b());
            }
            jSONObject.put("gdpr", m35004g);
            jSONObject.put(VerizonSSPWaterfallProvider.APP_DATA_COPPA_KEY, C4570g.m35020b().m35006f());
            C5478q.m32109c("SdkSettingsHelper", "coppa =" + C4570g.m35020b().m35006f());
            if (m34805h.m34862s("mcc")) {
                jSONObject.put("mcc", C5433aa.m32328b());
            }
            jSONObject.put("conn_type", C5482t.m32088c(this.f16726b));
            jSONObject.put("os", 1);
            jSONObject.put("oversea_version_type", 1);
            jSONObject.put("os_version", String.valueOf(Build.VERSION.RELEASE));
            jSONObject.put("sdk_version", "3.5.0.5");
            jSONObject.put("language", C4590i.m34847a());
            jSONObject.put("time_zone", C5438af.m32243r());
            jSONObject.put("package_name", C5438af.m32283d());
            boolean m32286c = C5438af.m32286c(this.f16726b, C5438af.m32283d());
            C5478q.m32109c("isApplicationForeground", "isApplicationForeground:".concat(String.valueOf(m32286c)));
            if (!m32286c) {
                i = 2;
            }
            jSONObject.put("position", i);
            jSONObject.put(ImpressionData.APP_VERSION, C5438af.m32272f());
            jSONObject.put("vendor", Build.MANUFACTURER);
            jSONObject.put("uuid", C4590i.m34842c(this.f16726b));
            if (C4570g.m35020b() != null && C4570g.m35020b().m35012d() != null) {
                jSONObject.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, C4570g.m35020b().m35012d());
            }
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            jSONObject.put("ts", currentTimeMillis);
            String str = "";
            if (C4570g.m35020b() != null) {
                str = "";
                if (C4570g.m35020b().m35012d() != null) {
                    str = C4570g.m35020b().m35012d().concat(String.valueOf(currentTimeMillis)).concat("3.5.0.5");
                }
            }
            jSONObject.put("req_sign", C5465i.m32148a(str));
            jSONObject.put("tcstring", m34926b(this.f16726b));
            jSONObject.put("tcf_gdpr", m34934a(this.f16726b));
            jSONObject.put("lmt", C5461h.m32163b());
            jSONObject.put("locale_language", C5461h.m32159c());
        } catch (Exception e) {
        }
        return jSONObject;
    }

    /* renamed from: a */
    public void m34928a(boolean z) {
        try {
            if (m34921e()) {
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (!z && currentTimeMillis - f16721d.get() < 600000) {
                return;
            }
            f16721d.set(currentTimeMillis);
            if (C5094b.m33091b()) {
                m34935a(currentTimeMillis);
            }
            this.f16727c.execute(this);
        } catch (Throwable th) {
            C5478q.m32117a("SdkSettingsHelper", "load sdk settings error: ", th);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!C5482t.m32091a(this.f16726b)) {
            try {
                this.f16725a.mo34915a();
            } catch (Throwable th) {
            }
        } else if (m34921e()) {
        } else {
            C5478q.m32109c("SdkSettingsHelper", "Fetch setting request start");
            new C4181f(1, C5438af.m32259i("/api/ad/union/sdk/settings/"), m34929a(m34920f()), new C4218m.AbstractC4219a<JSONObject>() { // from class: com.bytedance.sdk.openadsdk.core.h.c.1
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00d1 -> B:40:0x0096). Please submit an issue!!! */
                @Override // com.bytedance.sdk.adnet.core.C4218m.AbstractC4219a
                /* renamed from: a */
                public void mo33422a(C4218m<JSONObject> c4218m) {
                    JSONObject jSONObject;
                    String str;
                    if (c4218m == null || c4218m.f15468a == null) {
                        try {
                            RunnableC4584c.this.f16725a.mo34915a();
                            return;
                        } catch (Throwable th2) {
                            return;
                        }
                    }
                    int optInt = c4218m.f15468a.optInt("cypher", -1);
                    JSONObject jSONObject2 = c4218m.f15468a;
                    if (optInt == 3) {
                        String m32330b = C5432a.m32330b(c4218m.f15468a.optString("message"));
                        str = m32330b;
                        jSONObject = jSONObject2;
                        if (!TextUtils.isEmpty(m32330b)) {
                            try {
                                jSONObject = new JSONObject(m32330b);
                                str = m32330b;
                            } catch (Throwable th3) {
                                C5478q.m32117a("SdkSettingsHelper", "setting data error: ", th3);
                                str = m32330b;
                                jSONObject = jSONObject2;
                            }
                        }
                    } else {
                        str = null;
                        jSONObject = jSONObject2;
                    }
                    try {
                        RunnableC4584c.this.m34930a(str, c4218m.f15469b == null ? null : c4218m.f15469b.f15510h);
                    } catch (Throwable th4) {
                    }
                    try {
                        if (!RunnableC4584c.f16723f) {
                            boolean unused = RunnableC4584c.f16723f = true;
                        }
                        RunnableC4584c.this.f16725a.mo34909a(jSONObject);
                        C5478q.m32109c("SdkSettingsHelper", "Fetch setting success");
                    } catch (Throwable th5) {
                    }
                    if (!C5094b.m33091b()) {
                        return;
                    }
                    RunnableC4584c.m34927b();
                }

                @Override // com.bytedance.sdk.adnet.core.C4218m.AbstractC4219a
                /* renamed from: b */
                public void mo33419b(C4218m<JSONObject> c4218m) {
                    try {
                        RunnableC4584c.this.f16725a.mo34915a();
                        C5478q.m32109c("SdkSettingsHelper", "Fetch setting fail");
                    } catch (Throwable th2) {
                    }
                }
            }).setResponseOnMain(false).build(C4959e.m33434c().m33432e());
        }
    }
}
