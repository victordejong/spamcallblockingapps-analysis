package com.mopub.mobileads;

import android.text.TextUtils;
import com.mopub.common.CacheService;
import com.mopub.common.CreativeOrientation;
import com.mopub.common.DataKeys;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Json;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.VastManager;
import com.mopub.mobileads.factories.VastManagerFactory;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoInterstitial.class */
public class VastVideoInterstitial extends ResponseBodyInterstitial implements VastManager.VastManagerListener {
    public static final String ADAPTER_NAME = "VastVideoInterstitial";

    /* renamed from: g */
    public CustomEventInterstitial.CustomEventInterstitialListener f34298g;

    /* renamed from: h */
    public String f34299h;

    /* renamed from: i */
    public VastManager f34300i;

    /* renamed from: j */
    public VastVideoConfig f34301j;

    /* renamed from: k */
    public JSONObject f34302k;

    /* renamed from: l */
    public Map<String, String> f34303l;

    /* renamed from: m */
    public CreativeOrientation f34304m;

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    /* renamed from: a */
    public void mo4032a(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener) {
        this.f34298g = customEventInterstitialListener;
        if (!CacheService.initializeDiskCache(this.f34198c)) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, ADAPTER_NAME, Integer.valueOf(MoPubErrorCode.VIDEO_CACHE_ERROR.getIntCode()), MoPubErrorCode.VIDEO_CACHE_ERROR);
            this.f34298g.onInterstitialFailed(MoPubErrorCode.VIDEO_CACHE_ERROR);
            return;
        }
        VastManager create = VastManagerFactory.create(this.f34198c);
        this.f34300i = create;
        create.prepareVastVideoConfiguration(this.f34299h, this, this.f34199d.getDspCreativeId(), this.f34198c);
        MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, ADAPTER_NAME);
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    /* renamed from: a */
    public void mo4049a(Map<String, String> map) {
        this.f34299h = map.get(DataKeys.HTML_RESPONSE_BODY_KEY);
        this.f34304m = CreativeOrientation.fromString(map.get(DataKeys.CREATIVE_ORIENTATION_KEY));
        String str = map.get(DataKeys.EXTERNAL_VIDEO_VIEWABILITY_TRACKERS_KEY);
        try {
            this.f34303l = Json.jsonStringToMap(str);
        } catch (JSONException e) {
            MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
            MoPubLog.log(adapterLogEvent, "Failed to parse video viewability trackers to JSON: " + str);
        }
        String str2 = map.get(DataKeys.VIDEO_TRACKERS_KEY);
        if (!TextUtils.isEmpty(str2)) {
            try {
                this.f34302k = new JSONObject(str2);
            } catch (JSONException e2) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE;
                MoPubLog.log(sdkLogEvent, "Failed to parse video trackers to JSON: " + str2, e2);
                this.f34302k = null;
            }
        }
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void onInvalidate() {
        VastManager vastManager = this.f34300i;
        if (vastManager != null) {
            vastManager.cancel();
        }
        super.onInvalidate();
    }

    public void onVastVideoConfigurationPrepared(VastVideoConfig vastVideoConfig) {
        if (vastVideoConfig == null) {
            this.f34298g.onInterstitialFailed(MoPubErrorCode.VIDEO_DOWNLOAD_ERROR);
            return;
        }
        this.f34301j = vastVideoConfig;
        vastVideoConfig.addVideoTrackers(this.f34302k);
        this.f34301j.addExternalViewabilityTrackers(this.f34303l);
        this.f34298g.onInterstitialLoaded();
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void showInterstitial() {
        MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED, ADAPTER_NAME);
        BaseVideoPlayerActivity.m4419b(this.f34198c, this.f34301j, this.f34200e, this.f34304m);
    }
}
