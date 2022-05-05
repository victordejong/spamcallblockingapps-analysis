package com.criteo.controller;

import android.content.Context;
import android.os.Build;
import com.criteo.BuildConfig;
import com.criteo.Criteo;
import com.criteo.Gdpr;
import com.criteo.controller.FindDeviceGAID;
import com.criteo.info.AppConfigInfo;
import com.criteo.info.HtmlAdInfo;
import com.criteo.network.ConnectivityInfoUtils;
import com.criteo.network.NetworkRequest;
import com.criteo.parser.JsonParser;
import com.criteo.utils.CriteoCacheHelper;
import com.criteo.utils.PreferenceDataUtils;
import com.criteo.utils.Tracer;
import com.criteo.utils.Utils;
import java.sql.Timestamp;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/criteo/controller/FetchHtmlAdController.class */
public class FetchHtmlAdController implements FindDeviceGAID.OnFindDeviceGAIDListener, ConnectivityInfoUtils.OnConnectivityInfoUtilsListener, NetworkRequest.OnNetworkRequestListener, NetworkRequest.onBlockZoneIdListener, NetworkRequest.onDisplayJavascriptListnerBanner {
    public static final String TAG = "criteo.Stories.FetchBannerAdController";
    public Timestamp blockTimeStamp;
    public Timestamp currenttimeStamp;
    public boolean filter_enabled;
    public String mBlockGaid;
    public String mBlockTimeStamp;
    public Context mContext;
    public String mGaid;
    public Criteo.OnCriteoAdListener mOnCriteoAdListener;
    public OnFetchHtmlAdController mOnFetchHtmlAdController;
    public String mZoneid;

    /* loaded from: classes-dex2jar.jar:com/criteo/controller/FetchHtmlAdController$OnFetchHtmlAdController.class */
    public interface OnFetchHtmlAdController {
        void onFetchHtmlAdFailed(int i, String str, String str2);

        void onFetchHtmlAdSuccess();
    }

    public FetchHtmlAdController(Context context, OnFetchHtmlAdController onFetchHtmlAdController, String str, Criteo.OnCriteoAdListener onCriteoAdListener) {
        Tracer.debug("criteo.Stories.FetchBannerAdController", "FetchBannerAdController: ");
        this.mContext = context;
        this.mOnFetchHtmlAdController = onFetchHtmlAdController;
        this.mZoneid = str;
        this.mOnCriteoAdListener = onCriteoAdListener;
        AppConfigInfo appConfigInfo = JsonParser.appConfigInfo;
        if (appConfigInfo != null) {
            this.filter_enabled = appConfigInfo.isEnabled();
        }
    }

