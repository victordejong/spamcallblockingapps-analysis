package com.amazon.device.ads;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1425c.p1426a.p1427a.C22016a;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22018b;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22019c;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdResponse.class */
public final class DTBAdResponse {
    private static final String AMAZON_AD_INFO = "{bidID:'%s',aaxHost:'%s',type:'%s',width:%d,height:%d}";
    private static final String LOG_TAG = "DTBAdResponse";
    private String bidId;
    private String crid;
    private String hostName;
    private String impressionUrl;
    private boolean isVideo;
    private Map<String, List<String>> kvpDictionary = new HashMap();
    private Map<DTBAdSize, List<DtbPricePoint>> pricepoints = new HashMap();

    /* renamed from: com.amazon.device.ads.DTBAdResponse$1 */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdResponse$1.class */
    public static /* synthetic */ class C04461 {
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
            try {
                int[] iArr2 = $SwitchMap$com$amazon$device$ads$AdType;
                AdType adType2 = AdType.DISPLAY;
                iArr2[0] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                int[] iArr3 = $SwitchMap$com$amazon$device$ads$AdType;
                AdType adType3 = AdType.INTERSTITIAL;
                iArr3[1] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    private String getAmazonInfo() {
        Object obj = "";
        if (getDTBAds().size() == 0) {
            return "";
        }
        DTBAdSize dTBAdSize = getDTBAds().get(0);
        int width = dTBAdSize.getWidth();
        int height = dTBAdSize.getHeight();
        int ordinal = dTBAdSize.getDTBAdType().ordinal();
        if (ordinal == 0) {
            obj = "banner";
        } else if (ordinal == 1) {
            Activity currentActivity = AdRegistration.getCurrentActivity();
            if (currentActivity != null) {
                Display defaultDisplay = ((WindowManager) currentActivity.getSystemService("window")).getDefaultDisplay();
                DisplayMetrics displayMetrics = new DisplayMetrics();
                defaultDisplay.getMetrics(displayMetrics);
                width = DTBAdUtil.pixelsToDeviceIndependenPixels(displayMetrics.widthPixels);
                height = DTBAdUtil.pixelsToDeviceIndependenPixels(displayMetrics.heightPixels);
            }
            obj = "interstitial";
        } else if (ordinal == 2) {
            obj = "video";
        }
        String str = this.hostName;
        if (str == null) {
            str = DtbDebugProperties.getAaxHostName(DtbSharedPreferences.getInstance().getAaxHostname());
        }
        return String.format(AMAZON_AD_INFO, this.bidId, str, obj, Integer.valueOf(width), Integer.valueOf(height));
    }

    private String getBidKey() {
        return !this.isVideo ? DTBAdLoader.A9_BID_ID_KEY : DTBAdLoader.A9_VID_KEY;
    }

    private Map<String, List<String>> getVideoAdsRequestCustomParamsAsList() {
        HashMap hashMap = new HashMap();
        if (this.isVideo) {
            hashMap.put(DTBAdLoader.A9_VID_KEY, Collections.singletonList(this.bidId));
            hashMap.put(DTBAdLoader.A9_HOST_KEY, Collections.singletonList(DtbDebugProperties.getRoute53EnabledCNAME(DtbSharedPreferences.getInstance().getRoute53EnabledCNAME())));
            for (DtbPricePoint dtbPricePoint : this.pricepoints.get(getDTBAds().get(0))) {
                hashMap.put(DTBAdLoader.A9_PRICE_POINTS_KEY, Collections.singletonList(dtbPricePoint.getPricePoint()));
            }
            hashMap.putAll(getKvpDictionary());
        }
        return hashMap;
    }

    public int getAdCount() {
        return this.pricepoints.size();
    }

    public String getBidId() {
        return this.bidId;
    }

    public String getCrid() {
        return this.crid;
    }

    public List<DTBAdSize> getDTBAds() {
        return new ArrayList(this.pricepoints.keySet());
    }

    public Map<String, List<String>> getDefaultDisplayAdsRequestCustomParams() {
        HashMap hashMap = new HashMap();
        try {
            if (!this.isVideo) {
                if (this.pricepoints.size() > 0) {
                    hashMap.put(DTBAdLoader.A9_BID_ID_KEY, Collections.singletonList(this.bidId));
                    hashMap.put(getBidKey(), Collections.singletonList(this.bidId));
                    hashMap.put(DTBAdLoader.A9_HOST_KEY, Collections.singletonList(DtbSharedPreferences.getInstance().getAaxHostname()));
                    for (DtbPricePoint dtbPricePoint : this.pricepoints.get(getDTBAds().get(0))) {
                        hashMap.put(DTBAdLoader.A9_PRICE_POINTS_KEY, Collections.singletonList(dtbPricePoint.getPricePoint()));
                    }
                }
                hashMap.putAll(getKvpDictionary());
            }
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute getDefaultDisplayAdsRequestCustomParams method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute getDefaultDisplayAdsRequestCustomParams method", e);
        }
        return hashMap;
    }

    public String getDefaultPricePoints() {
        try {
            if (getAdCount() != 0) {
                return getPricePoints(getDTBAds().get(0));
            }
            return null;
        } catch (IllegalArgumentException e) {
            DtbLog.debug(LOG_TAG, "Fail to execute getDefaultPricePoints method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute getDefaultPricePoints method", e);
            return null;
        }
    }

    public Map<String, String> getDefaultVideoAdsRequestCustomParams() {
        HashMap hashMap = new HashMap();
        try {
            if (this.isVideo) {
                hashMap.put(DTBAdLoader.A9_VID_KEY, this.bidId);
                hashMap.put(DTBAdLoader.A9_HOST_KEY, DtbDebugProperties.getRoute53EnabledCNAME(DtbSharedPreferences.getInstance().getRoute53EnabledCNAME()));
                for (DtbPricePoint dtbPricePoint : this.pricepoints.get(getDTBAds().get(0))) {
                    hashMap.put(DTBAdLoader.A9_PRICE_POINTS_KEY, dtbPricePoint.getPricePoint());
                }
                for (Map.Entry<String, List<String>> entry : this.kvpDictionary.entrySet()) {
                    hashMap.put(entry.getKey(), TextUtils.join(", ", entry.getValue()));
                }
            }
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute getDefaultVideoAdsRequestCustomParams method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute getDefaultVideoAdsRequestCustomParams method", e);
        }
        return hashMap;
    }

    @Deprecated
    public String getHost() {
        try {
            return DtbSharedPreferences.getInstance().getAaxHostname();
        } catch (IllegalArgumentException e) {
            String str = LOG_TAG;
            StringBuilder m8728C = C22128a.m8728C("Could not get host name ");
            m8728C.append(e.getLocalizedMessage());
            DtbLog.debug(str, m8728C.toString());
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute getPricePoints method", e);
            return null;
        }
    }

    public String getImpressionUrl() {
        return this.impressionUrl;
    }

    public Map<String, List<String>> getKvpDictionary() {
        return this.kvpDictionary;
    }

    public String getMoPubKeywords() {
        try {
            DtbLog.debug(LOG_TAG, "API 'getMoPubKeywords' supports banner & video Ads.");
            StringBuilder sb = new StringBuilder();
            Map<String, List<String>> defaultDisplayAdsRequestCustomParams = !this.isVideo ? getDefaultDisplayAdsRequestCustomParams() : getVideoAdsRequestCustomParamsAsList();
            if (this.pricepoints.size() > 0) {
                boolean z = true;
                for (Map.Entry<String, List<String>> entry : defaultDisplayAdsRequestCustomParams.entrySet()) {
                    Iterator<String> it = entry.getValue().iterator();
                    boolean z2 = z;
                    while (true) {
                        z = z2;
                        if (it.hasNext()) {
                            String next = it.next();
                            if (z2) {
                                z2 = false;
                            } else {
                                sb.append(",");
                            }
                            sb.append(entry.getKey());
                            sb.append(StringConstant.COLON);
                            sb.append(next);
                        }
                    }
                }
            }
            return sb.toString();
        } catch (IllegalArgumentException e) {
            DtbLog.debug(LOG_TAG, "Fail to execute getMoPubKeywords method");
            C22016a.m8829a(EnumC22018b.FATAL, EnumC22019c.EXCEPTION, "Fail to execute getMoPubKeywords method", e);
            return "";
        }
    }

    public String getMoPubServerlessKeywords() {
        try {
            StringBuilder sb = new StringBuilder();
            Map<String, List<String>> defaultDisplayAdsRequestCustomParams = getDefaultDisplayAdsRequestCustomParams();
            if (this.pricepoints.size() > 0 && defaultDisplayAdsRequestCustomParams.containsKey(DTBAdLoader.A9_PRICE_POINTS_KEY)) {
                List<String> list = defaultDisplayAdsRequestCustomParams.get(DTBAdLoader.A9_PRICE_POINTS_KEY);
                if (list.size() > 0) {
                    sb.append(DTBAdLoader.A9_PRICE_POINTS_KEY);
                    sb.append(StringConstant.COLON);
                    sb.append(list.get(0));
                }
            }
            return sb.toString();
        } catch (IllegalArgumentException e) {
            DtbLog.debug(LOG_TAG, "Fail to execute getMoPubServerlessKeywords method");
            C22016a.m8829a(EnumC22018b.FATAL, EnumC22019c.EXCEPTION, "Fail to execute getMoPubServerlessKeywords method", e);
            return "";
        }
    }

    public String getPricePoints(DTBAdSize dTBAdSize) {
        try {
            List<DtbPricePoint> list = this.pricepoints.get(dTBAdSize);
            if (list == null || list.isEmpty()) {
                return null;
            }
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < list.size(); i++) {
                sb.append(list.get(i).getPricePoint());
                if (i != list.size() - 1) {
                    sb.append(",");
                }
            }
            return sb.toString();
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute getPricePoints method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute getPricePoints method", e);
            return null;
        }
    }

    public Bundle getRenderingBundle() {
        return getRenderingBundle(false);
    }

    public Bundle getRenderingBundle(String str) {
        return getRenderingBundle(false, str);
    }

    public Bundle getRenderingBundle(boolean z) {
        return getRenderingBundle(z, null);
    }

    public Bundle getRenderingBundle(boolean z, String str) {
        Bundle initializeEmptyBundle = DtbCommonUtils.initializeEmptyBundle();
        try {
            initializeEmptyBundle.putString(DTBAdView.BID_HTML, SDKUtilities.getBidInfo(this));
            initializeEmptyBundle.putString(DTBAdView.BID_IDENTIFIER, this.bidId);
            initializeEmptyBundle.putString(DTBAdView.HOSTNAME_IDENTIFIER, this.hostName);
            initializeEmptyBundle.putString(DTBAdView.EVENT_SERVER_PARAMETER, SDKUtilities.getPricePoint(this));
            initializeEmptyBundle.putString(DTBAdView.AMAZON_AD_INFO, getAmazonInfo());
            initializeEmptyBundle.putLong(DTBAdView.START_LOAD_TIME, new Date().getTime());
            if (z) {
                initializeEmptyBundle.putInt(DTBAdView.EXPECTED_WIDTH, SDKUtilities.getWidth(this));
                initializeEmptyBundle.putInt(DTBAdView.EXPECTED_HEIGHT, SDKUtilities.getHeight(this));
            }
            if (!DtbCommonUtils.isNullOrEmpty(str)) {
                initializeEmptyBundle.putString(DTBAdView.REQUEST_QUEUE, str);
            }
        } catch (IllegalArgumentException e) {
            DtbLog.debug(LOG_TAG, "Fail to execute getRenderingBundle method");
            C22016a.m8829a(EnumC22018b.FATAL, EnumC22019c.EXCEPTION, "Fail to execute getRenderingBundle method", e);
        }
        return initializeEmptyBundle;
    }

    public HashMap<String, Object> getRenderingMap() {
        HashMap<String, Object> hashMap = new HashMap<>();
        try {
            hashMap.put(DTBAdView.BID_HTML, SDKUtilities.getBidInfo(this));
            hashMap.put(DTBAdView.EVENT_SERVER_PARAMETER, SDKUtilities.getPricePoint(this));
            hashMap.put(DTBAdView.AMAZON_AD_INFO, getAmazonInfo());
            hashMap.put(DTBAdView.BID_IDENTIFIER, this.bidId);
            hashMap.put(DTBAdView.HOSTNAME_IDENTIFIER, this.hostName);
            hashMap.put(DTBAdView.START_LOAD_TIME, Long.valueOf(new Date().getTime()));
        } catch (IllegalArgumentException e) {
            DtbLog.debug(LOG_TAG, "Fail to execute getRenderingMap method");
            C22016a.m8829a(EnumC22018b.FATAL, EnumC22019c.EXCEPTION, "Fail to execute getRenderingMap method", e);
        }
        return hashMap;
    }

    public boolean isVideo() {
        return this.isVideo;
    }

    public void putPricePoint(DtbPricePoint dtbPricePoint) {
        if (this.pricepoints.get(dtbPricePoint.getAdSize()) == null) {
            this.pricepoints.put(dtbPricePoint.getAdSize(), new ArrayList());
        }
        this.pricepoints.get(dtbPricePoint.getAdSize()).add(dtbPricePoint);
    }

    public void setBidId(String str) {
        this.bidId = str;
    }

    public void setCrid(String str) {
        this.crid = str;
    }

    public void setHostName(String str) {
        this.hostName = str;
    }

    public void setImpressionUrl(String str) {
        this.impressionUrl = str;
    }

    public void setKvpDictionary(JSONObject jSONObject) throws JSONException {
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            JSONArray jSONArray = jSONObject.getJSONArray(next);
            if (jSONArray != null) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    if (this.kvpDictionary.get(next) == null) {
                        this.kvpDictionary.put(next, new ArrayList());
                    }
                    this.kvpDictionary.get(next).add(jSONArray.getString(i));
                }
            }
        }
    }

    public void setVideo(boolean z) {
        this.isVideo = z;
    }
}
