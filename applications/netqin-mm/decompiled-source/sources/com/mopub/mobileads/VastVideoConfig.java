package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.gson.stream.JsonToken;
import com.mopub.common.Constants;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import com.mopub.network.TrackingRequest;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
import p131c.p161d.p354f.AbstractC6129q;
import p131c.p161d.p354f.AbstractC6131r;
import p131c.p161d.p354f.C6111e;
import p131c.p161d.p354f.p355s.AbstractC6132a;
import p131c.p161d.p354f.p355s.AbstractC6134c;
import p131c.p161d.p354f.p360u.C6239a;
import p131c.p161d.p354f.p361v.C6240a;
import p131c.p161d.p354f.p361v.C6242b;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoConfig.class */
public class VastVideoConfig implements Serializable {
    public static final long serialVersionUID = 2;
    @AbstractC6134c(Constants.VAST_URL_CLICKTHROUGH)
    @AbstractC6132a
    public String mClickThroughUrl;
    @AbstractC6134c(Constants.VAST_CUSTOM_CLOSE_ICON_URL)
    @AbstractC6132a
    public String mCustomCloseIconUrl;
    @AbstractC6134c(Constants.VAST_CUSTOM_TEXT_CTA)
    @AbstractC6132a
    public String mCustomCtaText;
    @AbstractC6134c(Constants.VAST_CUSTOM_TEXT_SKIP)
    @AbstractC6132a
    public String mCustomSkipText;
    @AbstractC6134c(Constants.VAST_URL_DISK_MEDIA_FILE)
    @AbstractC6132a
    public String mDiskMediaFileUrl;
    @AbstractC6134c(Constants.VAST_DSP_CREATIVE_ID)
    @AbstractC6132a
    public String mDspCreativeId;
    @AbstractC6134c(Constants.VAST_COMPANION_AD_LANDSCAPE)
    @AbstractC6132a
    public VastCompanionAdConfig mLandscapeVastCompanionAdConfig;
    @AbstractC6134c(Constants.VAST_URL_NETWORK_MEDIA_FILE)
    @AbstractC6132a
    public String mNetworkMediaFileUrl;
    @AbstractC6134c(Constants.VAST_COMPANION_AD_PORTRAIT)
    @AbstractC6132a
    public VastCompanionAdConfig mPortraitVastCompanionAdConfig;
    @AbstractC6134c(Constants.VAST_PRIVACY_ICON_CLICK_URL)
    @AbstractC6132a
    public String mPrivacyInformationIconClickthroughUrl;
    @AbstractC6134c(Constants.VAST_PRIVACY_ICON_IMAGE_URL)
    @AbstractC6132a
    public String mPrivacyInformationIconImageUrl;
    @AbstractC6134c(Constants.VAST_SKIP_OFFSET)
    @AbstractC6132a
    public String mSkipOffset;
    @AbstractC6134c(Constants.VAST_ICON_CONFIG)
    @AbstractC6132a
    public VastIconConfig mVastIconConfig;
    @AbstractC6134c(Constants.VAST_VIDEO_VIEWABILITY_TRACKER)
    @AbstractC6132a
    public VideoViewabilityTracker mVideoViewabilityTracker;
    @AbstractC6134c(Constants.VAST_TRACKERS_IMPRESSION)
    @AbstractC6132a
    public final ArrayList<VastTracker> mImpressionTrackers = new ArrayList<>();
    @AbstractC6134c(Constants.VAST_TRACKERS_FRACTIONAL)
    @AbstractC6132a
    public final ArrayList<VastFractionalProgressTracker> mFractionalTrackers = new ArrayList<>();
    @AbstractC6134c(Constants.VAST_TRACKERS_ABSOLUTE)
    @AbstractC6132a
    public final ArrayList<VastAbsoluteProgressTracker> mAbsoluteTrackers = new ArrayList<>();
    @AbstractC6134c(Constants.VAST_TRACKERS_PAUSE)
    @AbstractC6132a
    public final ArrayList<VastTracker> mPauseTrackers = new ArrayList<>();
    @AbstractC6134c(Constants.VAST_TRACKERS_RESUME)
    @AbstractC6132a
    public final ArrayList<VastTracker> mResumeTrackers = new ArrayList<>();
    @AbstractC6134c(Constants.VAST_TRACKERS_COMPLETE)
    @AbstractC6132a
    public final ArrayList<VastTracker> mCompleteTrackers = new ArrayList<>();
    @AbstractC6134c(Constants.VAST_TRACKERS_CLOSE)
    @AbstractC6132a
    public final ArrayList<VastTracker> mCloseTrackers = new ArrayList<>();
    @AbstractC6134c(Constants.VAST_TRACKERS_SKIP)
    @AbstractC6132a
    public final ArrayList<VastTracker> mSkipTrackers = new ArrayList<>();
    @AbstractC6134c(Constants.VAST_TRACKERS_CLICK)
    @AbstractC6132a
    public final ArrayList<VastTracker> mClickTrackers = new ArrayList<>();
    @AbstractC6134c(Constants.VAST_TRACKERS_ERROR)
    @AbstractC6132a
    public final ArrayList<VastTracker> mErrorTrackers = new ArrayList<>();
    @AbstractC6134c(Constants.VAST_IS_REWARDED)
    @AbstractC6132a
    public boolean mIsRewardedVideo = false;
    @AbstractC6134c(Constants.VAST_EXTERNAL_VIEWABILITY_TRACKERS)
    @AbstractC6132a
    public final Map<String, String> mExternalViewabilityTrackers = new HashMap();
    @AbstractC6134c(Constants.VAST_AVID_JAVASCRIPT_RESOURCES)
    @AbstractC6132a
    public final Set<String> mAvidJavascriptResources = new HashSet();
    @AbstractC6134c(Constants.VAST_MOAT_IMPRESSION_PIXELS)
    @AbstractC6132a
    public final Set<String> mMoatImpressionPixels = new HashSet();

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoConfig$VastVideoConfigTypeAdapter.class */
    public static class VastVideoConfigTypeAdapter extends AbstractC6129q<Class<?>> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p131c.p161d.p354f.AbstractC6129q
        public Class<?> read(C6240a aVar) throws IOException {
            if (aVar == null) {
                return null;
            }
            if (aVar.mo21802u() == JsonToken.NULL) {
                aVar.mo21805r();
                return null;
            }
            try {
                return Class.forName(aVar.mo21804s());
            } catch (ClassNotFoundException e) {
                throw new IOException(e);
            }
        }

