package com.verizon.ads;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/PrivacyDataHelper.class */
public class PrivacyDataHelper {

    /* renamed from: a */
    private Map<String, Object> f61218a;

    public PrivacyDataHelper(Map<String, Object> map) {
        this.f61218a = map;
    }

    public String getCollectionMode() {
        Map<String, Object> map = this.f61218a;
        String str = map != null ? map.get(VASAds.COLLECTION_MODE) : null;
        if (str instanceof String) {
            return str;
        }
        return null;
    }

    public Map<?, ?> getConsentStringsMap() {
        HashMap hashMap = new HashMap();
        Map<?, ?> gDPRConsentMap = getGDPRConsentMap();
        if (gDPRConsentMap != null) {
            hashMap.putAll(gDPRConsentMap);
        }
        Map<String, Object> map = this.f61218a;
        Map map2 = map != null ? map.get("ccpa") : null;
        if (map2 instanceof Map) {
            hashMap.putAll(map2);
        }
        if (!hashMap.isEmpty()) {
            return hashMap;
        }
        return null;
    }

    public Map<?, ?> getGDPRConsentMap() {
        Map<String, Object> map = this.f61218a;
        Map map2 = map != null ? map.get("gdpr") : null;
        if (map2 instanceof Map) {
            Object obj = map2.get("consentMap");
            if (!(obj instanceof Map)) {
                return null;
            }
            return (Map) obj;
        }
        return null;
    }
}