    private JSONObject getRequestParam() {
        Tracer.debug("criteo.Stories.FetchBannerAdController", "getRequestParam: ");
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("bundleid", this.mContext.getPackageName());
            jSONObject2.put("appname", Utils.getAppName(this.mContext));
            jSONObject2.put("url", Utils.URL + this.mContext.getPackageName());
            jSONObject.put("publisher", jSONObject2);
        } catch (Exception e) {
            Tracer.error("criteo.Stories.FetchBannerAdController", "getRequestParam: 1: " + e.getMessage());
        }
        try {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("deviceid", PreferenceDataUtils.getGAID(this.mContext));
            jSONObject3.put("deviceidtype", "GAID");
            jSONObject3.put("lmt", PreferenceDataUtils.getLMT(this.mContext));
            jSONObject3.put("deviceos", "Android");
            jSONObject3.put("sdkver", BuildConfig.VERSION_NAME);
            jSONObject3.put("devicemodel", Build.MODEL);
            jSONObject3.put("connection", Utils.getNetworkClass(this.mContext));
            jSONObject.put("user", jSONObject3);
        } catch (Exception e2) {
            Tracer.error("criteo.Stories.FetchBannerAdController", "getRequestParam: 2: " + e2.getMessage());
        }
        try {
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("impid", this.mZoneid);
            jSONObject4.put("zoneid", this.mZoneid);
            jSONObject4.put("native", false);
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject4);
            jSONObject.put("slots", jSONArray);
        } catch (Exception e3) {
            Tracer.error("criteo.Stories.FetchBannerAdController", "getRequestParam: 3: " + e3.getMessage());
        }
        try {
            JSONObject jSONObject5 = new JSONObject();
            if (Gdpr.consentString != null && !Gdpr.consentString.isEmpty()) {
                jSONObject5.put("consentData", Gdpr.consentString);
                jSONObject.put("gdprConsent", jSONObject5);
            }
            if (Gdpr.subject_to_gdpr != null && !Gdpr.subject_to_gdpr.isEmpty()) {
                if (Integer.parseInt(Gdpr.subject_to_gdpr) == 1) {
                    jSONObject5.put("gdprApplies", true);
                } else {
                    jSONObject5.put("gdprApplies", false);
                }
                jSONObject.put("gdprConsent", jSONObject5);
            }
            if (Gdpr.vendors != null && !Gdpr.vendors.isEmpty()) {
                if (Integer.parseInt(Character.toString(Gdpr.vendors.charAt(90))) == 1) {
                    jSONObject5.put("consentGiven", true);
                } else {
                    jSONObject5.put("consentGiven", false);
                }
                jSONObject.put("gdprConsent", jSONObject5);
            }
        } catch (Exception e4) {
            Tracer.error("criteo.Stories.FetchBannerAdController", "getRequestParam: 4: " + e4.getMessage());
        }
        Tracer.debug("criteo.Stories.FetchBannerAdController", String.valueOf(jSONObject));
        return jSONObject;
    }

    private void onRequestMethod() {
        String str = this.mGaid;
        if (str == null || str.trim().isEmpty()) {
            Tracer.debug("criteo.Stories.FetchBannerAdController", "onRequestMethod: without Gaid");
            return;
        }
        Tracer.debug("criteo.Stories.FetchBannerAdController", "onRequestMethod: with Gaid");
        AppConfigInfo appConfigInfo = JsonParser.appConfigInfo;
        if (appConfigInfo == null) {
            NetworkRequest.sendPostRequestNative(this.mContext, BuildConfig.AD_URL, getRequestParam(), this, this, "", this.mGaid, Criteo.ADType.BANNER);
        } else if (appConfigInfo.getEndpoint() != null) {
            NetworkRequest.sendPostRequestNative(this.mContext, JsonParser.appConfigInfo.getEndpoint(), getRequestParam(), this, this, "", this.mGaid, Criteo.ADType.BANNER);
        } else {
            NetworkRequest.sendPostRequestNative(this.mContext, BuildConfig.AD_URL, getRequestParam(), this, this, "", this.mGaid, Criteo.ADType.BANNER);
        }
    }

    public void fetchBannerAd() {
        Tracer.debug("criteo.Stories.FetchBannerAdController", "fetchBannerAd: ");
        new FindDeviceGAID(this.mContext, this).fetchGAID();
    }

    @Override // com.criteo.network.NetworkRequest.onBlockZoneIdListener
    public void onBlockZoneID(String str) {
        Tracer.debug("criteo.Stories.FetchBannerAdController", "onBlockZoneID: " + str);
        AppConfigInfo appConfigInfo = JsonParser.appConfigInfo;
        if (appConfigInfo == null) {
            PreferenceDataUtils.setTimestampNative(this.mContext, String.valueOf(Utils.getBlockTimeStamp()));
            PreferenceDataUtils.setGaidNative(this.mContext, str);
        } else if (appConfigInfo.getUnknown_pause_period() != null) {
            try {
                PreferenceDataUtils.setTimestampNative(this.mContext, String.valueOf(Utils.getBlockTimeStamp(System.currentTimeMillis() + (Long.parseLong(JsonParser.appConfigInfo.getUnknown_pause_period()) * 1000))));
                PreferenceDataUtils.setGaidNative(this.mContext, str);
            } catch (NumberFormatException e) {
                e.printStackTrace();
                PreferenceDataUtils.setTimestampNative(this.mContext, String.valueOf(Utils.getBlockTimeStamp()));
                PreferenceDataUtils.setGaidNative(this.mContext, str);
            }
        } else {
            PreferenceDataUtils.setTimestampNative(this.mContext, String.valueOf(Utils.getBlockTimeStamp()));
            PreferenceDataUtils.setGaidNative(this.mContext, str);
        }
    }

    @Override // com.criteo.network.ConnectivityInfoUtils.OnConnectivityInfoUtilsListener
    public void onConnectivityInfoUtilsNetworkConnected() {
        Tracer.debug("criteo.Stories.FetchBannerAdController", "onConnectivityInfoUtilsNetworkConnected: ");
        this.mGaid = PreferenceDataUtils.getGAID(this.mContext);
        this.mBlockGaid = PreferenceDataUtils.getGaidNative(this.mContext);
        this.mBlockTimeStamp = PreferenceDataUtils.getTimestampNative(this.mContext);
        try {
            this.blockTimeStamp = Timestamp.valueOf(this.mBlockTimeStamp);
            this.currenttimeStamp = Utils.getCurrentTimeStamp();
        } catch (Exception e) {
            Tracer.error("criteo.Stories.FetchBannerAdController", "onConnectivityInfoUtilsNetworkConnected" + e.getMessage());
        }
        try {
            if (!this.mBlockGaid.equals("") && !this.mBlockTimeStamp.equals("")) {
                if (!this.currenttimeStamp.before(this.blockTimeStamp) || this.mBlockGaid.equals("") || this.mBlockTimeStamp.equals("")) {
                    if (this.currenttimeStamp.after(this.blockTimeStamp) && !this.mBlockGaid.equals("") && !this.mBlockTimeStamp.equals("")) {
                        PreferenceDataUtils.clearStoreByKey(this.mContext, PreferenceDataUtils.GAID_NATIVE);
                        PreferenceDataUtils.clearStoreByKey(this.mContext, PreferenceDataUtils.TIMESTAMP_NATIVE);
                        onRequestMethod();
                        return;
                    }
                    return;
                } else if (this.mBlockGaid.equals(this.mGaid)) {
                    if (this.filter_enabled) {
                        Tracer.debug("criteo.Stories.FetchBannerAdController", "mBlockGaid GAID blocked  currenttimeStamp ");
                        if (this.mOnCriteoAdListener != null) {
                            this.mOnCriteoAdListener.onAdRequestFiltered(Criteo.ADType.BANNER);
                            return;
                        }
                        return;
                    }
                    onRequestMethod();
                    return;
                } else if (!this.mBlockGaid.equals(this.mGaid)) {
                    onRequestMethod();
                    return;
                } else {
                    return;
                }
            }
            onRequestMethod();
        } catch (Exception e2) {
            onRequestMethod();
        }
    }

    @Override // com.criteo.network.ConnectivityInfoUtils.OnConnectivityInfoUtilsListener
    public void onConnectivityInfoUtilsNetworkDisconnected(int i, String str) {
        Tracer.debug("criteo.Stories.FetchBannerAdController", "onConnectivityInfoUtilsNetworkDisconnected: ");
        OnFetchHtmlAdController onFetchHtmlAdController = this.mOnFetchHtmlAdController;
        if (onFetchHtmlAdController != null) {
            onFetchHtmlAdController.onFetchHtmlAdFailed(i, str, "");
        }
    }

    @Override // com.criteo.network.NetworkRequest.onDisplayJavascriptListnerBanner
    public void onDisplayJsFailed() {
        Tracer.error("criteo.Stories.FetchBannerAdController", "onDisplayJsFailed: ");
    }

    @Override // com.criteo.network.NetworkRequest.onDisplayJavascriptListnerBanner
    public void onDisplayJsSuccess(Object obj) {
        Tracer.debug("criteo.Stories.FetchBannerAdController", "onDisplayJsSuccess: " + obj);
        CriteoCacheHelper.saveBanner(this.mContext, Utils.CACHE_KEY_BANNER, (String) obj, Criteo.ADType.BANNER, this.mZoneid);
        OnFetchHtmlAdController onFetchHtmlAdController = this.mOnFetchHtmlAdController;
        if (onFetchHtmlAdController != null) {
            onFetchHtmlAdController.onFetchHtmlAdSuccess();
        }
    }

    @Override // com.criteo.controller.FindDeviceGAID.OnFindDeviceGAIDListener
    public void onFindDeviceGAIDFailed() {
        Tracer.debug("criteo.Stories.FetchBannerAdController", "onFindDeviceGAIDFailed: ");
    }

    @Override // com.criteo.controller.FindDeviceGAID.OnFindDeviceGAIDListener
    public void onFindDeviceGAIDSuccess(String str) {
        Tracer.debug("criteo.Stories.FetchBannerAdController", "onFindDeviceGAIDSuccess: ");
        ConnectivityInfoUtils.isConnected(this.mContext, this);
    }

    @Override // com.criteo.network.NetworkRequest.OnNetworkRequestListener
    public void onNetworkRequestCompleted(JSONObject jSONObject, String str) {
        Tracer.debug("criteo.Stories.FetchBannerAdController", "onNetworkRequestCompleted: " + jSONObject);
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("slots");
            HtmlAdInfo htmlAdInfo = new HtmlAdInfo(jSONArray.getJSONObject(0).getString("impid"), "", jSONArray.getJSONObject(0).getString("displayurl"), jSONArray.getJSONObject(0).getString("width"), jSONArray.getJSONObject(0).getString("height"));
            String htmlUrl = htmlAdInfo.getHtmlUrl();
            PreferenceDataUtils.setDisplayAdHeight(this.mContext, htmlAdInfo.getmHeight());
            PreferenceDataUtils.setDisplayAdCreative(this.mContext, htmlAdInfo.getHtmlUrl());
            NetworkRequest.sendGetRequestForDisplayBanner(htmlUrl, this);
        } catch (Exception e) {
            Tracer.error("criteo.Stories.FetchBannerAdController", "onNetworkRequestCompleted error reaponse blank");
        }
    }

    @Override // com.criteo.network.NetworkRequest.OnNetworkRequestListener
    public void onNetworkRequestFailed(int i, String str, String str2, String str3) {
        Tracer.error("criteo.Stories.FetchBannerAdController", "onNetworkRequestFailed: ");
        OnFetchHtmlAdController onFetchHtmlAdController = this.mOnFetchHtmlAdController;
        if (onFetchHtmlAdController != null) {
            onFetchHtmlAdController.onFetchHtmlAdFailed(i, str, str2);
        }
    }
}
