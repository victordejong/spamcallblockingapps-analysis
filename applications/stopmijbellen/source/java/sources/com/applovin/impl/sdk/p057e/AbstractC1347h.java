package com.applovin.impl.sdk.p057e;

import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.network.C1447c;
import com.applovin.impl.sdk.network.C1469j;
import com.applovin.impl.sdk.p053ad.C1285d;
import com.applovin.impl.sdk.p053ad.EnumC1282b;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p056d.C1328f;
import com.applovin.impl.sdk.p056d.C1329g;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.C1493h;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.mediation.AppLovinUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.e.h */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/h.class */
public abstract class AbstractC1347h extends AbstractRunnableC1331a {

    /* renamed from: a */
    public final C1285d f5142a;

    /* renamed from: c */
    private final C1469j f5143c;

    public AbstractC1347h(C1285d c1285d, C1469j c1469j, String str, C1408l c1408l) {
        super(str, c1408l);
        this.f5142a = c1285d;
        this.f5143c = c1469j;
    }

    /* renamed from: a */
    private void m5680a(C1329g c1329g) {
        C1328f c1328f = C1328f.f5083c;
        long m5738b = c1329g.m5738b(c1328f);
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - m5738b > TimeUnit.MINUTES.toMillis(((Integer) this.f5113b.m5511a(C1314b.f4912dk)).intValue())) {
            c1329g.m5737b(c1328f, currentTimeMillis);
            c1329g.m5736c(C1328f.f5084d);
        }
    }

    /* renamed from: i */
    private Map<String, String> m5678i() {
        HashMap hashMap = new HashMap(3);
        hashMap.put("AppLovin-Zone-Id", this.f5142a.m6009a());
        if (this.f5142a.m6002c() != null) {
            hashMap.put("AppLovin-Ad-Size", this.f5142a.m6002c().getLabel());
        }
        if (this.f5142a.m6001d() != null) {
            hashMap.put("AppLovin-Ad-Type", this.f5142a.m6001d().getLabel());
        }
        return hashMap;
    }

    /* renamed from: a */
    public abstract AbstractRunnableC1331a mo5368a(JSONObject jSONObject);

    /* renamed from: a */
    public Map<String, String> mo5370a() {
        HashMap hashMap = new HashMap(4);
        hashMap.put(AppLovinUtils.ServerParameterKeys.ZONE_ID, this.f5142a.m6009a());
        if (this.f5142a.m6002c() != null) {
            hashMap.put("size", this.f5142a.m6002c().getLabel());
        }
        if (this.f5142a.m6001d() != null) {
            hashMap.put("require", this.f5142a.m6001d().getLabel());
        }
        C1469j c1469j = this.f5143c;
        if (c1469j != null) {
            hashMap.putAll(BundleUtils.toStringMap(c1469j.m5166a()));
        }
        return hashMap;
    }

    /* renamed from: a */
    public void mo5369a(int i) {
        StringBuilder m8752j = C0082b.m8752j("Unable to fetch ");
        m8752j.append(this.f5142a);
        m8752j.append(" ad: server returned ");
        m8752j.append(i);
        m5728d(m8752j.toString());
        if (i == -800) {
            this.f5113b.m5524S().m5741a(C1328f.f5088h);
        }
    }

    /* renamed from: b */
    public abstract String mo5367b();

    /* renamed from: b */
    public void m5679b(JSONObject jSONObject) {
        C1493h.m5052d(jSONObject, this.f5113b);
        C1493h.m5053c(jSONObject, this.f5113b);
        C1493h.m5050e(jSONObject, this.f5113b);
        C1285d.m6005a(jSONObject);
        this.f5113b.m5525R().m5654a(mo5368a(jSONObject));
    }

    /* renamed from: c */
    public abstract String mo5366c();

    /* renamed from: h */
    public EnumC1282b mo5664h() {
        return this.f5142a.m6000e() ? EnumC1282b.APPLOVIN_PRIMARY_ZONE : EnumC1282b.APPLOVIN_CUSTOM_ZONE;
    }

    @Override // java.lang.Runnable
    public void run() {
        HashMap hashMap;
        String str;
        JSONObject jSONObject;
        String str2;
        StringBuilder m8752j = C0082b.m8752j("Fetching next ad of zone: ");
        m8752j.append(this.f5142a);
        m5733a(m8752j.toString());
        if (((Boolean) this.f5113b.m5511a(C1314b.f4880dE)).booleanValue() && Utils.isVPNConnected()) {
            m5733a("User is connected to a VPN");
        }
        C1329g m5524S = this.f5113b.m5524S();
        m5524S.m5741a(C1328f.f5081a);
        C1328f c1328f = C1328f.f5083c;
        if (m5524S.m5738b(c1328f) == 0) {
            m5524S.m5737b(c1328f, System.currentTimeMillis());
        }
        JSONObject jSONObject2 = null;
        try {
            JSONObject andResetCustomPostBody = this.f5113b.m5449u().getAndResetCustomPostBody();
            if (((Boolean) this.f5113b.m5511a(C1314b.f4907df)).booleanValue()) {
                JSONObject jSONObject3 = new JSONObject(this.f5113b.m5522U().m5408a(mo5370a(), false, true));
                HashMap hashMap2 = new HashMap();
                hashMap2.put("rid", UUID.randomUUID().toString());
                if (!((Boolean) this.f5113b.m5511a(C1314b.f4963ep)).booleanValue()) {
                    hashMap2.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f5113b.m5444z());
                }
                hashMap = hashMap2;
                jSONObject = jSONObject3;
                str = "POST";
                if (andResetCustomPostBody != null) {
                    JsonUtils.putAll(jSONObject3, andResetCustomPostBody);
                    hashMap = hashMap2;
                    jSONObject = jSONObject3;
                    str = "POST";
                }
            } else {
                hashMap = Utils.stringifyObjectMap(this.f5113b.m5522U().m5408a(mo5370a(), false, false));
                if (andResetCustomPostBody != null) {
                    jSONObject2 = andResetCustomPostBody;
                    str2 = "POST";
                } else {
                    str2 = "GET";
                }
                JSONObject jSONObject4 = jSONObject2;
                str = str2;
                jSONObject = jSONObject4;
            }
            if (Utils.isDspDemoApp(m5726f())) {
                hashMap.putAll(this.f5113b.m5449u().getAndResetCustomQueryParams());
            }
            HashMap hashMap3 = new HashMap();
            hashMap3.putAll(m5678i());
            m5680a(m5524S);
            C1447c.C1448a mo5188b = C1447c.m5327a(this.f5113b).mo5192a(mo5367b()).mo5181c(mo5366c()).mo5191a(hashMap).mo5185b(str).mo5184b(hashMap3).mo5193a((C1447c.C1448a) new JSONObject()).mo5195a(((Integer) this.f5113b.m5511a(C1314b.f4843cT)).intValue()).m5310a(((Boolean) this.f5113b.m5511a(C1314b.f4844cU)).booleanValue()).m5309b(((Boolean) this.f5113b.m5511a(C1314b.f4845cV)).booleanValue()).mo5188b(((Integer) this.f5113b.m5511a(C1314b.f4842cS)).intValue());
            if (jSONObject != null) {
                mo5188b.mo5190a(jSONObject);
                mo5188b.mo5175d(((Boolean) this.f5113b.m5511a(C1314b.f4971ex)).booleanValue());
            }
            AbstractC1378u<JSONObject> abstractC1378u = new AbstractC1378u<JSONObject>(mo5188b.mo5196a(), this.f5113b) { // from class: com.applovin.impl.sdk.e.h.1
                /* renamed from: a */
                public void mo5331a(int i, String str3, JSONObject jSONObject5) {
                    AbstractC1347h.this.mo5369a(i);
                }

                /* renamed from: a */
                public void mo5330a(JSONObject jSONObject5, int i) {
                    if (i != 200) {
                        AbstractC1347h.this.mo5369a(i);
                        return;
                    }
                    JsonUtils.putLong(jSONObject5, "ad_fetch_latency_millis", ((AbstractC1378u) this).f5215d.m5338a());
                    JsonUtils.putLong(jSONObject5, "ad_fetch_response_size", ((AbstractC1378u) this).f5215d.m5335b());
                    AbstractC1347h.this.m5679b(jSONObject5);
                }
            };
            abstractC1378u.m5627a(C1314b.f4737aS);
            abstractC1378u.m5623b(C1314b.f4738aT);
            this.f5113b.m5525R().m5654a(abstractC1378u);
        } catch (Throwable th) {
            StringBuilder m8752j2 = C0082b.m8752j("Unable to fetch ad ");
            m8752j2.append(this.f5142a);
            m5732a(m8752j2.toString(), th);
            mo5369a(0);
        }
    }
}
