package com.amazon.device.ads;

import android.content.Context;
import android.location.Location;
import com.mopub.common.AdType;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbAdRequestParamsBuilder.class */
public class DtbAdRequestParamsBuilder {

    /* renamed from: a */
    private final String f11842a = DtbAdRequestParamsBuilder.class.getSimpleName();

    /* renamed from: com.amazon.device.ads.DtbAdRequestParamsBuilder$1 */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbAdRequestParamsBuilder$1.class */
    public static /* synthetic */ class C32661 {

        /* renamed from: a */
        static final /* synthetic */ int[] f11843a;

        static {
            int[] iArr = new int[AdType.values().length];
            f11843a = iArr;
            try {
                iArr[AdType.VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* renamed from: a */
    public static HashMap<String, Object> m38901a(Context context) {
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("isDTBMobile", "true");
        hashMap.put("appId", AdRegistration.m39073b());
        hashMap.put("adsdk", DtbCommonUtils.m38890b());
        DtbSharedPreferences.m38797c();
        String m38783g = DtbSharedPreferences.m38783g();
        if (!DtbCommonUtils.m38882e(m38783g)) {
            hashMap.put("idfa", m38783g);
        } else {
            hashMap.putAll(DtbDeviceData.m38867a().f11860b);
        }
        Boolean m38781h = DtbSharedPreferences.m38797c().m38781h();
        if (m38781h != null) {
            hashMap.put("oo", Boolean.toString(m38781h.booleanValue()));
        }
        JSONObject m38864b = DtbDeviceData.m38867a().m38864b();
        if (m38864b != null) {
            hashMap.put("dinfo", m38864b);
        }
        String str = DtbDeviceData.m38867a().f11859a;
        if (str != null) {
            hashMap.put("ua", str);
        }
        hashMap.put("pkg", DtbPackageNativeData.m38809a(context).f11905a);
        DtbSharedPreferences.m38797c();
        String m38789e = DtbSharedPreferences.m38789e();
        if (m38789e != null) {
            hashMap.put("ad-id", m38789e);
        }
        if (AdRegistration.m39068g()) {
            hashMap.put("isTest", "true");
        }
        if (AdRegistration.m39066i()) {
            new DtbGeoLocation();
            Location m38846a = DtbGeoLocation.m38846a();
            String str2 = null;
            if (m38846a != null) {
                long currentTimeMillis = (System.currentTimeMillis() - m38846a.getTime()) / 1000;
                if (currentTimeMillis <= 86400) {
                    str2 = m38846a.getLatitude() + "," + m38846a.getLongitude() + "," + m38846a.getAccuracy() + "," + currentTimeMillis;
                }
            }
            if (str2 != null && !str2.isEmpty()) {
                hashMap.put("geoloc", str2);
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public static HashMap<String, Object> m38899a(Map<String, String> map) {
        HashMap<String, Object> hashMap = new HashMap<>();
        if (map != null) {
            for (String str : map.keySet()) {
                hashMap.put(str, map.get(str));
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public final HashMap<String, Object> m38900a(List<DTBAdSize> list) {
        HashMap<String, Object> hashMap = new HashMap<>();
        JSONArray jSONArray = new JSONArray();
        try {
            int i = 1;
            for (DTBAdSize dTBAdSize : list) {
                JSONObject jSONObject = new JSONObject();
                if (dTBAdSize.f11774c.equals(AdType.INTERSTITIAL)) {
                    jSONObject.put("sz", AdType.INTERSTITIAL);
                } else {
                    jSONObject.put("sz", dTBAdSize.f11772a + "x" + dTBAdSize.f11773b);
                }
                jSONObject.put("slot", dTBAdSize.f11775d);
                jSONObject.put("slotId", i);
                JSONArray jSONArray2 = new JSONArray();
                if (C32661.f11843a[dTBAdSize.f11774c.ordinal()] != 1) {
                    jSONArray2.put(AdType.DISPLAY.toString());
                } else {
                    jSONArray2.put(AdType.VIDEO.toString());
                }
                jSONObject.put("supportedMediaTypes", jSONArray2);
                if (dTBAdSize.f11776e != null) {
                    jSONObject.put("ps", dTBAdSize.f11776e);
                }
                jSONArray.put(jSONObject);
                i++;
            }
            hashMap.put("slots", jSONArray);
        } catch (JSONException e) {
            DtbLog.m38823b(this.f11842a, "Error constructing slot parameters");
        }
        return hashMap;
    }
}