        public void write(C6242b bVar, Class<?> cls) throws IOException {
            if (bVar != null) {
                if (cls == null) {
                    bVar.mo21770k();
                } else {
                    bVar.mo21778d(cls.getName());
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoConfig$VastVideoConfigTypeAdapterFactory.class */
    public static class VastVideoConfigTypeAdapterFactory implements AbstractC6131r {
        @Override // p131c.p161d.p354f.AbstractC6131r
        public <T> AbstractC6129q<T> create(C6111e eVar, C6239a<T> aVar) {
            if (aVar == null || !Class.class.isAssignableFrom(aVar.m21836a())) {
                return null;
            }
            return new VastVideoConfigTypeAdapter();
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoConfig$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoConfig$a.class */
    public class C8819a implements UrlHandler.ResultActions {

        /* renamed from: a */
        public final /* synthetic */ Context f34281a;

        /* renamed from: b */
        public final /* synthetic */ Integer f34282b;

        public C8819a(Context context, Integer num) {
            this.f34281a = context;
            this.f34282b = num;
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingFailed(String str, UrlAction urlAction) {
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingSucceeded(String str, UrlAction urlAction) {
            if (urlAction == UrlAction.OPEN_IN_APP_BROWSER) {
                Bundle bundle = new Bundle();
                bundle.putString(MoPubBrowser.DESTINATION_URL_KEY, str);
                bundle.putString(MoPubBrowser.DSP_CREATIVE_ID, VastVideoConfig.this.mDspCreativeId);
                Intent startActivityIntent = Intents.getStartActivityIntent(this.f34281a, MoPubBrowser.class, bundle);
                try {
                    if (this.f34281a instanceof Activity) {
                        Preconditions.checkNotNull(this.f34282b);
                        ((Activity) this.f34281a).startActivityForResult(startActivityIntent, this.f34282b.intValue());
                    } else {
                        Intents.startActivity(this.f34281a, startActivityIntent);
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
    }

    /* renamed from: com.mopub.mobileads.VastVideoConfig$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoConfig$b.class */
    public static /* synthetic */ class C8820b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f34284a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[VideoTrackingEvent.values().length];
            f34284a = iArr;
            try {
                iArr[VideoTrackingEvent.START.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f34284a[VideoTrackingEvent.FIRST_QUARTILE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f34284a[VideoTrackingEvent.MIDPOINT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f34284a[VideoTrackingEvent.THIRD_QUARTILE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f34284a[VideoTrackingEvent.COMPLETE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f34284a[VideoTrackingEvent.COMPANION_AD_VIEW.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f34284a[VideoTrackingEvent.COMPANION_AD_CLICK.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f34284a[VideoTrackingEvent.UNKNOWN.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    private void addCompanionAdClickTrackersForUrls(List<String> list) {
        Preconditions.checkNotNull(list);
        if (hasCompanionAd()) {
            List<VastTracker> createVastTrackersForUrls = createVastTrackersForUrls(list);
            this.mLandscapeVastCompanionAdConfig.addClickTrackers(createVastTrackersForUrls);
            this.mPortraitVastCompanionAdConfig.addClickTrackers(createVastTrackersForUrls);
        }
    }

    private void addCompanionAdViewTrackersForUrls(List<String> list) {
        Preconditions.checkNotNull(list);
        if (hasCompanionAd()) {
            List<VastTracker> createVastTrackersForUrls = createVastTrackersForUrls(list);
            this.mLandscapeVastCompanionAdConfig.addCreativeViewTrackers(createVastTrackersForUrls);
            this.mPortraitVastCompanionAdConfig.addCreativeViewTrackers(createVastTrackersForUrls);
        }
    }

    private void addCompleteTrackersForUrls(List<String> list) {
        Preconditions.checkNotNull(list);
        addCompleteTrackers(createVastTrackersForUrls(list));
    }

    private void addFractionalTrackersForUrls(List<String> list, float f) {
        Preconditions.checkNotNull(list);
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            arrayList.add(new VastFractionalProgressTracker(str, f));
        }
        addFractionalTrackers(arrayList);
    }

    private void addStartTrackersForUrls(List<String> list) {
        Preconditions.checkNotNull(list);
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            arrayList.add(new VastAbsoluteProgressTracker(str, 0));
        }
        addAbsoluteTrackers(arrayList);
    }

    private List<VastTracker> createVastTrackersForUrls(List<String> list) {
        Preconditions.checkNotNull(list);
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            arrayList.add(new VastTracker(str));
        }
        return arrayList;
    }

    private void handleClick(Context context, int i, Integer num) {
        Preconditions.checkNotNull(context, "context cannot be null");
        TrackingRequest.makeVastTrackingHttpRequest(this.mClickTrackers, null, Integer.valueOf(i), this.mNetworkMediaFileUrl, context);
        if (!TextUtils.isEmpty(this.mClickThroughUrl)) {
            new UrlHandler.Builder().withDspCreativeId(this.mDspCreativeId).withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).withResultActions(new C8819a(context, num)).withoutMoPubBrowser().build().handleUrl(context, this.mClickThroughUrl);
        }
    }

    private List<String> hydrateUrls(String str, JSONArray jSONArray) {
        Preconditions.checkNotNull(jSONArray);
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            String optString = jSONArray.optString(i);
            if (optString != null) {
                arrayList.add(optString.replace(Constants.VIDEO_TRACKING_URL_MACRO, str));
            }
        }
        return arrayList;
    }

    public void addAbsoluteTrackers(List<VastAbsoluteProgressTracker> list) {
        Preconditions.checkNotNull(list, "absoluteTrackers cannot be null");
        this.mAbsoluteTrackers.addAll(list);
        Collections.sort(this.mAbsoluteTrackers);
    }

    public void addAvidJavascriptResources(Set<String> set) {
        if (set != null) {
            this.mAvidJavascriptResources.addAll(set);
        }
    }

    public void addClickTrackers(List<VastTracker> list) {
        Preconditions.checkNotNull(list, "clickTrackers cannot be null");
        this.mClickTrackers.addAll(list);
    }

    public void addCloseTrackers(List<VastTracker> list) {
        Preconditions.checkNotNull(list, "closeTrackers cannot be null");
        this.mCloseTrackers.addAll(list);
    }

    public void addCompleteTrackers(List<VastTracker> list) {
        Preconditions.checkNotNull(list, "completeTrackers cannot be null");
        this.mCompleteTrackers.addAll(list);
    }

    public void addErrorTrackers(List<VastTracker> list) {
        Preconditions.checkNotNull(list, "errorTrackers cannot be null");
        this.mErrorTrackers.addAll(list);
    }

    public void addExternalViewabilityTrackers(Map<String, String> map) {
        if (map != null) {
            this.mExternalViewabilityTrackers.putAll(map);
        }
    }

    public void addFractionalTrackers(List<VastFractionalProgressTracker> list) {
        Preconditions.checkNotNull(list, "fractionalTrackers cannot be null");
        this.mFractionalTrackers.addAll(list);
        Collections.sort(this.mFractionalTrackers);
    }

    public void addImpressionTrackers(List<VastTracker> list) {
        Preconditions.checkNotNull(list, "impressionTrackers cannot be null");
        this.mImpressionTrackers.addAll(list);
    }

    public void addMoatImpressionPixels(Set<String> set) {
        if (set != null) {
            this.mMoatImpressionPixels.addAll(set);
        }
    }

    public void addPauseTrackers(List<VastTracker> list) {
        Preconditions.checkNotNull(list, "pauseTrackers cannot be null");
        this.mPauseTrackers.addAll(list);
    }

    public void addResumeTrackers(List<VastTracker> list) {
        Preconditions.checkNotNull(list, "resumeTrackers cannot be null");
        this.mResumeTrackers.addAll(list);
    }

    public void addSkipTrackers(List<VastTracker> list) {
        Preconditions.checkNotNull(list, "skipTrackers cannot be null");
        this.mSkipTrackers.addAll(list);
    }

    public void addVideoTrackers(JSONObject jSONObject) {
        if (jSONObject != null) {
            JSONArray optJSONArray = jSONObject.optJSONArray(Constants.VIDEO_TRACKING_URLS_KEY);
            JSONArray optJSONArray2 = jSONObject.optJSONArray(Constants.VIDEO_TRACKING_EVENTS_KEY);
            if (!(optJSONArray == null || optJSONArray2 == null)) {
                for (int i = 0; i < optJSONArray2.length(); i++) {
                    String optString = optJSONArray2.optString(i);
                    List<String> hydrateUrls = hydrateUrls(optString, optJSONArray);
                    VideoTrackingEvent fromString = VideoTrackingEvent.Companion.fromString(optString);
                    if (!(optString == null || hydrateUrls == null)) {
                        switch (C8820b.f34284a[fromString.ordinal()]) {
                            case 1:
                                addStartTrackersForUrls(hydrateUrls);
                                continue;
                            case 2:
                                addFractionalTrackersForUrls(hydrateUrls, 0.25f);
                                continue;
                            case 3:
                                addFractionalTrackersForUrls(hydrateUrls, 0.5f);
                                continue;
                            case 4:
                                addFractionalTrackersForUrls(hydrateUrls, 0.75f);
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

    public ArrayList<VastAbsoluteProgressTracker> getAbsoluteTrackers() {
        return this.mAbsoluteTrackers;
    }

    public Set<String> getAvidJavascriptResources() {
        return this.mAvidJavascriptResources;
    }

    public String getClickThroughUrl() {
        return this.mClickThroughUrl;
    }

    public List<VastTracker> getClickTrackers() {
        return this.mClickTrackers;
    }

    public List<VastTracker> getCloseTrackers() {
        return this.mCloseTrackers;
    }

    public List<VastTracker> getCompleteTrackers() {
        return this.mCompleteTrackers;
    }

    public String getCustomCloseIconUrl() {
        return this.mCustomCloseIconUrl;
    }

    public String getCustomCtaText() {
        return this.mCustomCtaText;
    }

    public String getCustomSkipText() {
        return this.mCustomSkipText;
    }

    public String getDiskMediaFileUrl() {
        return this.mDiskMediaFileUrl;
    }

    public String getDspCreativeId() {
        return this.mDspCreativeId;
    }

    public List<VastTracker> getErrorTrackers() {
        return this.mErrorTrackers;
    }

    public Map<String, String> getExternalViewabilityTrackers() {
        return this.mExternalViewabilityTrackers;
    }

    public ArrayList<VastFractionalProgressTracker> getFractionalTrackers() {
        return this.mFractionalTrackers;
    }

    public List<VastTracker> getImpressionTrackers() {
        return this.mImpressionTrackers;
    }

    public Set<String> getMoatImpressionPixels() {
        return this.mMoatImpressionPixels;
    }

    public String getNetworkMediaFileUrl() {
        return this.mNetworkMediaFileUrl;
    }

    public List<VastTracker> getPauseTrackers() {
        return this.mPauseTrackers;
    }

    public String getPrivacyInformationIconClickthroughUrl() {
        return this.mPrivacyInformationIconClickthroughUrl;
    }

    public String getPrivacyInformationIconImageUrl() {
        return this.mPrivacyInformationIconImageUrl;
    }

    public int getRemainingProgressTrackerCount() {
        return getUntriggeredTrackersBefore(MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT, MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT).size();
    }

    public List<VastTracker> getResumeTrackers() {
        return this.mResumeTrackers;
    }

    public Integer getSkipOffsetMillis(int i) {
        Integer num;
        String str = this.mSkipOffset;
        if (str == null) {
            return null;
        }
        if (VastAbsoluteProgressTracker.isAbsoluteTracker(str)) {
            num = VastAbsoluteProgressTracker.parseAbsoluteOffset(this.mSkipOffset);
        } else if (VastFractionalProgressTrackerTwo.Companion.isPercentageTracker(this.mSkipOffset)) {
            num = Integer.valueOf(Math.round(i * (Float.parseFloat(this.mSkipOffset.replace("%", "")) / 100.0f)));
        } else {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Invalid VAST skipoffset format: %s", this.mSkipOffset));
            return null;
        }
        if (num != null) {
            return num.intValue() < i ? num : Integer.valueOf(i);
        }
        return null;
    }

    public String getSkipOffsetString() {
        return this.mSkipOffset;
    }

    public List<VastTracker> getSkipTrackers() {
        return this.mSkipTrackers;
    }

    public List<VastTracker> getUntriggeredTrackersBefore(int i, int i2) {
        if (!Preconditions.NoThrow.checkArgument(i2 > 0) || i < 0) {
            return Collections.emptyList();
        }
        float f = i / i2;
        ArrayList arrayList = new ArrayList();
        VastAbsoluteProgressTracker vastAbsoluteProgressTracker = new VastAbsoluteProgressTracker("", i);
        int size = this.mAbsoluteTrackers.size();
        for (int i3 = 0; i3 < size; i3++) {
            VastAbsoluteProgressTracker vastAbsoluteProgressTracker2 = this.mAbsoluteTrackers.get(i3);
            if (vastAbsoluteProgressTracker2.compareTo(vastAbsoluteProgressTracker) > 0) {
                break;
            }
            if (!vastAbsoluteProgressTracker2.isTracked()) {
                arrayList.add(vastAbsoluteProgressTracker2);
            }
        }
        VastFractionalProgressTracker vastFractionalProgressTracker = new VastFractionalProgressTracker("", f);
        int size2 = this.mFractionalTrackers.size();
        for (int i4 = 0; i4 < size2; i4++) {
            VastFractionalProgressTracker vastFractionalProgressTracker2 = this.mFractionalTrackers.get(i4);
            if (vastFractionalProgressTracker2.compareTo(vastFractionalProgressTracker) > 0) {
                break;
            }
            if (!vastFractionalProgressTracker2.isTracked()) {
                arrayList.add(vastFractionalProgressTracker2);
            }
        }
        return arrayList;
    }

    public VastCompanionAdConfig getVastCompanionAd(int i) {
        return i != 1 ? i != 2 ? this.mLandscapeVastCompanionAdConfig : this.mLandscapeVastCompanionAdConfig : this.mPortraitVastCompanionAdConfig;
    }

    public VastIconConfig getVastIconConfig() {
        return this.mVastIconConfig;
    }

    public VideoViewabilityTracker getVideoViewabilityTracker() {
        return this.mVideoViewabilityTracker;
    }

    public void handleClickForResult(Activity activity, int i, int i2) {
        handleClick(activity, i, Integer.valueOf(i2));
    }

    public void handleClickWithoutResult(Context context, int i) {
        handleClick(context.getApplicationContext(), i, null);
    }

    public void handleClose(Context context, int i) {
        Preconditions.checkNotNull(context, "context cannot be null");
        TrackingRequest.makeVastTrackingHttpRequest(this.mCloseTrackers, null, Integer.valueOf(i), this.mNetworkMediaFileUrl, context);
    }

    public void handleComplete(Context context, int i) {
        Preconditions.checkNotNull(context, "context cannot be null");
        TrackingRequest.makeVastTrackingHttpRequest(this.mCompleteTrackers, null, Integer.valueOf(i), this.mNetworkMediaFileUrl, context);
    }

    public void handleError(Context context, VastErrorCode vastErrorCode, int i) {
        Preconditions.checkNotNull(context, "context cannot be null");
        TrackingRequest.makeVastTrackingHttpRequest(this.mErrorTrackers, vastErrorCode, Integer.valueOf(i), this.mNetworkMediaFileUrl, context);
    }

    public void handleImpression(Context context, int i) {
        Preconditions.checkNotNull(context, "context cannot be null");
        TrackingRequest.makeVastTrackingHttpRequest(this.mImpressionTrackers, null, Integer.valueOf(i), this.mNetworkMediaFileUrl, context);
    }

    public void handlePause(Context context, int i) {
        Preconditions.checkNotNull(context, "context cannot be null");
        TrackingRequest.makeVastTrackingHttpRequest(this.mPauseTrackers, null, Integer.valueOf(i), this.mNetworkMediaFileUrl, context);
    }

    public void handleResume(Context context, int i) {
        Preconditions.checkNotNull(context, "context cannot be null");
        TrackingRequest.makeVastTrackingHttpRequest(this.mResumeTrackers, null, Integer.valueOf(i), this.mNetworkMediaFileUrl, context);
    }

    public void handleSkip(Context context, int i) {
        Preconditions.checkNotNull(context, "context cannot be null");
        TrackingRequest.makeVastTrackingHttpRequest(this.mSkipTrackers, null, Integer.valueOf(i), this.mNetworkMediaFileUrl, context);
    }

    public boolean hasCompanionAd() {
        return (this.mLandscapeVastCompanionAdConfig == null || this.mPortraitVastCompanionAdConfig == null) ? false : true;
    }

    public boolean isRewardedVideo() {
        return this.mIsRewardedVideo;
    }

    public void setClickThroughUrl(String str) {
        this.mClickThroughUrl = str;
    }

    public void setCustomCloseIconUrl(String str) {
        if (str != null) {
            this.mCustomCloseIconUrl = str;
        }
    }

    public void setCustomCtaText(String str) {
        if (str != null) {
            this.mCustomCtaText = str;
        }
    }

    public void setCustomSkipText(String str) {
        if (str != null) {
            this.mCustomSkipText = str;
        }
    }

    public void setDiskMediaFileUrl(String str) {
        this.mDiskMediaFileUrl = str;
    }

    public void setDspCreativeId(String str) {
        this.mDspCreativeId = str;
    }

    public void setIsRewardedVideo(boolean z) {
        this.mIsRewardedVideo = z;
    }

    public void setNetworkMediaFileUrl(String str) {
        this.mNetworkMediaFileUrl = str;
    }

    public void setPrivacyInformationIconClickthroughUrl(String str) {
        this.mPrivacyInformationIconClickthroughUrl = str;
    }

    public void setPrivacyInformationIconImageUrl(String str) {
        this.mPrivacyInformationIconImageUrl = str;
    }

    public void setSkipOffset(String str) {
        if (str != null) {
            this.mSkipOffset = str;
        }
    }

    public void setVastCompanionAd(VastCompanionAdConfig vastCompanionAdConfig, VastCompanionAdConfig vastCompanionAdConfig2) {
        this.mLandscapeVastCompanionAdConfig = vastCompanionAdConfig;
        this.mPortraitVastCompanionAdConfig = vastCompanionAdConfig2;
    }

    public void setVastIconConfig(VastIconConfig vastIconConfig) {
        this.mVastIconConfig = vastIconConfig;
    }

    public void setVideoViewabilityTracker(VideoViewabilityTracker videoViewabilityTracker) {
        if (videoViewabilityTracker != null) {
            this.mVideoViewabilityTracker = videoViewabilityTracker;
        }
    }
}
