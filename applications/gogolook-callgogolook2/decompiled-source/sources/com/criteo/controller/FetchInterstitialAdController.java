package com.criteo.controller;

import android.content.Context;
import android.os.Build;
import com.criteo.BuildConfig;
import com.criteo.Criteo;
import com.criteo.Gdpr;
import com.criteo.controller.FindDeviceGAID;
import com.criteo.info.AppConfigInfo;
import com.criteo.info.InterstitialAdInfo;
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
/* loaded from: classes-dex2jar.jar:com/criteo/controller/FetchInterstitialAdController.class */
public class FetchInterstitialAdController implements FindDeviceGAID.OnFindDeviceGAIDListener, ConnectivityInfoUtils.OnConnectivityInfoUtilsListener, NetworkRequest.OnNetworkRequestListener, NetworkRequest.onBlockZoneIdListener, NetworkRequest.onDisplayJavascriptListnerInterstitial {
    public static final String TAG = "criteo.Stories.FetchInterstitialAdController";
    public Timestamp blockTimeStamp;
    public Timestamp currenttimeStamp;
    public boolean filter_enabled;
    public String mBlockGaid;
    public String mBlockTimeStamp;
    public Context mContext;
    public String mGaid;
    public Criteo.OnCriteoAdListener mOnCriteoAdListener;
    public OnFetchInterstitialAdController mOnFetchInterstitialAdController;
    public String mZoneid;

    /* loaded from: classes-dex2jar.jar:com/criteo/controller/FetchInterstitialAdController$OnFetchInterstitialAdController.class */
    public interface OnFetchInterstitialAdController {
        void onFetchInterstitialAdFailed(int i, String str, String str2);

        void onFetchInterstitialAdSuccess();
    }

    public FetchInterstitialAdController(Context context, OnFetchInterstitialAdController onFetchInterstitialAdController, String str, Criteo.OnCriteoAdListener onCriteoAdListener) {
        Tracer.debug(TAG, "FetchInterstitialAdController: ");
        this.mContext = context;
        this.mOnFetchInterstitialAdController = onFetchInterstitialAdController;
        this.mZoneid = str;
        this.mOnCriteoAdListener = onCriteoAdListener;
        AppConfigInfo appConfigInfo = JsonParser.appConfigInfo;
        if (appConfigInfo != null) {
            this.filter_enabled = appConfigInfo.isEnabled();
        }
    }

