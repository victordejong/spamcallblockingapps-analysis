package com.amazon.device.ads;

import android.content.Context;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbAdRequestParamsBuilder.class */
public class DtbAdRequestParamsBuilder {
    private final String LOG_TAG = DtbAdRequestParamsBuilder.class.getSimpleName();

    /* renamed from: com.amazon.device.ads.DtbAdRequestParamsBuilder$1 */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbAdRequestParamsBuilder$1.class */
    public static /* synthetic */ class C04531 {
        public static final /* synthetic */ int[] $SwitchMap$com$amazon$device$ads$AdType;

        static {
            AdType.values();
            int[] iArr = new int[3];
            $SwitchMap$com$amazon$device$ads$AdType = iArr;
            try {
                AdType adType = AdType.VIDEO;
                iArr[2] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    private HashMap<String, Object> getCustomParams(Map<String, String> map) {
        HashMap<String, Object> hashMap = new HashMap<>();
        if (map != null) {
            for (String str : map.keySet()) {
                hashMap.put(str, map.get(str));
            }
        }
        return hashMap;
    }

    private HashMap<String, Object> getSlotParams(List<DTBAdSize> list) {
        HashMap<String, Object> hashMap = new HashMap<>();
        JSONArray jSONArray = new JSONArray();
        try {
            int i = 1;
            for (DTBAdSize dTBAdSize : list) {
                JSONObject jSONObject = new JSONObject();
                if (dTBAdSize.isInterstitialAd()) {
                    jSONObject.put("sz", "interstitial");
                } else {
                    jSONObject.put("sz", dTBAdSize.getWidth() + "x" + dTBAdSize.getHeight());
                }
                jSONObject.put("slot", dTBAdSize.getSlotUUID());
                jSONObject.put("slotId", i);
                JSONArray jSONArray2 = new JSONArray();
                if (dTBAdSize.getDTBAdType().ordinal() != 2) {
                    jSONArray2.put(AdType.DISPLAY.toString());
                } else {
                    jSONArray2.put(AdType.VIDEO.toString());
                }
                jSONObject.put("supportedMediaTypes", jSONArray2);
                if (dTBAdSize.getPubSettings() != null) {
                    jSONObject.put("ps", dTBAdSize.getPubSettings());
                }
                jSONArray.put(jSONObject);
                i++;
            }
            hashMap.put("slots", jSONArray);
        } catch (JSONException e) {
            DtbLog.warn(this.LOG_TAG, "Error constructing slot parameters");
        }
        return hashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addCurrentEnvironmentToCustomAtt() {
        String str;
        Map hashMap = new HashMap();
        if (AdRegistration.getCustomDictionary() != null) {
            hashMap = AdRegistration.getCustomDictionary();
        }
        if (!hashMap.containsKey("framework")) {
            try {
                Class.forName("com.unity3d.player.UnityPlayerActivity");
                DtbLog.debug(this.LOG_TAG, "SDK used in Unity environment");
                str = "unity";
            } catch (ClassNotFoundException e) {
                DtbLog.debug(this.LOG_TAG, "SDK used in native Android environment");
                str = "native";
            }
            AdRegistration.addCustomAttribute("framework", str);
        }
    }

    public HashMap<String, Object> getCommonParams(Context context) {
        String locationParam;
        HashMap<String, Object> m8667T = C22128a.m8667T("isDTBMobile", "true");
        m8667T.put("appId", AdRegistration.getAppKey());
        m8667T.put("adsdk", DtbCommonUtils.getSDKVersion());
        String idfa = DtbSharedPreferences.getInstance().getIdfa();
        if (!DtbCommonUtils.isNullOrEmpty(idfa)) {
            m8667T.put("idfa", idfa);
        } else {
            m8667T.putAll(DtbDeviceData.getDeviceDataInstance().getOptionalParams());
        }
        Boolean optOut = DtbSharedPreferences.getInstance().getOptOut();
        if (optOut != null) {
            m8667T.put("oo", Boolean.toString(optOut.booleanValue()));
        }
        JSONObject paramsJson = DtbDeviceData.getDeviceDataInstance().getParamsJson();
        if (paramsJson != null) {
            m8667T.put("dinfo", paramsJson);
        }
        String userAgentString = DtbDeviceData.getDeviceDataInstance().getUserAgentString();
        if (userAgentString != null) {
            m8667T.put("ua", userAgentString);
        }
        m8667T.put("pkg", DtbPackageNativeData.getPackageNativeDataInstance(context).getParamsJson());
        String adId = DtbSharedPreferences.getInstance().getAdId();
        if (adId != null) {
            m8667T.put("ad-id", adId);
        }
        if (AdRegistration.isTestMode()) {
            m8667T.put("isTest", "true");
        }
        if (AdRegistration.isLocationEnabled() && (locationParam = new DtbGeoLocation().getLocationParam()) != null && !locationParam.isEmpty()) {
            m8667T.put("geoloc", locationParam);
        }
        return m8667T;
    }

    public HashMap<String, Object> getCustomAttributeParams() {
        HashMap<String, Object> hashMap = new HashMap<>();
        JSONObject pJTemplate = DtbSharedPreferences.getInstance().getPJTemplate();
        JSONObject jSONObject = new JSONObject();
        addCurrentEnvironmentToCustomAtt();
        Iterator<String> keys = pJTemplate.keys();
        while (keys.hasNext()) {
            try {
                String next = keys.next();
                if (pJTemplate.get(next) instanceof String) {
                    String str = AdRegistration.getCustomDictionary().get(pJTemplate.getString(next));
                    if (!DtbCommonUtils.isNullOrEmpty(str)) {
                        jSONObject.put(next, str);
                    }
                } else if (pJTemplate.get(next) instanceof JSONObject) {
                    JSONObject jSONObject2 = pJTemplate.getJSONObject(next);
                    JSONObject jSONObject3 = new JSONObject();
                    Iterator<String> keys2 = jSONObject2.keys();
                    while (keys2.hasNext()) {
                        String next2 = keys2.next();
                        if (jSONObject2.get(next2) instanceof String) {
                            String str2 = AdRegistration.getCustomDictionary().get(jSONObject2.getString(next2));
                            if (!DtbCommonUtils.isNullOrEmpty(str2)) {
                                jSONObject3.put(next2, str2);
                            }
                        }
                    }
                    if (jSONObject3.length() > 0) {
                        jSONObject.put(next, jSONObject3);
                    }
                }
            } catch (Exception e) {
                DtbLog.warn(this.LOG_TAG, "Error when constructing custom attribute parameters");
            }
        }
        if (jSONObject.length() > 0) {
            hashMap.put("pj", jSONObject);
        }
        return hashMap;
    }

    public HashMap<String, Object> getParams(Context context, List<DTBAdSize> list, Map<String, String> map) {
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.putAll(getCommonParams(context));
        hashMap.putAll(getSlotParams(list));
        hashMap.putAll(getCustomParams(map));
        hashMap.putAll(getCustomAttributeParams());
        return hashMap;
    }
}
