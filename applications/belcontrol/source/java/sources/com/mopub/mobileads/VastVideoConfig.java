package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mopub.common.Constants;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.ViewabilityVendor;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.mobileads.VastAbsoluteProgressTracker;
import com.mopub.mobileads.VastFractionalProgressTracker;
import com.mopub.mobileads.VastTracker;
import com.mopub.network.TrackingRequest;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
@Mockable
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoConfig.class */
public class VastVideoConfig implements Serializable {
    public static final Companion Companion = new Companion(null);
    private static final long serialVersionUID = 3;
    @SerializedName(Constants.VAST_DSP_CREATIVE_ID)
    @Expose

    /* renamed from: A */
    public String f4873A;
    @SerializedName(Constants.VAST_PRIVACY_ICON_IMAGE_URL)
    @Expose

    /* renamed from: B */
    public String f4874B;
    @SerializedName(Constants.VAST_PRIVACY_ICON_CLICK_URL)
    @Expose

    /* renamed from: C */
    public String f4875C;
    @SerializedName(Constants.VAST_TRACKERS_IMPRESSION)
    @Expose

    /* renamed from: a */
    public final List<VastTracker> f4876a = new ArrayList();
    @SerializedName(Constants.VAST_TRACKERS_PAUSE)
    @Expose

    /* renamed from: b */
    public final List<VastTracker> f4877b = new ArrayList();
    @SerializedName(Constants.VAST_TRACKERS_RESUME)
    @Expose

    /* renamed from: c */
    public final List<VastTracker> f4878c = new ArrayList();
    @SerializedName(Constants.VAST_TRACKERS_COMPLETE)
    @Expose

    /* renamed from: d */
    public final List<VastTracker> f4879d = new ArrayList();
    @SerializedName(Constants.VAST_TRACKERS_CLOSE)
    @Expose

    /* renamed from: f */
    public final List<VastTracker> f4880f = new ArrayList();
    @SerializedName(Constants.VAST_TRACKERS_SKIP)
    @Expose

    /* renamed from: g */
    public final List<VastTracker> f4881g = new ArrayList();
    @SerializedName(Constants.VAST_TRACKERS_CLICK)
    @Expose

    /* renamed from: h */
    public final List<VastTracker> f4882h = new ArrayList();
    @SerializedName(Constants.VAST_TRACKERS_ERROR)
    @Expose

    /* renamed from: j */
    public final List<VastTracker> f4883j = new ArrayList();
    @SerializedName(Constants.VAST_TRACKERS_FRACTIONAL)
    @Expose

    /* renamed from: k */
    public final List<VastFractionalProgressTracker> f4884k = new ArrayList();
    @SerializedName(Constants.VAST_TRACKERS_ABSOLUTE)
    @Expose

    /* renamed from: l */
    public final List<VastAbsoluteProgressTracker> f4885l = new ArrayList();
    @SerializedName(Constants.VIEWABILITY_VERIFICATION_RESOURCES)
    @Expose

    /* renamed from: m */
    public final Set<ViewabilityVendor> f4886m = new LinkedHashSet();
    @SerializedName(Constants.VAST_URL_CLICKTHROUGH)

    /* renamed from: n */
    public String f4887n;
    @SerializedName(Constants.VAST_URL_NETWORK_MEDIA_FILE)
    @Expose

    /* renamed from: o */
    public String f4888o;
    @SerializedName(Constants.VAST_URL_DISK_MEDIA_FILE)
    @Expose

    /* renamed from: p */
    public String f4889p;
    @SerializedName(Constants.VAST_SKIP_OFFSET)
    @Expose

    /* renamed from: q */
    public String f4890q;
    @SerializedName(Constants.VAST_COMPANION_AD_LANDSCAPE)
    @Expose

    /* renamed from: r */
    public VastCompanionAdConfig f4891r;
    @SerializedName(Constants.VAST_COMPANION_AD_PORTRAIT)
    @Expose