    private JSONObject getRequestParam() {
        Tracer.debug(TAG, "getRequestParam: " + this.mContext.getPackageName());
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("bundleid", this.mContext.getPackageName());
            jSONObject2.put("appname", Utils.getAppName(this.mContext));
            jSONObject2.put("url", Utils.URL + this.mContext.getPackageName());
            jSONObject.put("publisher", jSONObject2);
        } catch (Exception e) {
            Tracer.error(TAG, "getRequestParam: 1: " + e.getMessage());
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
            Tracer.error(TAG, "getRequestParam: 2: " + e2.getMessage());
        }
        try {
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("impid", this.mZoneid);
            jSONObject4.put("zoneid", this.mZoneid);
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject4);
            jSONObject.put("slots", jSONArray);
        } catch (Exception e3) {
            Tracer.error(TAG, "getRequestParam: 3: " + e3.getMessage());
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
            Tracer.error(TAG, "getRequestParam: 4: " + e4.getMessage());
        }
        return jSONObject;
    }

    private void onRequestMethod() {
        String str = this.mGaid;
        if (str != null && !str.trim().isEmpty()) {
            AppConfigInfo appConfigInfo = JsonParser.appConfigInfo;
            if (appConfigInfo == null) {
                NetworkRequest.sendPostRequestNative(this.mContext, BuildConfig.AD_URL, getRequestParam(), this, this, "", this.mGaid, Criteo.ADType.INTERSTITIAL);
            } else if (appConfigInfo.getEndpoint() != null) {
                NetworkRequest.sendPostRequestNative(this.mContext, JsonParser.appConfigInfo.getEndpoint(), getRequestParam(), this, this, "", this.mGaid, Criteo.ADType.INTERSTITIAL);
            } else {
                NetworkRequest.sendPostRequestNative(this.mContext, BuildConfig.AD_URL, getRequestParam(), this, this, "", this.mGaid, Criteo.ADType.INTERSTITIAL);
            }
        }
    }

    public void fetchInterstitialAd() {
        Tracer.debug(TAG, "fetchInterstitialAd: ");
        new FindDeviceGAID(this.mContext, this).fetchGAID();
    }

    @Override // com.criteo.network.NetworkRequest.onBlockZoneIdListener
    public void onBlockZoneID(String str) {
        Tracer.debug(TAG, "onBlockZoneID:   " + str);
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
        Tracer.debug(TAG, "onConnectivityInfoUtilsNetworkConnected: ");
        this.mGaid = PreferenceDataUtils.getGAID(this.mContext);
        this.mBlockGaid = PreferenceDataUtils.getGaidNative(this.mContext);
        this.mBlockTimeStamp = PreferenceDataUtils.getTimestampNative(this.mContext);
        try {
            this.blockTimeStamp = Timestamp.valueOf(this.mBlockTimeStamp);
            this.currenttimeStamp = Utils.getCurrentTimeStamp();
        } catch (Exception e) {
            Tracer.error(TAG, e.getMessage());
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
                    Tracer.debug(TAG, "mBlockGaid GAID blocked  currenttimeStamp ");
                    if (!this.filter_enabled) {
                        onRequestMethod();
                        return;
                    } else if (this.mOnCriteoAdListener != null) {
                        this.mOnCriteoAdListener.onAdRequestFiltered(Criteo.ADType.INTERSTITIAL);
                        return;
                    } else {
                        return;
                    }
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
        Tracer.debug(TAG, "onConnectivityInfoUtilsNetworkDisconnected: ");
        OnFetchInterstitialAdController onFetchInterstitialAdController = this.mOnFetchInterstitialAdController;
        if (onFetchInterstitialAdController != null) {
            onFetchInterstitialAdController.onFetchInterstitialAdFailed(i, str, "");
        }
    }

    @Override // com.criteo.network.NetworkRequest.onDisplayJavascriptListnerInterstitial
    public void onDisplayJsFailed() {
        Tracer.debug(TAG, "onDisplayJsFailed:   ");
    }

    @Override // com.criteo.network.NetworkRequest.onDisplayJavascriptListnerInterstitial
    public void onDisplayJsSuccess(Object obj) {
        Tracer.debug(TAG, "onDisplayJsSuccess:   " + obj);
        CriteoCacheHelper.saveInterstitial(this.mContext, Utils.CACHE_KEY_INTERSTITIAL, (String) obj, Criteo.ADType.INTERSTITIAL, this.mZoneid);
        OnFetchInterstitialAdController onFetchInterstitialAdController = this.mOnFetchInterstitialAdController;
        if (onFetchInterstitialAdController != null) {
            onFetchInterstitialAdController.onFetchInterstitialAdSuccess();
        }
    }

    @Override // com.criteo.controller.FindDeviceGAID.OnFindDeviceGAIDListener
    public void onFindDeviceGAIDFailed() {
        Tracer.debug(TAG, "onFindDeviceGAIDFailed: ");
    }

    @Override // com.criteo.controller.FindDeviceGAID.OnFindDeviceGAIDListener
    public void onFindDeviceGAIDSuccess(String str) {
        Tracer.debug(TAG, "onFindDeviceGAIDSuccess: ");
        ConnectivityInfoUtils.isConnected(this.mContext, this);
    }

    @Override // com.criteo.network.NetworkRequest.OnNetworkRequestListener
    public void onNetworkRequestCompleted(JSONObject jSONObject, String str) {
        Tracer.debug(TAG, "onNetworkRequestCompleted: " + jSONObject);
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("slots");
            InterstitialAdInfo interstitialAdInfo = new InterstitialAdInfo(jSONArray.getJSONObject(0).getString("impid"), "", jSONArray.getJSONObject(0).getString("displayurl"), jSONArray.getJSONObject(0).getString("width"), jSONArray.getJSONObject(0).getString("height"));
            String htmlUrl = interstitialAdInfo.getHtmlUrl();
            PreferenceDataUtils.setDisplayAdHeight(this.mContext, interstitialAdInfo.getmHeight());
            PreferenceDataUtils.setDisplayAdCreative(this.mContext, interstitialAdInfo.getHtmlUrl());
            NetworkRequest.sendGetRequestForDisplayInterstitial(htmlUrl, this);
        } catch (Exception e) {
            Tracer.error(TAG, "onNetworkRequestCompleted error reaponse blank");
        }
    }

    @Override // com.criteo.network.NetworkRequest.OnNetworkRequestListener
    public void onNetworkRequestFailed(int i, String str, String str2, String str3) {
        Tracer.error(TAG, "onNetworkRequestFailed: ");
        OnFetchInterstitialAdController onFetchInterstitialAdController = this.mOnFetchInterstitialAdController;
        if (onFetchInterstitialAdController != null) {
            onFetchInterstitialAdController.onFetchInterstitialAdFailed(i, str, str2);
        }
    }
}
