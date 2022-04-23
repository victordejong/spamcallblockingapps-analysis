package com.mopub.mobileads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.mopub.common.CacheService;
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

    /* renamed from: e */
    public CustomEventInterstitial.CustomEventInterstitialListener f8697e;

    /* renamed from: f */
    public String f8698f;

    /* renamed from: g */
    public VastManager f8699g;

    /* renamed from: h */
    public VastVideoConfig f8700h;
    @Nullable

    /* renamed from: i */
    public JSONObject f8701i;
    @Nullable

    /* renamed from: j */
    public Map<String, String> f8702j;

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    /* renamed from: a */
    public void mo30254a(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener) {
        this.f8697e = customEventInterstitialListener;
        if (!CacheService.initializeDiskCache(this.f8521b)) {
            this.f8697e.onInterstitialFailed(MoPubErrorCode.VIDEO_CACHE_ERROR);
            return;
        }
        this.f8699g = VastManagerFactory.create(this.f8521b);
        this.f8699g.prepareVastVideoConfiguration(this.f8698f, this, this.f8522c.getDspCreativeId(), this.f8521b);
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    /* renamed from: a */
    public void mo30253a(Map<String, String> map) {
        this.f8698f = map.get("Html-Response-Body");
        String str = map.get("External-Video-Viewability-Trackers");
        try {
            this.f8702j = Json.jsonStringToMap(str);
        } catch (JSONException e) {
            MoPubLog.m30733d("Failed to parse video viewability trackers to JSON: " + str);
        }
        String str2 = map.get("Video-Trackers");
        if (!TextUtils.isEmpty(str2)) {
            try {
                this.f8701i = new JSONObject(str2);
            } catch (JSONException e2) {
                MoPubLog.m30732d("Failed to parse video trackers to JSON: " + str2, e2);
                this.f8701i = null;
            }
        }
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void onInvalidate() {
        VastManager vastManager = this.f8699g;
        if (vastManager != null) {
            vastManager.cancel();
        }
        super.onInvalidate();
    }

    @Override // com.mopub.mobileads.VastManager.VastManagerListener
    public void onVastVideoConfigurationPrepared(VastVideoConfig vastVideoConfig) {
        if (vastVideoConfig == null) {
            this.f8697e.onInterstitialFailed(MoPubErrorCode.VIDEO_DOWNLOAD_ERROR);
            return;
        }
        this.f8700h = vastVideoConfig;
        this.f8700h.addVideoTrackers(this.f8701i);
        this.f8700h.addExternalViewabilityTrackers(this.f8702j);
        this.f8697e.onInterstitialLoaded();
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void showInterstitial() {
        MraidVideoPlayerActivity.startVast(this.f8521b, this.f8700h, this.f8523d);
    }
}
