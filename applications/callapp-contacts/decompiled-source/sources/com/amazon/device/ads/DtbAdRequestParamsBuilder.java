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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbAdRequestParamsBuilder.class */
public class DtbAdRequestParamsBuilder {

    /* renamed from: a  reason: collision with root package name */
    private final String f6457a = DtbAdRequestParamsBuilder.class.getSimpleName();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.amazon.device.ads.DtbAdRequestParamsBuilder$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbAdRequestParamsBuilder$1.class */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f6458a;

        static {
            int[] iArr = new int[AdType.values().length];
            f6458a = iArr;
            try {
                iArr[AdType.VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static HashMap<String, Object> a(Context context) {
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("isDTBMobile", "true");
        hashMap.put("appId", AdRegistration.b());
        hashMap.put("adsdk", DtbCommonUtils.b());
        DtbSharedPreferences.c();
        String g = DtbSharedPreferences.g();
        if (!DtbCommonUtils.e(g)) {
            hashMap.put("idfa", g);
        } else {
            hashMap.putAll(DtbDeviceData.a().f6474b);
        }
        Boolean h = DtbSharedPreferences.c().h();
        if (h != null) {
            hashMap.put("oo", Boolean.toString(h.booleanValue()));
        }
        JSONObject b2 = DtbDeviceData.a().b();
        if (b2 != null) {
            hashMap.put("dinfo", b2);
        }
        String str = DtbDeviceData.a().f6473a;
        if (str != null) {
            hashMap.put("ua", str);
        }
        hashMap.put("pkg", DtbPackageNativeData.a(context).f6504a);
        DtbSharedPreferences.c();
        String e = DtbSharedPreferences.e();
        if (e != null) {
            hashMap.put("ad-id", e);
        }
        if (AdRegistration.g()) {
            hashMap.put("isTest", "true");
        }
        if (AdRegistration.i()) {
            new DtbGeoLocation();
            Location a2 = DtbGeoLocation.a();
            String str2 = null;
            if (a2 != null) {
                long currentTimeMillis = (System.currentTimeMillis() - a2.getTime()) / 1000;
                if (currentTimeMillis <= 86400) {
                    str2 = a2.getLatitude() + "," + a2.getLongitude() + "," + a2.getAccuracy() + "," + currentTimeMillis;
                }
            }
            if (str2 != null && !str2.isEmpty()) {
                hashMap.put("geoloc", str2);
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static HashMap<String, Object> a(Map<String, String> map) {
        HashMap<String, Object> hashMap = new HashMap<>();
        if (map != null) {
            for (String str : map.keySet()) {
                hashMap.put(str, map.get(str));
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final HashMap<String, Object> a(List<DTBAdSize> list) {
        HashMap<String, Object> hashMap = new HashMap<>();
        JSONArray jSONArray = new JSONArray();
        try {
            int i = 1;
            for (DTBAdSize dTBAdSize : list) {
                JSONObject jSONObject = new JSONObject();
                if (dTBAdSize.f6412c.equals(AdType.INTERSTITIAL)) {
                    jSONObject.put("sz", AdType.INTERSTITIAL);
                } else {
                    jSONObject.put("sz", dTBAdSize.f6410a + "x" + dTBAdSize.f6411b);
                }
                jSONObject.put("slot", dTBAdSize.f6413d);
                jSONObject.put("slotId", i);
                JSONArray jSONArray2 = new JSONArray();
                if (AnonymousClass1.f6458a[dTBAdSize.f6412c.ordinal()] != 1) {
                    jSONArray2.put(AdType.DISPLAY.toString());
                } else {
                    jSONArray2.put(AdType.VIDEO.toString());
                }
                jSONObject.put("supportedMediaTypes", jSONArray2);
                if (dTBAdSize.e != null) {
                    jSONObject.put("ps", dTBAdSize.e);
                }
                jSONArray.put(jSONObject);
                i++;
            }
            hashMap.put("slots", jSONArray);
        } catch (JSONException e) {
            DtbLog.b(this.f6457a, "Error constructing slot parameters");
        }
        return hashMap;
    }
}
