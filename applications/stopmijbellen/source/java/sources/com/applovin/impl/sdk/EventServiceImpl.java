package com.applovin.impl.sdk;

import android.content.Intent;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import com.applovin.impl.sdk.network.C1464h;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p055c.C1316d;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.impl.sdk.p057e.C1387z;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinEventParameters;
import com.applovin.sdk.AppLovinEventService;
import com.applovin.sdk.AppLovinEventTypes;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/EventServiceImpl.class */
public class EventServiceImpl implements AppLovinEventService {

    /* renamed from: a */
    private final C1408l f4483a;

    /* renamed from: b */
    private final Map<String, Object> f4484b;

    /* renamed from: c */
    private final AtomicBoolean f4485c = new AtomicBoolean();

    public EventServiceImpl(C1408l c1408l) {
        this.f4483a = c1408l;
        if (((Boolean) c1408l.m5511a(C1314b.f4803bf)).booleanValue()) {
            this.f4484b = JsonUtils.toStringObjectMap((String) c1408l.m5478b((C1316d<C1316d<String>>) C1316d.f5004t, (C1316d<String>) JsonUtils.EMPTY_JSON), new HashMap());
            return;
        }
        this.f4484b = new HashMap();
        c1408l.m5508a((C1316d<C1316d<String>>) C1316d.f5004t, (C1316d<String>) JsonUtils.EMPTY_JSON);
    }

    /* renamed from: a */
    public String m6082a() {
        return C0082b.m8754h(new StringBuilder(), (String) this.f4483a.m5511a(C1314b.f4741aW), "4.0/pix");
    }

    /* renamed from: a */
    public Map<String, String> m6078a(C1472o c1472o, Map<String, String> map) {
        HashMap hashMap = new HashMap();
        if (map != null) {
            hashMap.putAll(map);
        }
        boolean contains = this.f4483a.m5480b(C1314b.f4801bd).contains(c1472o.m5158a());
        hashMap.put("AppLovin-Event", contains ? c1472o.m5158a() : "postinstall");
        if (!contains) {
            hashMap.put("AppLovin-Sub-Event", c1472o.m5158a());
        }
        return hashMap;
    }

    /* renamed from: a */
    public Map<String, String> m6077a(C1472o c1472o, boolean z) {
        boolean contains = this.f4483a.m5480b(C1314b.f4801bd).contains(c1472o.m5158a());
        Map<String, Object> m5408a = this.f4483a.m5522U().m5408a(null, z, false);
        m5408a.put("event", contains ? c1472o.m5158a() : "postinstall");
        m5408a.put("event_id", c1472o.m5155d());
        m5408a.put("ts", Long.toString(c1472o.m5156c()));
        if (!contains) {
            m5408a.put("sub_event", c1472o.m5158a());
        }
        return Utils.stringifyObjectMap(m5408a);
    }

    /* renamed from: b */
    public String m6076b() {
        return C0082b.m8754h(new StringBuilder(), (String) this.f4483a.m5511a(C1314b.f4742aX), "4.0/pix");
    }