    /* renamed from: s */
    public VastCompanionAdConfig f4892s;
    @SerializedName(Constants.VAST_ICON_CONFIG)
    @Expose

    /* renamed from: t */
    public VastIconConfig f4893t;
    @SerializedName(Constants.VAST_IS_REWARDED)
    @Expose

    /* renamed from: u */
    public boolean f4894u;
    @SerializedName(Constants.VAST_ENABLE_CLICK_EXP)
    @Expose

    /* renamed from: v */
    public boolean f4895v;
    @SerializedName(Constants.VAST_CUSTOM_TEXT_CTA)
    @Expose

    /* renamed from: w */
    public String f4896w;
    @SerializedName(Constants.VAST_CUSTOM_TEXT_SKIP)
    @Expose

    /* renamed from: x */
    public String f4897x;
    @SerializedName(Constants.VAST_CUSTOM_CLOSE_ICON_URL)
    @Expose

    /* renamed from: y */
    public String f4898y;
    @SerializedName(Constants.VAST_VIDEO_VIEWABILITY_TRACKER)
    @Expose

    /* renamed from: z */
    public VideoViewabilityTracker f4899z;

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoConfig$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(ok1 ok1Var) {
            this();
        }

        public final VastVideoConfig fromVastVideoConfigString(String str) {
            qk1.m744c(str, "input");
            Object fromJson = new GsonBuilder().registerTypeAdapterFactory(new C1108a()).create().fromJson(str, VastVideoConfig.class);
            qk1.m745b(fromJson, "gson.fromJson(input, VastVideoConfig::class.java)");
            return (VastVideoConfig) fromJson;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoConfig$VastVideoConfigTypeAdapter.class */
    public static final class VastVideoConfigTypeAdapter extends TypeAdapter<Class<?>> {
        public Class<?> read(JsonReader jsonReader) {
            Class<?> cls;
            if (jsonReader == null) {
                cls = null;
            } else if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                cls = null;
            } else {
                try {
                    cls = Class.forName(jsonReader.nextString());
                } catch (ClassNotFoundException e) {
                    throw new IOException(e);
                }
            }
            return cls;
        }

        public void write(JsonWriter jsonWriter, Class<?> cls) {
            if (jsonWriter == null) {
                return;
            }
            if (cls == null) {
                jsonWriter.nullValue();
            } else {
                jsonWriter.value(cls.getName());
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoConfig$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[VideoTrackingEvent.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[VideoTrackingEvent.START.ordinal()] = 1;
            iArr[VideoTrackingEvent.FIRST_QUARTILE.ordinal()] = 2;
            iArr[VideoTrackingEvent.MIDPOINT.ordinal()] = 3;
            iArr[VideoTrackingEvent.THIRD_QUARTILE.ordinal()] = 4;
            iArr[VideoTrackingEvent.COMPLETE.ordinal()] = 5;
            iArr[VideoTrackingEvent.COMPANION_AD_VIEW.ordinal()] = 6;
            iArr[VideoTrackingEvent.COMPANION_AD_CLICK.ordinal()] = 7;
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoConfig$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoConfig$a.class */
    public static final class C1108a implements TypeAdapterFactory {
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            return (typeToken == null || !Class.class.isAssignableFrom(typeToken.getRawType())) ? null : new VastVideoConfigTypeAdapter();
        }
    }

    /* renamed from: a */
    public final void m3557a(List<String> list) {
        List<VastTracker> m3552f = m3552f(list);
        VastCompanionAdConfig vastCompanionAdConfig = this.f4891r;
        if (vastCompanionAdConfig != null) {
            vastCompanionAdConfig.addClickTrackers(m3552f);
        }
        VastCompanionAdConfig vastCompanionAdConfig2 = this.f4892s;
        if (vastCompanionAdConfig2 != null) {
            vastCompanionAdConfig2.addClickTrackers(m3552f);
        }
    }

    public void addAbsoluteTrackers(List<? extends VastAbsoluteProgressTracker> list) {
        qk1.m744c(list, "absoluteTrackers");
        this.f4885l.addAll(list);
        yj1.m75f(this.f4885l);
    }

    public void addClickTrackers(List<? extends VastTracker> list) {
        qk1.m744c(list, "clickTrackers");
        this.f4882h.addAll(list);
    }

    public void addCloseTrackers(List<? extends VastTracker> list) {
        qk1.m744c(list, "closeTrackers");
        this.f4880f.addAll(list);
    }

    public void addCompleteTrackers(List<? extends VastTracker> list) {
        qk1.m744c(list, "completeTrackers");
        this.f4879d.addAll(list);
    }

    public void addErrorTrackers(List<? extends VastTracker> list) {
        qk1.m744c(list, "errorTrackers");
        this.f4883j.addAll(list);
    }

    public void addFractionalTrackers(List<VastFractionalProgressTracker> list) {
        qk1.m744c(list, "fractionalTrackers");
        this.f4884k.addAll(list);
        yj1.m75f(this.f4884k);
    }

    public void addImpressionTrackers(List<? extends VastTracker> list) {
        qk1.m744c(list, "impressionTrackers");
        this.f4876a.addAll(list);
    }

    public void addPauseTrackers(List<? extends VastTracker> list) {
        qk1.m744c(list, "pauseTrackers");
        this.f4877b.addAll(list);
    }

    public void addResumeTrackers(List<? extends VastTracker> list) {
        qk1.m744c(list, "resumeTrackers");
        this.f4878c.addAll(list);
    }

    public void addSkipTrackers(List<? extends VastTracker> list) {
        qk1.m744c(list, "skipTrackers");
        this.f4881g.addAll(list);
    }

    public void addVideoTrackers(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        JSONArray optJSONArray = jSONObject.optJSONArray(Constants.VIDEO_TRACKING_URLS_KEY);
        JSONArray optJSONArray2 = jSONObject.optJSONArray(Constants.VIDEO_TRACKING_EVENTS_KEY);
        if (optJSONArray == null || optJSONArray2 == null) {
            return;
        }
        int length = optJSONArray2.length();
        for (int i = 0; i < length; i++) {
            String optString = optJSONArray2.optString(i);
            List<String> m3550h = m3550h(optString, optJSONArray);
            VideoTrackingEvent fromString = VideoTrackingEvent.Companion.fromString(optString);
            if (optString != null && m3550h != null) {
                switch (WhenMappings.$EnumSwitchMapping$0[fromString.ordinal()]) {
                    case 1:
                        m3553e(m3550h);
                        continue;
                    case 2:
                    case 3:
                    case 4:
                        m3554d(m3550h, fromString.toFloat());
                        continue;
                    case 5:
                        m3555c(m3550h);
                        continue;
                    case 6:
                        m3556b(m3550h);
                        continue;
                    case 7:
                        m3557a(m3550h);
                        continue;
                    default:
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Encountered unknown video tracking event: " + optString);
                        continue;
                }
            }
        }
    }

    public void addViewabilityVendors(Set<? extends ViewabilityVendor> set) {
        if (set != null) {
            this.f4886m.addAll(set);
        }
    }

    /* renamed from: b */
    public final void m3556b(List<String> list) {
        List<VastTracker> m3552f = m3552f(list);
        VastCompanionAdConfig vastCompanionAdConfig = this.f4891r;
        if (vastCompanionAdConfig != null) {
            vastCompanionAdConfig.addCreativeViewTrackers(m3552f);
        }
        VastCompanionAdConfig vastCompanionAdConfig2 = this.f4892s;
        if (vastCompanionAdConfig2 != null) {
            vastCompanionAdConfig2.addCreativeViewTrackers(m3552f);
        }
    }

    /* renamed from: c */
    public final void m3555c(List<String> list) {
        addCompleteTrackers(m3552f(list));
    }

    /* renamed from: d */
    public final void m3554d(List<String> list, float f) {
        ArrayList arrayList = new ArrayList(vj1.m298e(list, 10));
        for (String str : list) {
            arrayList.add(new VastFractionalProgressTracker.Builder(str, f).build());
        }
        addFractionalTrackers(arrayList);
    }

    /* renamed from: e */
    public final void m3553e(List<String> list) {
        ArrayList arrayList = new ArrayList(vj1.m298e(list, 10));
        for (String str : list) {
            arrayList.add(new VastAbsoluteProgressTracker.Builder(str, 0).build());
        }
        addAbsoluteTrackers(arrayList);
    }

    /* renamed from: f */
    public final List<VastTracker> m3552f(List<String> list) {
        ArrayList arrayList = new ArrayList(vj1.m298e(list, 10));
        for (String str : list) {
            arrayList.add(new VastTracker.Builder(str).build());
        }
        return arrayList;
    }

    /* renamed from: g */
    public final void m3551g(final Context context, int i, final Integer num) {
        TrackingRequest.makeVastTrackingHttpRequest(this.f4882h, null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
        String clickThroughUrl = getClickThroughUrl();
        if (clickThroughUrl == null || clickThroughUrl.length() == 0) {
            return;
        }
        UrlHandler build = new UrlHandler.Builder().withDspCreativeId(getDspCreativeId()).withoutMoPubBrowser().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.mobileads.VastVideoConfig$handleClick$urlHandler$1
            @Override // com.mopub.common.UrlHandler.ResultActions
            public void urlHandlingFailed(String str, UrlAction urlAction) {
                qk1.m744c(str, ImagesContract.URL);
                qk1.m744c(urlAction, "lastFailedUrlAction");
            }

            @Override // com.mopub.common.UrlHandler.ResultActions
            public void urlHandlingSucceeded(String str, UrlAction urlAction) {
                qk1.m744c(str, ImagesContract.URL);
                qk1.m744c(urlAction, "urlAction");
                if (urlAction == UrlAction.OPEN_IN_APP_BROWSER) {
                    Bundle bundle = new Bundle();
                    bundle.putString(MoPubBrowser.DESTINATION_URL_KEY, str);
                    bundle.putString(MoPubBrowser.DSP_CREATIVE_ID, VastVideoConfig.this.getDspCreativeId());
                    Intent startActivityIntent = Intents.getStartActivityIntent(context, MoPubBrowser.class, bundle);
                    try {
                        Context context2 = context;
                        if (!(context2 instanceof Activity)) {
                            Intents.startActivity(context2, startActivityIntent);
                            return;
                        }
                        Integer num2 = num;
                        if (num2 == null) {
                            throw new IllegalArgumentException("Activity context requires a requestCode".toString());
                        }
                        ((Activity) context2).startActivityForResult(startActivityIntent, num2.intValue());
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
        if (clickThroughUrl2 == null) {
            return;
        }
        build.handleUrl(context, clickThroughUrl2);
    }

    public ArrayList<VastAbsoluteProgressTracker> getAbsoluteTrackers() {
        return new ArrayList<>(this.f4885l);
    }

    public String getClickThroughUrl() {
        return this.f4887n;
    }

    public ArrayList<VastTracker> getClickTrackers() {
        return new ArrayList<>(this.f4882h);
    }

    public ArrayList<VastTracker> getCloseTrackers() {
        return new ArrayList<>(this.f4880f);
    }

    public ArrayList<VastTracker> getCompleteTrackers() {
        return new ArrayList<>(this.f4879d);
    }

    public String getCustomCloseIconUrl() {
        return this.f4898y;
    }

    public String getCustomCtaText() {
        return this.f4896w;
    }

    public String getCustomSkipText() {
        return this.f4897x;
    }

    public String getDiskMediaFileUrl() {
        return this.f4889p;
    }

    public String getDspCreativeId() {
        return this.f4873A;
    }

    public boolean getEnableClickExperiment() {
        return this.f4895v;
    }

    public ArrayList<VastTracker> getErrorTrackers() {
        return new ArrayList<>(this.f4883j);
    }

    public ArrayList<VastFractionalProgressTracker> getFractionalTrackers() {
        return new ArrayList<>(this.f4884k);
    }

    public ArrayList<VastTracker> getImpressionTrackers() {
        return new ArrayList<>(this.f4876a);
    }

    public String getNetworkMediaFileUrl() {
        return this.f4888o;
    }

    public ArrayList<VastTracker> getPauseTrackers() {
        return new ArrayList<>(this.f4877b);
    }

    public String getPrivacyInformationIconClickthroughUrl() {
        return this.f4875C;
    }

    public String getPrivacyInformationIconImageUrl() {
        return this.f4874B;
    }

    public int getRemainingProgressTrackerCount() {
        return getUntriggeredTrackersBefore(Integer.MAX_VALUE, Integer.MAX_VALUE).size();
    }

    public ArrayList<VastTracker> getResumeTrackers() {
        return new ArrayList<>(this.f4878c);
    }

    public String getSkipOffset() {
        return this.f4890q;
    }

    public Integer getSkipOffsetMillis(int i) {
        Integer num;
        String skipOffset = getSkipOffset();
        Integer num2 = null;
        if (skipOffset != null) {
            VastAbsoluteProgressTracker.Companion companion = VastAbsoluteProgressTracker.Companion;
            if (companion.isAbsoluteTracker(skipOffset)) {
                num = companion.parseAbsoluteOffset(skipOffset);
            } else {
                VastFractionalProgressTracker.Companion companion2 = VastFractionalProgressTracker.Companion;
                if (companion2.isPercentageTracker(skipOffset)) {
                    num = companion2.parsePercentageOffset(skipOffset, i);
                } else {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Invalid VAST skipoffset format: " + skipOffset);
                    num = null;
                }
            }
            num2 = null;
            if (num != null) {
                num2 = Integer.valueOf(Math.min(num.intValue(), i));
            }
        }
        return num2;
    }

    public ArrayList<VastTracker> getSkipTrackers() {
        return new ArrayList<>(this.f4881g);
    }

    public List<VastTracker> getUntriggeredTrackersBefore(int i, int i2) {
        if (i2 <= 0 || i < 0) {
            return uj1.m395b();
        }
        ArrayList arrayList = new ArrayList();
        VastAbsoluteProgressTracker build = new VastAbsoluteProgressTracker.Builder("", i).build();
        for (VastAbsoluteProgressTracker vastAbsoluteProgressTracker : this.f4885l) {
            if (vastAbsoluteProgressTracker.compareTo(build) <= 0 && !vastAbsoluteProgressTracker.isTracked()) {
                arrayList.add(vastAbsoluteProgressTracker);
            }
        }
        VastFractionalProgressTracker build2 = new VastFractionalProgressTracker.Builder("", i / i2).build();
        for (VastFractionalProgressTracker vastFractionalProgressTracker : this.f4884k) {
            if (vastFractionalProgressTracker.compareTo(build2) <= 0 && !vastFractionalProgressTracker.isTracked()) {
                arrayList.add(vastFractionalProgressTracker);
            }
        }
        return arrayList;
    }

    public VastCompanionAdConfig getVastCompanionAd(int i) {
        return i != 1 ? this.f4891r : this.f4892s;
    }

    public VastIconConfig getVastIconConfig() {
        return this.f4893t;
    }

    public VideoViewabilityTracker getVideoViewabilityTracker() {
        return this.f4899z;
    }

    public Set<ViewabilityVendor> getViewabilityVendors() {
        return new HashSet(this.f4886m);
    }

    /* renamed from: h */
    public final List<String> m3550h(String str, JSONArray jSONArray) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            String optString = jSONArray.optString(i);
            if (optString != null) {
                arrayList.add(sl1.m556e(optString, Constants.VIDEO_TRACKING_URL_MACRO, str, false, 4, null));
            }
        }
        return arrayList;
    }

    public void handleClickForResult(Activity activity, int i, int i2) {
        qk1.m744c(activity, "activity");
        m3551g(activity, i, Integer.valueOf(i2));
    }

    public void handleClickWithoutResult(Context context, int i) {
        qk1.m744c(context, "context");
        Context applicationContext = context.getApplicationContext();
        qk1.m745b(applicationContext, "context.applicationContext");
        m3551g(applicationContext, i, null);
    }

    public void handleClose(Context context, int i) {
        qk1.m744c(context, "context");
        TrackingRequest.makeVastTrackingHttpRequest(this.f4880f, null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handleComplete(Context context, int i) {
        qk1.m744c(context, "context");
        TrackingRequest.makeVastTrackingHttpRequest(this.f4879d, null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handleError(Context context, VastErrorCode vastErrorCode, int i) {
        qk1.m744c(context, "context");
        TrackingRequest.makeVastTrackingHttpRequest(this.f4883j, vastErrorCode, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handleImpression(Context context, int i) {
        qk1.m744c(context, "context");
        TrackingRequest.makeVastTrackingHttpRequest(this.f4876a, null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handlePause(Context context, int i) {
        qk1.m744c(context, "context");
        TrackingRequest.makeVastTrackingHttpRequest(this.f4877b, null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handleResume(Context context, int i) {
        qk1.m744c(context, "context");
        TrackingRequest.makeVastTrackingHttpRequest(this.f4878c, null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handleSkip(Context context, int i) {
        qk1.m744c(context, "context");
        TrackingRequest.makeVastTrackingHttpRequest(this.f4881g, null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public boolean hasCompanionAd() {
        return (this.f4891r == null || this.f4892s == null) ? false : true;
    }

    public boolean isRewarded() {
        return this.f4894u;
    }

    public void setClickThroughUrl(String str) {
        this.f4887n = str;
    }

    public void setCustomCloseIconUrl(String str) {
        if (str == null) {
            str = this.f4898y;
        }
        this.f4898y = str;
    }

    public void setCustomCtaText(String str) {
        if (str == null) {
            str = this.f4896w;
        }
        this.f4896w = str;
    }

    public void setCustomSkipText(String str) {
        if (str == null) {
            str = this.f4897x;
        }
        this.f4897x = str;
    }

    public void setDiskMediaFileUrl(String str) {
        this.f4889p = str;
    }

    public void setDspCreativeId(String str) {
        if (str == null) {
            str = this.f4873A;
        }
        this.f4873A = str;
    }

    public void setEnableClickExperiment(boolean z) {
        this.f4895v = z;
    }

    public void setNetworkMediaFileUrl(String str) {
        this.f4888o = str;
    }

    public void setPrivacyInformationIconClickthroughUrl(String str) {
        this.f4875C = str;
    }

    public void setPrivacyInformationIconImageUrl(String str) {
        if (str == null) {
            str = this.f4874B;
        }
        this.f4874B = str;
    }

    public void setRewarded(boolean z) {
        this.f4894u = z;
    }

    public void setSkipOffset(String str) {
        this.f4890q = str;
    }

    public void setVastCompanionAd(VastCompanionAdConfig vastCompanionAdConfig, VastCompanionAdConfig vastCompanionAdConfig2) {
        this.f4891r = vastCompanionAdConfig;
        this.f4892s = vastCompanionAdConfig2;
    }

    public void setVastIconConfig(VastIconConfig vastIconConfig) {
        this.f4893t = vastIconConfig;
    }

    public void setVideoViewabilityTracker(VideoViewabilityTracker videoViewabilityTracker) {
        if (videoViewabilityTracker == null) {
            videoViewabilityTracker = this.f4899z;
        }
        this.f4899z = videoViewabilityTracker;
    }

    public String toJsonString() {
        String json = new GsonBuilder().registerTypeAdapterFactory(new C1108a()).create().toJson(this);
        qk1.m745b(json, "gson.toJson(this@VastVideoConfig)");
        return json;
    }
}
