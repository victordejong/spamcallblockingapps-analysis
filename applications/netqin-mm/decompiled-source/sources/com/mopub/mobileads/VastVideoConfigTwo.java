package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.mopub.common.Constants;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.mobileads.VastAbsoluteProgressTrackerTwo;
import com.mopub.mobileads.VastFractionalProgressTrackerTwo;
import com.mopub.mobileads.VastTrackerTwo;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import com.mopub.network.TrackingRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
import p131c.p161d.p354f.p355s.AbstractC6132a;
import p131c.p161d.p354f.p355s.AbstractC6134c;
import p573f.p576c0.C9925q;
import p573f.p577r.C9978n;
import p573f.p577r.C9979o;
import p573f.p577r.C9982r;
import p573f.p590w.p592c.C10057o;
import p573f.p590w.p592c.C10059q;
@Mockable
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoConfigTwo.class */
public class VastVideoConfigTwo implements Serializable {
    public static final Companion Companion = new Companion(null);
    public static final long serialVersionUID = 3;
    @AbstractC6134c(Constants.VAST_URL_CLICKTHROUGH)
    @AbstractC6132a
    public String clickThroughUrl;
    @AbstractC6134c(Constants.VAST_CUSTOM_CLOSE_ICON_URL)
    @AbstractC6132a
    public String customCloseIconUrl;
    @AbstractC6134c(Constants.VAST_CUSTOM_TEXT_CTA)
    @AbstractC6132a
    public String customCtaText;
    @AbstractC6134c(Constants.VAST_CUSTOM_TEXT_SKIP)
    @AbstractC6132a
    public String customSkipText;
    @AbstractC6134c(Constants.VAST_URL_DISK_MEDIA_FILE)
    @AbstractC6132a
    public String diskMediaFileUrl;
    @AbstractC6134c(Constants.VAST_DSP_CREATIVE_ID)
    @AbstractC6132a
    public String dspCreativeId;
    @AbstractC6134c(Constants.VAST_ENABLE_CLICK_EXP)
    @AbstractC6132a
    public boolean enableClickExperiment;
    @AbstractC6134c(Constants.VAST_IS_REWARDED)
    @AbstractC6132a
    public boolean isRewarded;
    @AbstractC6134c(Constants.VAST_COMPANION_AD_LANDSCAPE)
    @AbstractC6132a
    public VastCompanionAdConfigTwo landscapeVastCompanionAdConfig;
    @AbstractC6134c(Constants.VAST_URL_NETWORK_MEDIA_FILE)
    @AbstractC6132a
    public String networkMediaFileUrl;
    @AbstractC6134c(Constants.VAST_COMPANION_AD_PORTRAIT)
    @AbstractC6132a
    public VastCompanionAdConfigTwo portraitVastCompanionAdConfig;
    @AbstractC6134c(Constants.VAST_PRIVACY_ICON_CLICK_URL)
    @AbstractC6132a
    public String privacyInformationIconClickthroughUrl;
    @AbstractC6134c(Constants.VAST_PRIVACY_ICON_IMAGE_URL)
    @AbstractC6132a
    public String privacyInformationIconImageUrl;
    @AbstractC6134c(Constants.VAST_SKIP_OFFSET)
    @AbstractC6132a
    public String skipOffset;
    @AbstractC6134c(Constants.VAST_ICON_CONFIG)
    @AbstractC6132a
    public VastIconConfigTwo vastIconConfig;
    @AbstractC6134c(Constants.VAST_VIDEO_VIEWABILITY_TRACKER)
    @AbstractC6132a
    public VideoViewabilityTracker videoViewabilityTracker;
    @AbstractC6134c(Constants.VAST_TRACKERS_IMPRESSION)
    @AbstractC6132a
    public final List<VastTrackerTwo> _impressionTrackers = new ArrayList();
    @AbstractC6134c(Constants.VAST_TRACKERS_PAUSE)
    @AbstractC6132a
    public final List<VastTrackerTwo> _pauseTrackers = new ArrayList();
    @AbstractC6134c(Constants.VAST_TRACKERS_RESUME)
    @AbstractC6132a
    public final List<VastTrackerTwo> _resumeTrackers = new ArrayList();
    @AbstractC6134c(Constants.VAST_TRACKERS_COMPLETE)
    @AbstractC6132a
    public final List<VastTrackerTwo> _completeTrackers = new ArrayList();
    @AbstractC6134c(Constants.VAST_TRACKERS_CLOSE)
    @AbstractC6132a
    public final List<VastTrackerTwo> _closeTrackers = new ArrayList();
    @AbstractC6134c(Constants.VAST_TRACKERS_SKIP)
    @AbstractC6132a
    public final List<VastTrackerTwo> _skipTrackers = new ArrayList();
    @AbstractC6134c(Constants.VAST_TRACKERS_CLICK)
    @AbstractC6132a
    public final List<VastTrackerTwo> _clickTrackers = new ArrayList();
    @AbstractC6134c(Constants.VAST_TRACKERS_ERROR)
    @AbstractC6132a
    public final List<VastTrackerTwo> _errorTrackers = new ArrayList();
    @AbstractC6134c(Constants.VAST_TRACKERS_FRACTIONAL)
    @AbstractC6132a
    public final List<VastFractionalProgressTrackerTwo> _fractionalTrackers = new ArrayList();
    @AbstractC6134c(Constants.VAST_TRACKERS_ABSOLUTE)
    @AbstractC6132a
    public final List<VastAbsoluteProgressTrackerTwo> _absoluteTrackers = new ArrayList();
    @AbstractC6134c(Constants.VAST_EXTERNAL_VIEWABILITY_TRACKERS)
    @AbstractC6132a
    public final Map<String, String> _externalViewabilityTrackers = new LinkedHashMap();
    @AbstractC6134c(Constants.VAST_AVID_JAVASCRIPT_RESOURCES)
    @AbstractC6132a
    public final Set<String> _avidJavascriptResources = new LinkedHashSet();
    @AbstractC6134c(Constants.VAST_MOAT_IMPRESSION_PIXELS)
    @AbstractC6132a
    public final Set<String> _moatImpressionPixels = new LinkedHashSet();

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoConfigTwo$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C10057o oVar) {
            this();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoConfigTwo$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[VideoTrackingEvent.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[VideoTrackingEvent.START.ordinal()] = 1;
            $EnumSwitchMapping$0[VideoTrackingEvent.FIRST_QUARTILE.ordinal()] = 2;
            $EnumSwitchMapping$0[VideoTrackingEvent.MIDPOINT.ordinal()] = 3;
            $EnumSwitchMapping$0[VideoTrackingEvent.THIRD_QUARTILE.ordinal()] = 4;
            $EnumSwitchMapping$0[VideoTrackingEvent.COMPLETE.ordinal()] = 5;
            $EnumSwitchMapping$0[VideoTrackingEvent.COMPANION_AD_VIEW.ordinal()] = 6;
            $EnumSwitchMapping$0[VideoTrackingEvent.COMPANION_AD_CLICK.ordinal()] = 7;
        }
    }

    private void addCompanionAdClickTrackersForUrls(List<String> list) {
        List<VastTrackerTwo> createVastTrackersForUrls = createVastTrackersForUrls(list);
        VastCompanionAdConfigTwo vastCompanionAdConfigTwo = this.landscapeVastCompanionAdConfig;
        if (vastCompanionAdConfigTwo != null) {
            vastCompanionAdConfigTwo.addClickTrackers(createVastTrackersForUrls);
        }
        VastCompanionAdConfigTwo vastCompanionAdConfigTwo2 = this.portraitVastCompanionAdConfig;
        if (vastCompanionAdConfigTwo2 != null) {
            vastCompanionAdConfigTwo2.addClickTrackers(createVastTrackersForUrls);
        }
    }

    private void addCompanionAdViewTrackersForUrls(List<String> list) {
        List<VastTrackerTwo> createVastTrackersForUrls = createVastTrackersForUrls(list);
        VastCompanionAdConfigTwo vastCompanionAdConfigTwo = this.landscapeVastCompanionAdConfig;
        if (vastCompanionAdConfigTwo != null) {
            vastCompanionAdConfigTwo.addCreativeViewTrackers(createVastTrackersForUrls);
        }
        VastCompanionAdConfigTwo vastCompanionAdConfigTwo2 = this.portraitVastCompanionAdConfig;
        if (vastCompanionAdConfigTwo2 != null) {
            vastCompanionAdConfigTwo2.addCreativeViewTrackers(createVastTrackersForUrls);
        }
    }

    private void addCompleteTrackersForUrls(List<String> list) {
        addCompleteTrackers(createVastTrackersForUrls(list));
    }

    private void addFractionalTrackersForUrls(List<String> list, float f) {
        ArrayList arrayList = new ArrayList(C9979o.m1705a(list, 10));
        for (String str : list) {
            arrayList.add(new VastFractionalProgressTrackerTwo.Builder(str, f).build());
        }
        addFractionalTrackers(arrayList);
    }

    private void addStartTrackersForUrls(List<String> list) {
        ArrayList arrayList = new ArrayList(C9979o.m1705a(list, 10));
        for (String str : list) {
            arrayList.add(new VastAbsoluteProgressTrackerTwo.Builder(str, 0).build());
        }
        addAbsoluteTrackers(arrayList);
    }

    private List<VastTrackerTwo> createVastTrackersForUrls(List<String> list) {
        ArrayList arrayList = new ArrayList(C9979o.m1705a(list, 10));
        for (String str : list) {
            arrayList.add(new VastTrackerTwo.Builder(str).build());
        }
        return arrayList;
    }

    private void handleClick(final Context context, int i, final Integer num) {
        TrackingRequest.makeVastTrackingTwoHttpRequest(this._clickTrackers, null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
        String clickThroughUrl = getClickThroughUrl();
        if (!(clickThroughUrl == null || clickThroughUrl.length() == 0)) {
            UrlHandler build = new UrlHandler.Builder().withDspCreativeId(getDspCreativeId()).withoutMoPubBrowser().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.mobileads.VastVideoConfigTwo$handleClick$urlHandler$1
                @Override // com.mopub.common.UrlHandler.ResultActions
                public void urlHandlingFailed(String str, UrlAction urlAction) {
                    C10059q.m1637b(str, "url");
                    C10059q.m1637b(urlAction, "lastFailedUrlAction");
                }

                @Override // com.mopub.common.UrlHandler.ResultActions
                public void urlHandlingSucceeded(String str, UrlAction urlAction) {
                    C10059q.m1637b(str, "url");
                    C10059q.m1637b(urlAction, "urlAction");
                    if (urlAction == UrlAction.OPEN_IN_APP_BROWSER) {
                        Bundle bundle = new Bundle();
                        bundle.putString(MoPubBrowser.DESTINATION_URL_KEY, str);
                        bundle.putString(MoPubBrowser.DSP_CREATIVE_ID, VastVideoConfigTwo.this.getDspCreativeId());
                        Intent startActivityIntent = Intents.getStartActivityIntent(context, MoPubBrowser.class, bundle);
                        try {
                            if (!(context instanceof Activity)) {
                                Intents.startActivity(context, startActivityIntent);
                            } else if (num != null) {
                                ((Activity) context).startActivityForResult(startActivityIntent, num.intValue());
                            } else {
                                throw new IllegalArgumentException("Activity context requires a requestCode".toString());
                            }
                        } catch (ActivityNotFoundException e) {
                            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                            MoPubLog.log(sdkLogEvent, "Activity " + MoPubBrowser.class.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
                        } catch (IntentNotResolvableException e2) {
                            MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
                            MoPubLog.log(sdkLogEvent2, "Activity " + MoPubBrowser.class.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
                        }
                    }
                }
            }).build();
            String clickThroughUrl2 = getClickThroughUrl();
            if (clickThroughUrl2 != null) {
                build.handleUrl(context, clickThroughUrl2);
            }
        }
    }

    private List<String> hydrateUrls(String str, JSONArray jSONArray) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            String optString = jSONArray.optString(i);
            if (optString != null) {
                arrayList.add(C9925q.m1782a(optString, Constants.VIDEO_TRACKING_URL_MACRO, str, false, 4, (Object) null));
            }
        }
        return arrayList;
    }

    public void addAbsoluteTrackers(List<? extends VastAbsoluteProgressTrackerTwo> list) {
        C10059q.m1637b(list, "absoluteTrackers");
        this._absoluteTrackers.addAll(list);
        C9982r.m1704a((List) this._absoluteTrackers);
    }

    public void addAvidJavascriptResources(Set<String> set) {
        if (set != null) {
            this._avidJavascriptResources.addAll(set);
        }
    }

    public void addClickTrackers(List<? extends VastTrackerTwo> list) {
        C10059q.m1637b(list, "clickTrackers");
        this._clickTrackers.addAll(list);
    }

    public void addCloseTrackers(List<? extends VastTrackerTwo> list) {
        C10059q.m1637b(list, "closeTrackers");
        this._closeTrackers.addAll(list);
    }

    public void addCompleteTrackers(List<? extends VastTrackerTwo> list) {
        C10059q.m1637b(list, "completeTrackers");
        this._completeTrackers.addAll(list);
    }

    public void addErrorTrackers(List<? extends VastTrackerTwo> list) {
        C10059q.m1637b(list, "errorTrackers");
        this._errorTrackers.addAll(list);
    }

    public void addExternalViewabilityTrackers(Map<String, String> map) {
        if (map != null) {
            this._externalViewabilityTrackers.putAll(map);
        }
    }

    public void addFractionalTrackers(List<VastFractionalProgressTrackerTwo> list) {
        C10059q.m1637b(list, "fractionalTrackers");
        this._fractionalTrackers.addAll(list);
        C9982r.m1704a((List) this._fractionalTrackers);
    }

    public void addImpressionTrackers(List<? extends VastTrackerTwo> list) {
        C10059q.m1637b(list, "impressionTrackers");
        this._impressionTrackers.addAll(list);
    }

    public void addMoatImpressionPixels(Set<String> set) {
        if (set != null) {
            this._moatImpressionPixels.addAll(set);
        }
    }

    public void addPauseTrackers(List<? extends VastTrackerTwo> list) {
        C10059q.m1637b(list, "pauseTrackers");
        this._pauseTrackers.addAll(list);
    }

    public void addResumeTrackers(List<? extends VastTrackerTwo> list) {
        C10059q.m1637b(list, "resumeTrackers");
        this._resumeTrackers.addAll(list);
    }

    public void addSkipTrackers(List<? extends VastTrackerTwo> list) {
        C10059q.m1637b(list, "skipTrackers");
        this._skipTrackers.addAll(list);
    }

    public void addVideoTrackers(JSONObject jSONObject) {
        if (jSONObject != null) {
            JSONArray optJSONArray = jSONObject.optJSONArray(Constants.VIDEO_TRACKING_URLS_KEY);
            JSONArray optJSONArray2 = jSONObject.optJSONArray(Constants.VIDEO_TRACKING_EVENTS_KEY);
            if (!(optJSONArray == null || optJSONArray2 == null)) {
                int length = optJSONArray2.length();
                for (int i = 0; i < length; i++) {
                    String optString = optJSONArray2.optString(i);
                    List<String> hydrateUrls = hydrateUrls(optString, optJSONArray);
                    VideoTrackingEvent fromString = VideoTrackingEvent.Companion.fromString(optString);
                    if (!(optString == null || hydrateUrls == null)) {
                        switch (WhenMappings.$EnumSwitchMapping$0[fromString.ordinal()]) {
                            case 1:
                                addStartTrackersForUrls(hydrateUrls);
                                continue;
                            case 2:
                            case 3:
                            case 4:
                                addFractionalTrackersForUrls(hydrateUrls, fromString.toFloat());
                                continue;
                            case 5:
                                addCompleteTrackersForUrls(hydrateUrls);
                                continue;
                            case 6:
                                addCompanionAdViewTrackersForUrls(hydrateUrls);
                                continue;
                            case 7:
                                addCompanionAdClickTrackersForUrls(hydrateUrls);
                                continue;
                            default:
                                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                                MoPubLog.log(sdkLogEvent, "Encountered unknown video tracking event: " + optString);
                                continue;
                        }
                    }
                }
            }
        }
    }

    public ArrayList<VastAbsoluteProgressTrackerTwo> getAbsoluteTrackers() {
        return new ArrayList<>(this._absoluteTrackers);
    }

    public Set<String> getAvidJavascriptResources() {
        return new HashSet(this._avidJavascriptResources);
    }

    public String getClickThroughUrl() {
        return this.clickThroughUrl;
    }

    public ArrayList<VastTrackerTwo> getClickTrackers() {
        return new ArrayList<>(this._clickTrackers);
    }

    public ArrayList<VastTrackerTwo> getCloseTrackers() {
        return new ArrayList<>(this._closeTrackers);
    }

    public ArrayList<VastTrackerTwo> getCompleteTrackers() {
        return new ArrayList<>(this._completeTrackers);
    }

    public String getCustomCloseIconUrl() {
        return this.customCloseIconUrl;
    }

    public String getCustomCtaText() {
        return this.customCtaText;
    }

    public String getCustomSkipText() {
        return this.customSkipText;
    }

    public String getDiskMediaFileUrl() {
        return this.diskMediaFileUrl;
    }

    public String getDspCreativeId() {
        return this.dspCreativeId;
    }

    public boolean getEnableClickExperiment() {
        return this.enableClickExperiment;
    }

    public ArrayList<VastTrackerTwo> getErrorTrackers() {
        return new ArrayList<>(this._errorTrackers);
    }

    public Map<String, String> getExternalViewabilityTrackers() {
        return new HashMap(this._externalViewabilityTrackers);
    }

    public ArrayList<VastFractionalProgressTrackerTwo> getFractionalTrackers() {
        return new ArrayList<>(this._fractionalTrackers);
    }

    public ArrayList<VastTrackerTwo> getImpressionTrackers() {
        return new ArrayList<>(this._impressionTrackers);
    }

    public Set<String> getMoatImpressionPixels() {
        return new HashSet(this._moatImpressionPixels);
    }

    public String getNetworkMediaFileUrl() {
        return this.networkMediaFileUrl;
    }

    public ArrayList<VastTrackerTwo> getPauseTrackers() {
        return new ArrayList<>(this._pauseTrackers);
    }

    public String getPrivacyInformationIconClickthroughUrl() {
        return this.privacyInformationIconClickthroughUrl;
    }

    public String getPrivacyInformationIconImageUrl() {
        return this.privacyInformationIconImageUrl;
    }

    public int getRemainingProgressTrackerCount() {
        return getUntriggeredTrackersBefore(MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT, MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT).size();
    }

    public ArrayList<VastTrackerTwo> getResumeTrackers() {
        return new ArrayList<>(this._resumeTrackers);
    }

    public String getSkipOffset() {
        return this.skipOffset;
    }

    public Integer getSkipOffsetMillis(int i) throws NumberFormatException {
        Integer num;
        String skipOffset = getSkipOffset();
        Integer num2 = null;
        if (skipOffset != null) {
            if (VastAbsoluteProgressTrackerTwo.Companion.isAbsoluteTracker(skipOffset)) {
                num = VastAbsoluteProgressTrackerTwo.Companion.parseAbsoluteOffset(skipOffset);
            } else if (VastFractionalProgressTrackerTwo.Companion.isPercentageTracker(skipOffset)) {
                num = VastFractionalProgressTrackerTwo.Companion.parsePercentageOffset(skipOffset, i);
            } else {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Invalid VAST skipoffset format: " + skipOffset);
                num = null;
            }
            num2 = null;
            if (num != null) {
                num2 = Integer.valueOf(Math.min(num.intValue(), i));
            }
        }
        return num2;
    }

    public ArrayList<VastTrackerTwo> getSkipTrackers() {
        return new ArrayList<>(this._skipTrackers);
    }

    public List<VastTrackerTwo> getUntriggeredTrackersBefore(int i, int i2) {
        if (i2 <= 0 || i < 0) {
            return C9978n.m1709a();
        }
        ArrayList arrayList = new ArrayList();
        VastAbsoluteProgressTrackerTwo build = new VastAbsoluteProgressTrackerTwo.Builder("", i).build();
        for (VastAbsoluteProgressTrackerTwo vastAbsoluteProgressTrackerTwo : this._absoluteTrackers) {
            if (vastAbsoluteProgressTrackerTwo.compareTo(build) <= 0 && !vastAbsoluteProgressTrackerTwo.isTracked()) {
                arrayList.add(vastAbsoluteProgressTrackerTwo);
            }
        }
        VastFractionalProgressTrackerTwo build2 = new VastFractionalProgressTrackerTwo.Builder("", i / i2).build();
        for (VastFractionalProgressTrackerTwo vastFractionalProgressTrackerTwo : this._fractionalTrackers) {
            if (vastFractionalProgressTrackerTwo.compareTo(build2) <= 0 && !vastFractionalProgressTrackerTwo.isTracked()) {
                arrayList.add(vastFractionalProgressTrackerTwo);
            }
        }
        return arrayList;
    }

    public VastCompanionAdConfigTwo getVastCompanionAd(int i) {
        return i != 1 ? i != 2 ? this.landscapeVastCompanionAdConfig : this.landscapeVastCompanionAdConfig : this.portraitVastCompanionAdConfig;
    }

    public VastIconConfigTwo getVastIconConfig() {
        return this.vastIconConfig;
    }

    public VideoViewabilityTracker getVideoViewabilityTracker() {
        return this.videoViewabilityTracker;
    }

    public void handleClickForResult(Activity activity, int i, int i2) {
        C10059q.m1637b(activity, "activity");
        handleClick(activity, i, Integer.valueOf(i2));
    }

    public void handleClickWithoutResult(Context context, int i) {
        C10059q.m1637b(context, "context");
        Context applicationContext = context.getApplicationContext();
        C10059q.m1642a((Object) applicationContext, "context.applicationContext");
        handleClick(applicationContext, i, null);
    }

    public void handleClose(Context context, int i) {
        C10059q.m1637b(context, "context");
        TrackingRequest.makeVastTrackingTwoHttpRequest(this._closeTrackers, null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handleComplete(Context context, int i) {
        C10059q.m1637b(context, "context");
        TrackingRequest.makeVastTrackingTwoHttpRequest(this._completeTrackers, null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handleError(Context context, VastErrorCode vastErrorCode, int i) {
        C10059q.m1637b(context, "context");
        TrackingRequest.makeVastTrackingTwoHttpRequest(this._errorTrackers, vastErrorCode, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handleImpression(Context context, int i) {
        C10059q.m1637b(context, "context");
        TrackingRequest.makeVastTrackingTwoHttpRequest(this._impressionTrackers, null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handlePause(Context context, int i) {
        C10059q.m1637b(context, "context");
        TrackingRequest.makeVastTrackingTwoHttpRequest(this._pauseTrackers, null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handleResume(Context context, int i) {
        C10059q.m1637b(context, "context");
        TrackingRequest.makeVastTrackingTwoHttpRequest(this._resumeTrackers, null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handleSkip(Context context, int i) {
        C10059q.m1637b(context, "context");
        TrackingRequest.makeVastTrackingTwoHttpRequest(this._skipTrackers, null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public boolean hasCompanionAd() {
        return (this.landscapeVastCompanionAdConfig == null || this.portraitVastCompanionAdConfig == null) ? false : true;
    }

    public boolean isRewarded() {
        return this.isRewarded;
    }

    public void setClickThroughUrl(String str) {
        this.clickThroughUrl = str;
    }

    public void setCustomCloseIconUrl(String str) {
        if (str == null) {
            str = this.customCloseIconUrl;
        }
        this.customCloseIconUrl = str;
    }

    public void setCustomCtaText(String str) {
        if (str == null) {
            str = this.customCtaText;
        }
        this.customCtaText = str;
    }

    public void setCustomSkipText(String str) {
        if (str == null) {
            str = this.customSkipText;
        }
        this.customSkipText = str;
    }

    public void setDiskMediaFileUrl(String str) {
        this.diskMediaFileUrl = str;
    }

    public void setDspCreativeId(String str) {
        if (str == null) {
            str = this.dspCreativeId;
        }
        this.dspCreativeId = str;
    }

    public void setEnableClickExperiment(boolean z) {
        this.enableClickExperiment = z;
    }

    public void setNetworkMediaFileUrl(String str) {
        this.networkMediaFileUrl = str;
    }

    public void setPrivacyInformationIconClickthroughUrl(String str) {
        this.privacyInformationIconClickthroughUrl = str;
    }

    public void setPrivacyInformationIconImageUrl(String str) {
        if (str == null) {
            str = this.privacyInformationIconImageUrl;
        }
        this.privacyInformationIconImageUrl = str;
    }

    public void setRewarded$mopub_sdk_base_release(boolean z) {
        this.isRewarded = z;
    }

    public void setSkipOffset$mopub_sdk_base_release(String str) {
        if (str == null) {
            str = this.skipOffset;
        }
        this.skipOffset = str;
    }

    public void setVastCompanionAd(VastCompanionAdConfigTwo vastCompanionAdConfigTwo, VastCompanionAdConfigTwo vastCompanionAdConfigTwo2) {
        this.landscapeVastCompanionAdConfig = vastCompanionAdConfigTwo;
        this.portraitVastCompanionAdConfig = vastCompanionAdConfigTwo2;
    }

    public void setVastIconConfig(VastIconConfigTwo vastIconConfigTwo) {
        this.vastIconConfig = vastIconConfigTwo;
    }

    public void setVideoViewabilityTracker(VideoViewabilityTracker videoViewabilityTracker) {
        if (videoViewabilityTracker == null) {
            videoViewabilityTracker = this.videoViewabilityTracker;
        }
        this.videoViewabilityTracker = videoViewabilityTracker;
    }
}