    /* renamed from: c */
    private void m6074c() {
        if (((Boolean) this.f4483a.m5511a(C1314b.f4803bf)).booleanValue()) {
            this.f4483a.m5508a((C1316d<C1316d<String>>) C1316d.f5004t, (C1316d<String>) CollectionUtils.toJsonString(this.f4484b, JsonUtils.EMPTY_JSON));
        }
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public Map<String, Object> getSuperProperties() {
        return new HashMap(this.f4484b);
    }

    public void maybeTrackAppOpenEvent() {
        if (this.f4485c.compareAndSet(false, true)) {
            this.f4483a.m5447w().trackEvent("landing");
        }
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void setSuperProperty(Object obj, String str) {
        if (TextUtils.isEmpty(str)) {
            C1479t.m5107i("AppLovinEventService", "Super property key cannot be null or empty");
        } else if (obj == null) {
            this.f4484b.remove(str);
            m6074c();
        } else {
            List<String> m5480b = this.f4483a.m5480b(C1314b.f4802be);
            if (Utils.objectIsOfType(obj, m5480b, this.f4483a)) {
                this.f4484b.put(str, Utils.sanitizeSuperProperty(obj, this.f4483a));
                m6074c();
                return;
            }
            C1479t.m5107i("AppLovinEventService", "Failed to set super property '" + obj + "' for key '" + str + "' - valid super property types include: " + m5480b);
        }
    }

    public String toString() {
        return "EventService{}";
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackCheckout(String str, Map<String, String> map) {
        HashMap hashMap = map != null ? new HashMap(map) : new HashMap(1);
        hashMap.put(AppLovinEventParameters.CHECKOUT_TRANSACTION_IDENTIFIER, str);
        trackEvent(AppLovinEventTypes.USER_COMPLETED_CHECKOUT, hashMap);
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackEvent(String str) {
        trackEvent(str, new HashMap());
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackEvent(String str, Map<String, String> map) {
        trackEvent(str, map, null);
    }

    public void trackEvent(String str, Map<String, String> map, final Map<String, String> map2) {
        C1479t m5542A = this.f4483a.m5542A();
        m5542A.m5116b("AppLovinEventService", "Tracking event: \"" + str + "\" with parameters: " + map);
        final C1472o c1472o = new C1472o(str, map, this.f4484b);
        try {
            this.f4483a.m5525R().m5653a(new C1387z(this.f4483a, new Runnable() { // from class: com.applovin.impl.sdk.EventServiceImpl.1
                @Override // java.lang.Runnable
                public void run() {
                    EventServiceImpl.this.f4483a.m5523T().m5257a(C1464h.m5222o().m5211c(EventServiceImpl.this.m6082a()).m5207d(EventServiceImpl.this.m6076b()).m5218a(EventServiceImpl.this.m6077a(c1472o, false)).m5214b(EventServiceImpl.this.m6078a(c1472o, map2)).m5210c(c1472o.m5157b()).m5213b(((Boolean) EventServiceImpl.this.f4483a.m5511a(C1314b.f4972ey)).booleanValue()).m5217a(((Boolean) EventServiceImpl.this.f4483a.m5511a(C1314b.f4963ep)).booleanValue()).m5221a());
                }
            }), C1362o.EnumC1364a.BACKGROUND);
        } catch (Throwable th) {
            C1479t m5542A2 = this.f4483a.m5542A();
            m5542A2.m5115b("AppLovinEventService", "Unable to track event: " + c1472o, th);
        }
    }

    public void trackEventSynchronously(String str) {
        C1479t m5542A = this.f4483a.m5542A();
        m5542A.m5116b("AppLovinEventService", "Tracking event: \"" + str + "\" synchronously");
        C1472o c1472o = new C1472o(str, new HashMap(), this.f4484b);
        this.f4483a.m5523T().m5257a(C1464h.m5222o().m5211c(m6082a()).m5207d(m6076b()).m5218a(m6077a(c1472o, true)).m5214b(m6078a(c1472o, (Map<String, String>) null)).m5210c(c1472o.m5157b()).m5213b(((Boolean) this.f4483a.m5511a(C1314b.f4972ey)).booleanValue()).m5217a(((Boolean) this.f4483a.m5511a(C1314b.f4963ep)).booleanValue()).m5221a());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.applovin.sdk.AppLovinEventService
    public void trackInAppPurchase(Intent intent, Map<String, String> map) {
        HashMap hashMap;
        HashMap hashMap2 = map != null ? new HashMap(map) : new HashMap();
        try {
            hashMap2.put(AppLovinEventParameters.IN_APP_PURCHASE_DATA, intent.getStringExtra("INAPP_PURCHASE_DATA"));
            hashMap2.put(AppLovinEventParameters.IN_APP_DATA_SIGNATURE, intent.getStringExtra("INAPP_DATA_SIGNATURE"));
            hashMap = hashMap2;
        } catch (Throwable th) {
            String str = "AppLovinEventService";
            C1479t.m5113c(str, "Unable to track in app purchase - invalid purchase intent", th);
            hashMap = str;
        }
        trackEvent(AppLovinEventTypes.USER_COMPLETED_IN_APP_PURCHASE, hashMap);
    }
}
