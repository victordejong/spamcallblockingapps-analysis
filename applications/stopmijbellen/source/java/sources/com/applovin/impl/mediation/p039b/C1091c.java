package com.applovin.impl.mediation.p039b;

import android.content.Context;
import android.support.p012v4.media.C0082b;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.ads.AbstractC1078a;
import com.applovin.impl.mediation.p040c.C1106b;
import com.applovin.impl.mediation.p040c.C1107c;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.network.C1447c;
import com.applovin.impl.sdk.network.C1469j;
import com.applovin.impl.sdk.p055c.C1313a;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p056d.C1328f;
import com.applovin.impl.sdk.p056d.C1329g;
import com.applovin.impl.sdk.p057e.AbstractC1378u;
import com.applovin.impl.sdk.p057e.AbstractRunnableC1331a;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.C1493h;
import com.applovin.impl.sdk.utils.C1496j;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxErrorCode;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.google.android.gms.internal.ads.C1676a;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.mediation.b.c */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/b/c.class */
public class C1091c extends AbstractRunnableC1331a {

    /* renamed from: a */
    private final String f3933a;

    /* renamed from: c */
    private final MaxAdFormat f3934c;

    /* renamed from: d */
    private final Map<String, Object> f3935d;

    /* renamed from: e */
    private final C1469j f3936e;

    /* renamed from: f */
    private final JSONArray f3937f;

    /* renamed from: g */
    private final Context f3938g;

    /* renamed from: h */
    private final AbstractC1078a.AbstractC1079a f3939h;

    public C1091c(String str, MaxAdFormat maxAdFormat, Map<String, Object> map, C1469j c1469j, JSONArray jSONArray, Context context, C1408l c1408l, AbstractC1078a.AbstractC1079a abstractC1079a) {
        super(C1676a.m4789h("TaskFetchMediatedAd ", str), c1408l);
        this.f3933a = str;
        this.f3934c = maxAdFormat;
        this.f3935d = map;
        this.f3936e = c1469j;
        this.f3937f = jSONArray;
        this.f3938g = context;
        this.f3939h = abstractC1079a;
    }

    /* renamed from: a */
    private String m6516a() {
        return C1106b.m6464a(this.f5113b);
    }

    /* renamed from: a */
    public void m6515a(int i, String str) {
        StringBuilder m8752j = C0082b.m8752j("Unable to fetch ");
        m8752j.append(this.f3933a);
        m8752j.append(" ad: server returned ");
        m8752j.append(i);
        m5728d(m8752j.toString());
        if (i == -800) {
            this.f5113b.m5524S().m5741a(C1328f.f5095o);
        }
        C1496j.m5027a(this.f3939h, this.f3933a, i == -1009 ? new MaxErrorImpl(-1009, str) : i == -1001 ? new MaxErrorImpl(-1001, str) : StringUtils.isValidString(str) ? new MaxErrorImpl(MaxErrorCode.NETWORK_ERROR, str) : new MaxErrorImpl(-1));
    }

