package com.applovin.impl.sdk;

import android.os.Bundle;
import android.view.View;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorPublisher;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.communicator.C1034c;
import com.applovin.impl.communicator.CommunicatorMessageImpl;
import com.applovin.impl.mediation.p038a.AbstractC1044a;
import com.applovin.impl.mediation.p038a.C1045b;
import com.applovin.impl.mediation.p040c.C1107c;
import com.applovin.impl.sdk.network.C1440a;
import com.applovin.impl.sdk.network.C1447c;
import com.applovin.impl.sdk.network.C1464h;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.common.internal.ImagesContract;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.h */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/h.class */
public class C1392h implements AppLovinCommunicatorPublisher, AppLovinCommunicatorSubscriber {

    /* renamed from: a */
    private final C1408l f5241a;

    /* renamed from: b */
    private final AppLovinCommunicator f5242b;

    public C1392h(C1408l c1408l) {
        this.f5241a = c1408l;
        AppLovinCommunicator appLovinCommunicator = AppLovinCommunicator.getInstance(c1408l.m5532K());
        this.f5242b = appLovinCommunicator;
        if (c1408l.m5467e() || !((Boolean) c1408l.m5511a(C1314b.f4947eT)).booleanValue()) {
            return;
        }
        appLovinCommunicator.m7213a(c1408l);
        appLovinCommunicator.subscribe(this, C1034c.f3736a);
    }

    /* renamed from: b */
    private Bundle m5581b(AbstractC1044a abstractC1044a) {
        View m6691w;
        String str;
        Bundle bundle = new Bundle();
        bundle.putString(FacebookAdapter.KEY_ID, abstractC1044a.m6711f());
        bundle.putString("network_name", abstractC1044a.m6653O());
        bundle.putString("max_ad_unit_id", abstractC1044a.getAdUnitId());
        bundle.putString("third_party_ad_placement_id", abstractC1044a.m6705l());
        bundle.putString("ad_format", abstractC1044a.getFormat().getLabel());
        if (StringUtils.isValidString(abstractC1044a.getCreativeId())) {
            bundle.putString("creative_id", abstractC1044a.getCreativeId());
        }
        bundle.putAll(JsonUtils.toBundle(abstractC1044a.m6715b()));
        if (abstractC1044a instanceof C1045b) {
            if (((C1045b) abstractC1044a).m6691w() != null) {
                str = m6691w.getClass().getName() + '@' + Integer.toHexString(m6691w.hashCode());
            } else {
                str = "N/A";
            }
            bundle.putString("ad_view", str);
        }
        return bundle;
    }

    /* renamed from: a */
    public void m5590a() {
        if (!((Boolean) this.f5241a.m5511a(C1314b.f4947eT)).booleanValue()) {
            return;
        }
        m5589a(new Bundle(), "privacy_setting_updated");
    }

    /* renamed from: a */
    public void m5589a(Bundle bundle, String str) {
        if (((Boolean) this.f5241a.m5511a(C1314b.f4947eT)).booleanValue() && !this.f5241a.m5467e()) {
            this.f5242b.getMessagingService().publish(CommunicatorMessageImpl.create(bundle, str, this, this.f5241a.m5480b(C1314b.f4946eS).contains(str)));
        }
    }

    /* renamed from: a */
    public void m5588a(AbstractC1044a abstractC1044a) {
        if (!((Boolean) this.f5241a.m5511a(C1314b.f4947eT)).booleanValue()) {
            return;
        }
        Bundle m5581b = m5581b(abstractC1044a);
        m5581b.putAll(JsonUtils.toBundle(abstractC1044a.m6714c()));
        m5581b.putString("country_code", this.f5241a.m5451s().getCountryCode());
        BundleUtils.putStringIfValid("user_segment", this.f5241a.m5453q().getName(), m5581b);
        m5589a(m5581b, "max_revenue_events");
    }

    /* renamed from: a */
    public void m5587a(AbstractC1044a abstractC1044a, String str) {
        if (!((Boolean) this.f5241a.m5511a(C1314b.f4947eT)).booleanValue()) {
            return;
        }
        Bundle m5581b = m5581b(abstractC1044a);
        m5581b.putString("type", str);
        C1479t m5542A = this.f5241a.m5542A();
        m5542A.m5116b("CommunicatorService", "Sending \"max_ad_events\" message: " + m5581b);
        m5589a(m5581b, "max_ad_events");
    }

