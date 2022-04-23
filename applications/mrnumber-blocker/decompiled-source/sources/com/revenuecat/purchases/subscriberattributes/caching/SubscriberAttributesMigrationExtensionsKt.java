package com.revenuecat.purchases.subscriberattributes.caching;

import com.revenuecat.purchases.subscriberattributes.SubscriberAttribute;
import com.revenuecat.purchases.subscriberattributes.SubscriberAttributesFactoriesKt;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;
import kotlin.c0.m;
import kotlin.p;
import kotlin.s.b0;
import kotlin.w.c.k;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/subscriberattributes/caching/SubscriberAttributesMigrationExtensionsKt.class */
public final class SubscriberAttributesMigrationExtensionsKt {
    public static final Map<String, Map<String, SubscriberAttribute>> getAllLegacyStoredSubscriberAttributes(SubscriberAttributesCache subscriberAttributesCache) {
        Map<String, Map<String, SubscriberAttribute>> p;
        Map<String, SubscriberAttribute> map;
        synchronized (SubscriberAttributesMigrationExtensionsKt.class) {
            k.f(subscriberAttributesCache, "$this$getAllLegacyStoredSubscriberAttributes");
            String legacySubscriberAttributesCacheKey = legacySubscriberAttributesCacheKey(subscriberAttributesCache, "");
            Set<String> findKeysThatStartWith = subscriberAttributesCache.getDeviceCache$subscriber_attributes_release().findKeysThatStartWith(legacySubscriberAttributesCacheKey);
            ArrayList arrayList = new ArrayList(kotlin.s.k.q(findKeysThatStartWith, 10));
            for (String str : findKeysThatStartWith) {
                String str2 = (String) m.p0(str, new String[]{legacySubscriberAttributesCacheKey}, false, 0, 6, (Object) null).get(1);
                JSONObject jSONObjectOrNull = subscriberAttributesCache.getDeviceCache$subscriber_attributes_release().getJSONObjectOrNull(str);
                if (jSONObjectOrNull != null) {
                    map = SubscriberAttributesFactoriesKt.buildLegacySubscriberAttributes(jSONObjectOrNull);
                    if (map != null) {
                        arrayList.add(p.a(str2, map));
                    }
                }
                map = b0.e();
                arrayList.add(p.a(str2, map));
            }
            p = b0.p(arrayList);
        }
        return p;
    }

    public static final String legacySubscriberAttributesCacheKey(SubscriberAttributesCache subscriberAttributesCache, String str) {
        k.f(subscriberAttributesCache, "$this$legacySubscriberAttributesCacheKey");
        k.f(str, "appUserID");
        return subscriberAttributesCache.getSubscriberAttributesCacheKey$subscriber_attributes_release() + '.' + str;
    }

    public static final void migrateSubscriberAttributes(SubscriberAttributesCache subscriberAttributesCache, Map<String, ? extends Map<String, SubscriberAttribute>> map) {
        synchronized (SubscriberAttributesMigrationExtensionsKt.class) {
            k.f(subscriberAttributesCache, "$this$migrateSubscriberAttributes");
            k.f(map, "legacySubscriberAttributesForAppUserID");
            Map<String, Map<String, SubscriberAttribute>> allStoredSubscriberAttributes = subscriberAttributesCache.getAllStoredSubscriberAttributes();
            Map<String, ? extends Map<String, SubscriberAttribute>> v = b0.v(allStoredSubscriberAttributes);
            for (Map.Entry<String, ? extends Map<String, SubscriberAttribute>> entry : map.entrySet()) {
                String key = entry.getKey();
                Map map2 = (Map) entry.getValue();
                Map<String, SubscriberAttribute> map3 = allStoredSubscriberAttributes.get(key);
                if (map3 == null) {
                    map3 = b0.e();
                }
                v.put(key, b0.l(map2, map3));
                subscriberAttributesCache.getDeviceCache$subscriber_attributes_release().remove(legacySubscriberAttributesCacheKey(subscriberAttributesCache, key));
            }
            subscriberAttributesCache.putAttributes$subscriber_attributes_release(subscriberAttributesCache.getDeviceCache$subscriber_attributes_release(), v);
        }
    }

    public static final void migrateSubscriberAttributesIfNeeded(SubscriberAttributesCache subscriberAttributesCache) {
        synchronized (SubscriberAttributesMigrationExtensionsKt.class) {
            k.f(subscriberAttributesCache, "$this$migrateSubscriberAttributesIfNeeded");
            Map<String, Map<String, SubscriberAttribute>> allLegacyStoredSubscriberAttributes = getAllLegacyStoredSubscriberAttributes(subscriberAttributesCache);
            if (!(!allLegacyStoredSubscriberAttributes.isEmpty())) {
                allLegacyStoredSubscriberAttributes = null;
            }
            if (allLegacyStoredSubscriberAttributes != null) {
                migrateSubscriberAttributes(subscriberAttributesCache, allLegacyStoredSubscriberAttributes);
            }
        }
    }
}