    /* renamed from: a */
    private void m6512a(C1329g c1329g) {
        C1328f c1328f = C1328f.f5083c;
        long m5738b = c1329g.m5738b(c1328f);
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - m5738b > TimeUnit.MINUTES.toMillis(((Integer) this.f5113b.m5511a(C1314b.f4912dk)).intValue())) {
            c1329g.m5737b(c1328f, currentTimeMillis);
            c1329g.m5736c(C1328f.f5084d);
        }
    }

    /* renamed from: a */
    public void m6511a(JSONObject jSONObject) {
        try {
            C1493h.m5052d(jSONObject, this.f5113b);
            C1493h.m5053c(jSONObject, this.f5113b);
            C1493h.m5050e(jSONObject, this.f5113b);
            C1493h.m5048f(jSONObject, this.f5113b);
            C1106b.m6463a(jSONObject, this.f5113b);
            C1106b.m6461b(jSONObject, this.f5113b);
            if (this.f3934c != MaxAdFormat.formatFromString(JsonUtils.getString(jSONObject, "ad_format", null))) {
                C1479t.m5107i(m5727e(), "Ad format requested does not match ad unit id's format.");
            }
            this.f5113b.m5525R().m5654a(m6509b(jSONObject));
        } catch (Throwable th) {
            m5732a("Unable to process mediated ad response", th);
            throw new RuntimeException("Unable to process ad: " + th);
        }
    }

    /* renamed from: b */
    private C1095e m6509b(JSONObject jSONObject) {
        return new C1095e(this.f3933a, this.f3934c, this.f3935d, jSONObject, this.f3938g, this.f5113b, this.f3939h);
    }

    /* renamed from: b */
    private String m6510b() {
        return C1106b.m6462b(this.f5113b);
    }

    /* renamed from: c */
    private Map<String, String> m6508c() {
        HashMap hashMap = new HashMap(2);
        hashMap.put("AppLovin-Ad-Unit-Id", this.f3933a);
        hashMap.put("AppLovin-Ad-Format", this.f3934c.getLabel());
        return hashMap;
    }

    /* renamed from: c */
    private void m6507c(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("disabled", new JSONArray((Collection) this.f5113b.m5541B().m6167c()));
            jSONObject2.put("installed", C1107c.m6457a(this.f5113b));
            jSONObject2.put("initialized", this.f5113b.m5540C().m6175d());
            jSONObject2.put("initialized_classnames", new JSONArray((Collection) this.f5113b.m5540C().m6176c()));
            jSONObject2.put("loaded_classnames", new JSONArray((Collection) this.f5113b.m5541B().m6174a()));
            jSONObject2.put("failed_classnames", new JSONArray((Collection) this.f5113b.m5541B().m6168b()));
            jSONObject.put("adapters_info", jSONObject2);
        } catch (Exception e) {
            m5732a("Failed to populate adapter classNames", e);
            throw new RuntimeException("Failed to populate classNames: " + e);
        }
    }

    /* renamed from: d */
    private void m6506d(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArray = this.f3937f;
        if (jSONArray != null) {
            jSONObject.put("signal_data", jSONArray);
        }
    }

    /* renamed from: e */
    private void m6505e(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("ad_unit_id", this.f3933a);
        jSONObject2.put("ad_format", this.f3934c.getLabel());
        Map<String, String> stringMap = BundleUtils.toStringMap(this.f3936e.m5166a());
        String m5104a = this.f5113b.m5538E().m5104a(this.f3933a);
        if (StringUtils.isValidString(m5104a)) {
            stringMap.put("previous_winning_network", m5104a);
        }
        jSONObject2.put("extra_parameters", CollectionUtils.toJson(stringMap));
        if (StringUtils.isValidString(this.f3936e.m5165b())) {
            jSONObject2.put("custom_postback_data", this.f3936e.m5165b());
        }
        jSONObject.put("ad_info", jSONObject2);
    }

    /* renamed from: f */
    private void m6504f(JSONObject jSONObject) {
        JSONObject andResetCustomPostBodyData = this.f5113b.m5539D().getAndResetCustomPostBodyData();
        if (andResetCustomPostBodyData == null || !Utils.isDspDemoApp(this.f5113b.m5532K())) {
            return;
        }
        JsonUtils.putAll(jSONObject, andResetCustomPostBodyData);
    }

    /* renamed from: g */
    private void m6503g(JSONObject jSONObject) {
        JsonUtils.putObject(jSONObject, "sdk_extra_parameters", new JSONObject(this.f5113b.m5454p().getExtraParameters()));
    }

    /* renamed from: h */
    private JSONObject m6502h() throws JSONException {
        JSONObject jSONObject = new JSONObject(this.f5113b.m5522U().m5408a(null, false, true));
        m6505e(jSONObject);
        m6506d(jSONObject);
        m6507c(jSONObject);
        m6504f(jSONObject);
        m6503g(jSONObject);
        return jSONObject;
    }

    @Override // java.lang.Runnable
    public void run() {
        StringBuilder m8752j = C0082b.m8752j("Fetching next ad for ad unit id: ");
        m8752j.append(this.f3933a);
        m8752j.append(" and format: ");
        m8752j.append(this.f3934c);
        m5733a(m8752j.toString());
        if (((Boolean) this.f5113b.m5511a(C1314b.f4880dE)).booleanValue() && Utils.isVPNConnected()) {
            m5733a("User is connected to a VPN");
        }
        C1329g m5524S = this.f5113b.m5524S();
        m5524S.m5741a(C1328f.f5094n);
        C1328f c1328f = C1328f.f5083c;
        if (m5524S.m5738b(c1328f) == 0) {
            m5524S.m5737b(c1328f, System.currentTimeMillis());
        }
        try {
            JSONObject m6502h = m6502h();
            HashMap hashMap = new HashMap();
            hashMap.put("rid", UUID.randomUUID().toString());
            if (!((Boolean) this.f5113b.m5511a(C1314b.f4963ep)).booleanValue()) {
                hashMap.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f5113b.m5444z());
            }
            if (this.f5113b.m5534I().m6192a()) {
                hashMap.put("test_mode", "1");
            }
            String m6186c = this.f5113b.m5534I().m6186c();
            if (StringUtils.isValidString(m6186c)) {
                hashMap.put("filter_ad_network", m6186c);
                if (!this.f5113b.m5534I().m6192a()) {
                    hashMap.put("fhkZsVqYC7", "1");
                }
                if (this.f5113b.m5534I().m6188b()) {
                    hashMap.put("force_ad_network", m6186c);
                }
            }
            HashMap hashMap2 = new HashMap();
            hashMap2.putAll(m6508c());
            m6512a(m5524S);
            AbstractC1378u<JSONObject> abstractC1378u = new AbstractC1378u<JSONObject>(C1447c.m5327a(this.f5113b).mo5185b("POST").mo5184b(hashMap2).mo5192a(m6516a()).mo5181c(m6510b()).mo5191a((Map<String, String>) hashMap).mo5190a(m6502h).mo5175d(((Boolean) this.f5113b.m5511a(C1313a.f4686U)).booleanValue()).mo5193a((C1447c.C1448a) new JSONObject()).mo5188b(((Long) this.f5113b.m5511a(C1313a.f4693f)).intValue()).mo5195a(((Integer) this.f5113b.m5511a(C1314b.f4843cT)).intValue()).mo5182c(((Long) this.f5113b.m5511a(C1313a.f4692e)).intValue()).mo5196a(), this.f5113b) { // from class: com.applovin.impl.mediation.b.c.1
                /* renamed from: a */
                public void mo5331a(int i, String str, JSONObject jSONObject) {
                    C1091c.this.m6515a(i, str);
                }

                /* renamed from: a */
                public void mo5330a(JSONObject jSONObject, int i) {
                    if (i != 200) {
                        C1091c.this.m6515a(i, (String) null);
                        return;
                    }
                    JsonUtils.putLong(jSONObject, "ad_fetch_latency_millis", ((AbstractC1378u) this).f5215d.m5338a());
                    JsonUtils.putLong(jSONObject, "ad_fetch_response_size", ((AbstractC1378u) this).f5215d.m5335b());
                    C1091c.this.m6511a(jSONObject);
                }
            };
            abstractC1378u.m5627a(C1313a.f4690c);
            abstractC1378u.m5623b(C1313a.f4691d);
            this.f5113b.m5525R().m5654a(abstractC1378u);
        } catch (Throwable th) {
            StringBuilder m8752j2 = C0082b.m8752j("Unable to fetch ad ");
            m8752j2.append(this.f3933a);
            m5732a(m8752j2.toString(), th);
            throw new RuntimeException("Unable to fetch ad: " + th);
        }
    }
}
