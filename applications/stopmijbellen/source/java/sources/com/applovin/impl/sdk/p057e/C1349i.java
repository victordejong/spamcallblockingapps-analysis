package com.applovin.impl.sdk.p057e;

import com.applovin.impl.mediation.p040c.C1107c;
import com.applovin.impl.sdk.C1393i;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1420n;
import com.applovin.impl.sdk.network.C1447c;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.impl.sdk.utils.C1493h;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.google.android.gms.security.ProviderInstaller;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.e.i */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/i.class */
public class C1349i extends AbstractRunnableC1331a {

    /* renamed from: a */
    private static final AtomicBoolean f5145a = new AtomicBoolean();

    /* renamed from: c */
    private final int f5146c;

    /* renamed from: d */
    private final Object f5147d = new Object();

    /* renamed from: e */
    private AbstractC1351a f5148e;

    /* renamed from: com.applovin.impl.sdk.e.i$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/i$a.class */
    public interface AbstractC1351a {
        /* renamed from: a */
        void mo5443a(JSONObject jSONObject);
    }

    /* renamed from: com.applovin.impl.sdk.e.i$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/i$b.class */
    public class C1352b extends AbstractRunnableC1331a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1352b(C1408l c1408l) {
            super("TaskTimeoutFetchBasicSettings", c1408l, true);
            C1349i.this = r6;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (C1349i.this.f5147d) {
                if (C1349i.this.f5148e != null) {
                    m5728d("Timing out fetch basic settings...");
                    C1349i.this.m5672a(new JSONObject());
                }
            }
        }
    }

    public C1349i(int i, C1408l c1408l, AbstractC1351a abstractC1351a) {
        super("TaskFetchBasicSettings", c1408l, true);
        this.f5146c = i;
        this.f5148e = abstractC1351a;
    }

    /* renamed from: a */
    public void m5672a(JSONObject jSONObject) {
        synchronized (this.f5147d) {
            AbstractC1351a abstractC1351a = this.f5148e;
            if (abstractC1351a != null) {
                abstractC1351a.mo5443a(jSONObject);
                this.f5148e = null;
            }
        }
    }

    /* renamed from: c */
    private String m5669c() {
        return C1493h.m5058a((String) this.f5113b.m5511a(C1314b.f4735aQ), "5.0/i", m5729d());
    }

    /* renamed from: h */
    private String m5668h() {
        return C1493h.m5058a((String) this.f5113b.m5511a(C1314b.f4736aR), "5.0/i", m5729d());
    }

    /* renamed from: a */
    public Map<String, String> m5675a() {
        HashMap hashMap = new HashMap();
        hashMap.put("rid", UUID.randomUUID().toString());
        if (!((Boolean) this.f5113b.m5511a(C1314b.f4963ep)).booleanValue()) {
            hashMap.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f5113b.m5444z());
        }
        Boolean m5570a = C1393i.m5575b().m5570a(m5726f());
        if (m5570a != null) {
            hashMap.put("huc", m5570a.toString());
        }
        Boolean m5570a2 = C1393i.m5580a().m5570a(m5726f());
        if (m5570a2 != null) {
            hashMap.put("aru", m5570a2.toString());
        }
        Boolean m5570a3 = C1393i.m5573c().m5570a(m5726f());
        if (m5570a3 != null) {
            hashMap.put("dns", m5570a3.toString());
        }
        return hashMap;
    }

    /* renamed from: b */
    public JSONObject m5671b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sdk_version", AppLovinSdk.VERSION);
            jSONObject.put("is_cross_promo", this.f5113b.m5467e());
            jSONObject.put("init_count", this.f5146c);
            jSONObject.put("server_installed_at", this.f5113b.m5511a(C1314b.f4750af));
            String userEngagementSdkVersion = Utils.getUserEngagementSdkVersion();
            if (StringUtils.isValidString(userEngagementSdkVersion)) {
                jSONObject.put("ue_sdk_version", userEngagementSdkVersion);
            }
            if (this.f5113b.m5528O()) {
                jSONObject.put("first_install", true);
            }
            if (!this.f5113b.m5527P()) {
                jSONObject.put("first_install_v2", true);
            }
            String str = (String) this.f5113b.m5511a(C1314b.f4926dy);
            if (StringUtils.isValidString(str)) {
                jSONObject.put("plugin_version", str);
            }
            String m5450t = this.f5113b.m5450t();
            if (StringUtils.isValidString(m5450t)) {
                jSONObject.put("mediation_provider", m5450t);
            }
            jSONObject.put("installed_mediation_adapters", C1107c.m6457a(this.f5113b));
            Map<String, Object> m5395h = this.f5113b.m5522U().m5395h();
            jSONObject.put("package_name", m5395h.get("package_name"));
            jSONObject.put("app_version", m5395h.get("app_version"));
            jSONObject.put("test_ads", m5395h.get("test_ads"));
            jSONObject.put("debug", m5395h.get("debug"));
            jSONObject.put("tg", m5395h.get("tg"));
            jSONObject.put("target_sdk", m5395h.get("target_sdk"));
            if (this.f5113b.m5454p().getInitializationAdUnitIds().size() > 0) {
                List<String> removeTrimmedEmptyStrings = CollectionUtils.removeTrimmedEmptyStrings(this.f5113b.m5454p().getInitializationAdUnitIds());
                jSONObject.put("ad_unit_ids", CollectionUtils.implode(removeTrimmedEmptyStrings, removeTrimmedEmptyStrings.size()));
            }
            jSONObject.put("IABTCF_TCString", m5395h.get("IABTCF_TCString"));
            jSONObject.put("IABTCF_TCString", m5395h.get("IABTCF_gdprApplies"));
            Map<String, Object> m5406b = this.f5113b.m5522U().m5406b();
            jSONObject.put("platform", m5406b.get("platform"));
            jSONObject.put("os", m5406b.get("os"));
            jSONObject.put("locale", m5406b.get("locale"));
            jSONObject.put("brand", m5406b.get("brand"));
            jSONObject.put("brand_name", m5406b.get("brand_name"));
            jSONObject.put("hardware", m5406b.get("hardware"));
            jSONObject.put("model", m5406b.get("model"));
            jSONObject.put("revision", m5406b.get("revision"));
            if (((Boolean) this.f5113b.m5511a(C1314b.f4883dH)).booleanValue()) {
                jSONObject.put("mtl", this.f5113b.m5493ab().m4916b());
            }
            C1420n.C1426a m5392k = this.f5113b.m5522U().m5392k();
            jSONObject.put("dnt", m5392k.f5375a);
            if (StringUtils.isValidString(m5392k.f5376b)) {
                jSONObject.put("idfa", m5392k.f5376b);
            }
            C1420n.C1427b m5391l = this.f5113b.m5522U().m5391l();
            if (((Boolean) this.f5113b.m5511a(C1314b.f4918dq)).booleanValue() && m5391l != null) {
                jSONObject.put("idfv", m5391l.f5377a);
                jSONObject.put("idfv_scope", m5391l.f5378b);
            }
            String name = this.f5113b.m5453q().getName();
            if (StringUtils.isValidString(name)) {
                jSONObject.put("user_segment_name", StringUtils.encodeUrlString(name));
            }
            if (((Boolean) this.f5113b.m5511a(C1314b.f4921dt)).booleanValue()) {
                jSONObject.put("compass_random_token", this.f5113b.m5456n());
            }
            if (((Boolean) this.f5113b.m5511a(C1314b.f4923dv)).booleanValue()) {
                jSONObject.put("applovin_random_token", this.f5113b.m5455o());
            }
            if (this.f5113b.m5534I().m6192a()) {
                jSONObject.put("test_mode", true);
            }
            String m6186c = this.f5113b.m5534I().m6186c();
            if (StringUtils.isValidString(m6186c)) {
                jSONObject.put("test_mode_network", m6186c);
            }
            jSONObject.put("sdk_extra_parameters", new JSONObject(this.f5113b.m5454p().getExtraParameters()));
        } catch (JSONException e) {
            m5732a("Failed to construct JSON body", e);
        }
        return jSONObject;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (((Boolean) this.f5113b.m5511a(C1314b.f4943eP)).booleanValue() && f5145a.compareAndSet(false, true)) {
            try {
                ProviderInstaller.installIfNeeded(this.f5113b.m5532K());
            } catch (Throwable th) {
                m5732a("Cannot update security provider", th);
            }
        }
        Map<String, String> m5675a = m5675a();
        C1447c.C1448a mo5182c = C1447c.m5327a(this.f5113b).mo5192a(m5669c()).mo5181c(m5668h()).mo5191a(m5675a).mo5190a(m5671b()).mo5175d(((Boolean) this.f5113b.m5511a(C1314b.f4969ev)).booleanValue()).mo5185b("POST").mo5193a((C1447c.C1448a) new JSONObject()).mo5195a(((Integer) this.f5113b.m5511a(C1314b.f4849cZ)).intValue()).mo5182c(((Integer) this.f5113b.m5511a(C1314b.f4904dc)).intValue());
        C1408l c1408l = this.f5113b;
        C1314b<Integer> c1314b = C1314b.f4848cY;
        C1447c mo5196a = mo5182c.mo5188b(((Integer) c1408l.m5511a(c1314b)).intValue()).mo5196a();
        this.f5113b.m5525R().m5652a(new C1352b(this.f5113b), C1362o.EnumC1364a.TIMEOUT, ((Integer) this.f5113b.m5511a(c1314b)).intValue() + 250);
        AbstractC1378u<JSONObject> abstractC1378u = new AbstractC1378u<JSONObject>(mo5196a, this.f5113b, m5725g()) { // from class: com.applovin.impl.sdk.e.i.1
            /* renamed from: a */
            public void mo5331a(int i, String str, JSONObject jSONObject) {
                m5728d("Unable to fetch basic SDK settings: server returned " + i);
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                }
                C1349i.this.m5672a(jSONObject);
            }

            /* renamed from: a */
            public void mo5330a(JSONObject jSONObject, int i) {
                C1349i.this.m5672a(jSONObject);
            }
        };
        abstractC1378u.m5627a(C1314b.f4735aQ);
        abstractC1378u.m5623b(C1314b.f4736aR);
        this.f5113b.m5525R().m5654a(abstractC1378u);
    }
}
