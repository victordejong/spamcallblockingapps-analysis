package com.verizon.ads;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/PrivacyDataHelper.class */
public class PrivacyDataHelper {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, Object> f35319a;

    public PrivacyDataHelper(Map<String, Object> map) {
        this.f35319a = map;
    }

    public String getCollectionMode() {
        Map<String, Object> map = this.f35319a;
        Object obj = map != null ? map.get(VASAds.COLLECTION_MODE) : null;
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public Map<?, ?> getConsentStringsMap() {
        HashMap hashMap = new HashMap();
        Map<?, ?> gDPRConsentMap = getGDPRConsentMap();
        if (gDPRConsentMap != null) {
            hashMap.putAll(gDPRConsentMap);
        }
        Map<String, Object> map = this.f35319a;
        Object obj = map != null ? map.get("ccpa") : null;
        if (obj instanceof Map) {
            hashMap.putAll((Map) obj);
        }
        if (!hashMap.isEmpty()) {
            return hashMap;
        }
        return null;
    }

    public Map<?, ?> getGDPRConsentMap() {
        Map<String, Object> map = this.f35319a;
        Object obj = map != null ? map.get("gdpr") : null;
        if (!(obj instanceof Map)) {
            return null;
        }
        Object obj2 = ((Map) obj).get("consentMap");
        if (obj2 instanceof Map) {
            return (Map) obj2;
        }
        return null;
    }
}