    /* renamed from: a */
    public void m5586a(MaxAdapter.InitializationStatus initializationStatus, String str) {
        if (!((Boolean) this.f5241a.m5511a(C1314b.f4947eT)).booleanValue()) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("adapter_class", str);
        bundle.putInt("init_status", initializationStatus.getCode());
        m5589a(bundle, "adapter_initialization_status");
    }

    /* renamed from: a */
    public void m5584a(String str, String str2) {
        if (!((Boolean) this.f5241a.m5511a(C1314b.f4947eT)).booleanValue()) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("adapter_class", str2);
        bundle.putString("sdk_version", str);
        m5589a(bundle, "network_sdk_version_updated");
    }

    /* renamed from: a */
    public void m5583a(String str, String str2, int i, Object obj, String str3, boolean z) {
        if (!((Boolean) this.f5241a.m5511a(C1314b.f4947eT)).booleanValue()) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString(FacebookAdapter.KEY_ID, str);
        bundle.putString(ImagesContract.URL, str2);
        bundle.putInt("code", i);
        bundle.putBundle("body", JsonUtils.toBundle(obj));
        bundle.putBoolean("success", z);
        BundleUtils.putString("error_message", str3, bundle);
        m5589a(bundle, "receive_http_response");
    }

    /* renamed from: a */
    public void m5582a(JSONObject jSONObject, boolean z) {
        if (!((Boolean) this.f5241a.m5511a(C1314b.f4947eT)).booleanValue()) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f5241a.m5444z());
        bundle.putString("applovin_random_token", this.f5241a.m5455o());
        bundle.putString("compass_random_token", this.f5241a.m5456n());
        bundle.putString("device_type", AppLovinSdkUtils.isTablet(this.f5241a.m5532K()) ? "tablet" : "phone");
        bundle.putString("init_success", String.valueOf(z));
        bundle.putParcelableArrayList("installed_mediation_adapters", JsonUtils.toBundle(C1107c.m6457a(this.f5241a)));
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "communicator_settings", new JSONObject());
        Bundle bundle2 = (Bundle) bundle.clone();
        JSONObject jSONObject3 = JsonUtils.getJSONObject(jSONObject2, "user_engagement_sdk_settings", new JSONObject());
        JsonUtils.putString(jSONObject3, "lsc", "Y29tLmFuZHJvaWQudmVuZGluZy5saWNlbnNpbmcuSUxpY2Vuc2luZ1NlcnZpY2U=");
        JsonUtils.putString(jSONObject3, "psp", "Y29tLmFuZHJvaWQudmVuZGluZw==");
        bundle2.putBundle("settings", JsonUtils.toBundle(jSONObject3));
        m5589a(bundle2, "user_engagement_sdk_init");
        Bundle bundle3 = (Bundle) bundle.clone();
        bundle3.putBundle("settings", JsonUtils.toBundle(JsonUtils.getJSONObject(jSONObject2, "safedk_settings", new JSONObject())));
        C1479t m5542A = this.f5241a.m5542A();
        m5542A.m5116b("CommunicatorService", "Sending \"safedk_init\" message: " + bundle);
        m5589a(bundle3, "safedk_init");
        Bundle bundle4 = (Bundle) bundle.clone();
        bundle4.putBundle("settings", JsonUtils.toBundle(JsonUtils.getJSONObject(jSONObject2, "adjust_settings", new JSONObject())));
        m5589a(bundle4, "adjust_init");
        Bundle bundle5 = (Bundle) bundle.clone();
        bundle5.putBundle("settings", JsonUtils.toBundle(JsonUtils.getJSONObject(jSONObject2, "discovery_settings", new JSONObject())));
        m5589a(bundle5, "discovery_init");
    }

    /* renamed from: a */
    public boolean m5585a(String str) {
        return C1034c.f3736a.contains(str);
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "applovin_sdk";
    }

    /* JADX WARN: Type inference failed for: r0v113, types: [long] */
    /* JADX WARN: Type inference failed for: r0v115, types: [long] */
    /* JADX WARN: Type inference failed for: r0v120, types: [long] */
    /* JADX WARN: Type inference failed for: r0v122, types: [long] */
    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        Map map;
        if (!((Boolean) this.f5241a.m5511a(C1314b.f4947eT)).booleanValue()) {
            return;
        }
        if ("send_http_request".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
            Bundle messageData = appLovinCommunicatorMessage.getMessageData();
            Map<String, String> stringMap = BundleUtils.toStringMap(messageData.getBundle("query_params"));
            Map<String, Object> map2 = BundleUtils.toMap(messageData.getBundle("post_body"));
            Map<String, String> stringMap2 = BundleUtils.toStringMap(messageData.getBundle("headers"));
            String string = messageData.getString(FacebookAdapter.KEY_ID, "");
            if (!map2.containsKey(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY)) {
                map2.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f5241a.m5444z());
            }
            this.f5241a.m5523T().m5257a(new C1464h.C1466a().m5211c(messageData.getString(ImagesContract.URL)).m5207d(messageData.getString("backup_url")).m5218a(stringMap).m5210c(map2).m5214b(stringMap2).m5217a(((Boolean) this.f5241a.m5511a(C1314b.f4963ep)).booleanValue()).m5219a(string).m5221a());
        } else if (!"send_http_request_v2".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
            if ("set_ad_request_query_params".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
                this.f5241a.m5449u().addCustomQueryParams(Utils.stringifyObjectMap(BundleUtils.toMap(appLovinCommunicatorMessage.getMessageData())));
            } else if ("set_ad_request_post_body".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
                this.f5241a.m5449u().setCustomPostBody(BundleUtils.toJSONObject(appLovinCommunicatorMessage.getMessageData()));
            } else if (!"set_mediate_request_post_body_data".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
            } else {
                this.f5241a.m5539D().setCustomPostBodyData(BundleUtils.toJSONObject(appLovinCommunicatorMessage.getMessageData()));
            }
        } else {
            Bundle messageData2 = appLovinCommunicatorMessage.getMessageData();
            String string2 = messageData2.getString("http_method", "POST");
            char millis = messageData2.containsKey("timeout_sec") ? TimeUnit.SECONDS.toMillis(messageData2.getLong("timeout_sec")) : ((Long) this.f5241a.m5511a(C1314b.f4909dh)).longValue();
            int i = messageData2.getInt("retry_count", ((Integer) this.f5241a.m5511a(C1314b.f4910di)).intValue());
            char millis2 = messageData2.containsKey("retry_delay_sec") ? TimeUnit.SECONDS.toMillis(messageData2.getLong("retry_delay_sec")) : ((Long) this.f5241a.m5511a(C1314b.f4911dj)).longValue();
            Map<String, String> stringMap3 = BundleUtils.toStringMap(messageData2.getBundle("query_params"));
            if ("GET".equalsIgnoreCase(string2)) {
                if (messageData2.getBoolean("include_data_collector_info", true)) {
                    stringMap3.putAll(BundleUtils.toStringMap(CollectionUtils.toBundle(this.f5241a.m5522U().m5408a(null, false, false))));
                }
                map = null;
            } else {
                Map<String, Object> map3 = BundleUtils.toMap(messageData2.getBundle("post_body"));
                map = map3;
                if (messageData2.getBoolean("include_data_collector_info", true)) {
                    Map<String, Object> m5395h = this.f5241a.m5522U().m5395h();
                    Map<String, Object> m5400d = this.f5241a.m5522U().m5400d();
                    if (m5400d.containsKey("idfv") && m5400d.containsKey("idfv_scope")) {
                        String str = (String) m5400d.get("idfv");
                        int intValue = ((Integer) m5400d.get("idfv_scope")).intValue();
                        m5400d.remove("idfv");
                        m5400d.remove("idfv_scope");
                        m5395h.put("idfv", str);
                        m5395h.put("idfv_scope", Integer.valueOf(intValue));
                    }
                    m5395h.put("server_installed_at", this.f5241a.m5511a(C1314b.f4750af));
                    m5395h.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f5241a.m5444z());
                    map3.put("app", m5395h);
                    map3.put("device", m5400d);
                    map = map3;
                }
            }
            this.f5241a.m5525R().m5653a(new C1440a(appLovinCommunicatorMessage.getPublisherId(), C1447c.m5327a(this.f5241a).mo5192a(messageData2.getString(ImagesContract.URL)).mo5181c(messageData2.getString("backup_url")).mo5191a(stringMap3).mo5185b(string2).mo5184b(BundleUtils.toStringMap(messageData2.getBundle("headers"))).mo5190a(map != null ? new JSONObject(map) : null).mo5188b(millis).mo5195a(i).mo5182c(millis2).mo5193a((C1447c.C1448a) new JSONObject()).mo5179c(messageData2.getBoolean("is_encoding_enabled", false)).mo5196a(), this.f5241a), C1362o.EnumC1364a.MAIN);
        }
    }
}
