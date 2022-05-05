package com.revenuecat.purchases.subscriberattributes;

import java.util.Iterator;
import java.util.Map;
import kotlin.b0.e;
import kotlin.s.b0;
import kotlin.w.c.k;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/subscriberattributes/SubscriberAttributesFactoriesKt.class */
public final class SubscriberAttributesFactoriesKt {
    public static final Map<String, SubscriberAttribute> buildLegacySubscriberAttributes(JSONObject jSONObject) {
        k.f(jSONObject, "$this$buildLegacySubscriberAttributes");
        JSONObject jSONObject2 = jSONObject.getJSONObject("attributes");
        k.e(jSONObject2, "attributesJSONObject");
        return buildSubscriberAttributesMap(jSONObject2);
    }

    public static final Map<String, SubscriberAttribute> buildSubscriberAttributesMap(JSONObject jSONObject) {
        k.f(jSONObject, "$this$buildSubscriberAttributesMap");
        Iterator<String> keys = jSONObject.keys();
        k.e(keys, "this.keys()");
        return b0.s(e.h(e.a(keys), new buildSubscriberAttributesMap.1(jSONObject)));
    }

    public static final Map<String, Map<String, SubscriberAttribute>> buildSubscriberAttributesMapPerUser(JSONObject jSONObject) {
        k.f(jSONObject, "$this$buildSubscriberAttributesMapPerUser");
        JSONObject jSONObject2 = jSONObject.getJSONObject("attributes");
        Iterator<String> keys = jSONObject2.keys();
        k.e(keys, "attributesJSONObject.keys()");
        return b0.s(e.h(e.a(keys), new buildSubscriberAttributesMapPerUser.1(jSONObject2)));
    }
}
