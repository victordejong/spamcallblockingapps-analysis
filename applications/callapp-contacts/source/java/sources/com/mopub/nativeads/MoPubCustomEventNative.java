package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.mopub.common.DataKeys;
import com.mopub.common.ExternalViewabilitySessionManager;
import com.mopub.common.MoPub;
import com.mopub.common.ViewabilityVendor;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Numbers;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.NativeImageHelper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventNative.class */
public class MoPubCustomEventNative extends CustomEventNative {
    public static final String ADAPTER_NAME = "MoPubCustomEventNative";

    /* renamed from: a */
    private C16940a f59979a;

    /* renamed from: com.mopub.nativeads.MoPubCustomEventNative$1 */
    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventNative$1.class */
    public static final /* synthetic */ class C169391 {

        /* renamed from: a */
        static final /* synthetic */ int[] f59980a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0095 -> B:49:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0099 -> B:43:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009d -> B:61:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a1 -> B:53:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a5 -> B:47:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a9 -> B:41:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ad -> B:59:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b1 -> B:51:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b5 -> B:45:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b9 -> B:39:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00bd -> B:57:0x0088). Please submit an issue!!! */
        static {
            int[] iArr = new int[C16940a.EnumC16942a.values().length];
            f59980a = iArr;
            try {
                iArr[C16940a.EnumC16942a.MAIN_IMAGE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f59980a[C16940a.EnumC16942a.ICON_IMAGE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f59980a[C16940a.EnumC16942a.IMPRESSION_TRACKER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f59980a[C16940a.EnumC16942a.CLICK_DESTINATION.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f59980a[C16940a.EnumC16942a.CLICK_TRACKER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f59980a[C16940a.EnumC16942a.CALL_TO_ACTION.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f59980a[C16940a.EnumC16942a.TITLE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f59980a[C16940a.EnumC16942a.TEXT.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f59980a[C16940a.EnumC16942a.STAR_RATING.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f59980a[C16940a.EnumC16942a.PRIVACY_INFORMATION_ICON_IMAGE_URL.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f59980a[C16940a.EnumC16942a.PRIVACY_INFORMATION_ICON_CLICKTHROUGH_URL.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f59980a[C16940a.EnumC16942a.SPONSORED.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mopub.nativeads.MoPubCustomEventNative$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventNative$a.class */
    public static final class C16940a extends StaticNativeAd {

        /* renamed from: b */
        private final Context f59982b;

        /* renamed from: c */
        private final CustomEventNative.CustomEventNativeListener f59983c;

        /* renamed from: d */
        private final JSONObject f59984d;

        /* renamed from: e */
        private final ImpressionTracker f59985e;

        /* renamed from: f */
        private final NativeClickHandler f59986f;

        /* renamed from: g */
        private ExternalViewabilitySessionManager f59987g;

        /* renamed from: i */
        private final String f59989i;

        /* renamed from: a */
        private AtomicBoolean f59981a = new AtomicBoolean(false);

        /* renamed from: h */
        private final Set<ViewabilityVendor> f59988h = new HashSet();

        /* renamed from: com.mopub.nativeads.MoPubCustomEventNative$a$a */
        /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventNative$a$a.class */
        public enum EnumC16942a {
            IMPRESSION_TRACKER("imptracker", true),
            CLICK_TRACKER("clktracker", true),
            TITLE("title", false),
            TEXT("text", false),
            MAIN_IMAGE("mainimage", false),
            ICON_IMAGE("iconimage", false),
            CLICK_DESTINATION("clk", false),
            FALLBACK("fallback", false),
            CALL_TO_ACTION("ctatext", false),
            STAR_RATING("starrating", false),
            PRIVACY_INFORMATION_ICON_IMAGE_URL("privacyicon", false),
            PRIVACY_INFORMATION_ICON_CLICKTHROUGH_URL("privacyclkurl", false),
            SPONSORED("sponsored", false);
            
            static final Set<String> requiredKeys = new HashSet();
            final String name;
            final boolean required;

            static {
                EnumC16942a[] values;
                for (EnumC16942a enumC16942a : values()) {
                    if (enumC16942a.required) {
                        requiredKeys.add(enumC16942a.name);
                    }
                }
            }

            EnumC16942a(String str, boolean z) {
                this.name = str;
                this.required = z;
            }

            static EnumC16942a from(String str) {
                EnumC16942a[] values;
                for (EnumC16942a enumC16942a : values()) {
                    if (enumC16942a.name.equals(str)) {
                        return enumC16942a;
                    }
                }
                return null;
            }
        }

        C16940a(Context context, JSONObject jSONObject, ImpressionTracker impressionTracker, NativeClickHandler nativeClickHandler, CustomEventNative.CustomEventNativeListener customEventNativeListener, String str) {
            this.f59984d = jSONObject;
            this.f59982b = context.getApplicationContext();
            this.f59985e = impressionTracker;
            this.f59986f = nativeClickHandler;
            this.f59983c = customEventNativeListener;
            this.f59989i = str;
        }

        /* renamed from: a */
        static /* synthetic */ void m6185a(C16940a c16940a, Set set) {
            c16940a.f59988h.addAll(set);
        }

        /* renamed from: b */
        private List<String> m6184b() {
            ArrayList arrayList = new ArrayList(getExtras().size());
            for (Map.Entry<String, Object> entry : getExtras().entrySet()) {
                String key = entry.getKey();
                if ((key != null && key.toLowerCase(Locale.US).endsWith("image")) && (entry.getValue() instanceof String)) {
                    arrayList.add((String) entry.getValue());
                }
            }
            return arrayList;
        }

        /* renamed from: a */
        final void m6187a() throws IllegalArgumentException {
            JSONObject jSONObject = this.f59984d;
            HashSet hashSet = new HashSet();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                hashSet.add(keys.next());
            }
            if (hashSet.containsAll(EnumC16942a.requiredKeys)) {
                Iterator<String> keys2 = this.f59984d.keys();
                while (keys2.hasNext()) {
                    String next = keys2.next();
                    EnumC16942a from = EnumC16942a.from(next);
                    if (from != null) {
                        try {
                            Object opt = this.f59984d.opt(next);
                            try {
                                switch (C169391.f59980a[from.ordinal()]) {
                                    case 1:
                                        setMainImageUrl((String) opt);
                                        break;
                                    case 2:
                                        setIconImageUrl((String) opt);
                                        break;
                                    case 3:
                                        addImpressionTrackers(opt);
                                        break;
                                    case 4:
                                        setClickDestinationUrl((String) opt);
                                        break;
                                    case 5:
                                        if (!(opt instanceof JSONArray)) {
                                            addClickTracker((String) opt);
                                            break;
                                        } else {
                                            addClickTrackers(opt);
                                            break;
                                        }
                                    case 6:
                                        setCallToAction((String) opt);
                                        break;
                                    case 7:
                                        setTitle((String) opt);
                                        break;
                                    case 8:
                                        setText((String) opt);
                                        break;
                                    case 9:
                                        setStarRating(Numbers.parseDouble(opt));
                                        break;
                                    case 10:
                                        setPrivacyInformationIconImageUrl((String) opt);
                                        break;
                                    case 11:
                                        setPrivacyInformationIconClickThroughUrl((String) opt);
                                        break;
                                    case 12:
                                        setSponsored((String) opt);
                                        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
                                        String str = MoPubCustomEventNative.ADAPTER_NAME;
                                        MoPubLog.log(adapterLogEvent, str, "Unable to add JSON key to internal mapping: " + from.name);
                                        break;
                                    default:
                                        MoPubLog.AdapterLogEvent adapterLogEvent2 = MoPubLog.AdapterLogEvent.CUSTOM;
                                        String str2 = MoPubCustomEventNative.ADAPTER_NAME;
                                        MoPubLog.log(adapterLogEvent2, str2, "Unable to add JSON key to internal mapping: " + from.name);
                                        break;
                                }
                            } catch (ClassCastException e) {
                                if (from.required) {
                                    throw e;
                                }
                                MoPubLog.AdapterLogEvent adapterLogEvent3 = MoPubLog.AdapterLogEvent.CUSTOM;
                                String str3 = MoPubCustomEventNative.ADAPTER_NAME;
                                MoPubLog.log(adapterLogEvent3, str3, "Ignoring class cast exception for optional key: " + from.name);
                            }
                        } catch (ClassCastException e2) {
                            throw new IllegalArgumentException("JSONObject key (" + next + ") contained unexpected value.");
                        }
                    } else {
                        addExtra(next, this.f59984d.opt(next));
                    }
                }
                if (TextUtils.isEmpty(getPrivacyInformationIconClickThroughUrl())) {
                    setPrivacyInformationIconClickThroughUrl("https://www.mopub.com/optout");
                }
                Context context = this.f59982b;
                ArrayList arrayList = new ArrayList();
                if (!TextUtils.isEmpty(getMainImageUrl())) {
                    arrayList.add(getMainImageUrl());
                }
                if (!TextUtils.isEmpty(getIconImageUrl())) {
                    arrayList.add(getIconImageUrl());
                }
                if (!TextUtils.isEmpty(getPrivacyInformationIconImageUrl())) {
                    arrayList.add(getPrivacyInformationIconImageUrl());
                }
                arrayList.addAll(m6184b());
                NativeImageHelper.preCacheImages(context, arrayList, new NativeImageHelper.ImageListener() { // from class: com.mopub.nativeads.MoPubCustomEventNative.a.1
                    @Override // com.mopub.nativeads.NativeImageHelper.ImageListener
                    public final void onImagesCached() {
                        if (C16940a.this.isInvalidated()) {
                            return;
                        }
                        C16940a.this.f59983c.onNativeAdLoaded(C16940a.this);
                    }

                    @Override // com.mopub.nativeads.NativeImageHelper.ImageListener
                    public final void onImagesFailedToCache(NativeErrorCode nativeErrorCode) {
                        if (C16940a.this.isInvalidated()) {
                            return;
                        }
                        C16940a.this.f59983c.onNativeAdFailed(nativeErrorCode);
                    }
                });
                return;
            }
            throw new IllegalArgumentException("JSONObject did not contain required keys.");
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public final void clear(View view) {
            this.f59985e.removeView(view);
            this.f59986f.clearOnClickListener(view);
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public final void destroy() {
            this.f59985e.destroy();
            ExternalViewabilitySessionManager externalViewabilitySessionManager = this.f59987g;
            if (externalViewabilitySessionManager != null) {
                externalViewabilitySessionManager.registerTrackedView(new View(this.f59982b));
                this.f59987g.endSession();
                this.f59987g = null;
            }
            super.destroy();
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.ClickInterface
        public final void handleClick(View view) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.CLICKED, MoPubCustomEventNative.ADAPTER_NAME);
            notifyAdClicked();
            this.f59986f.openClickDestinationUrl(getClickDestinationUrl(), view);
            if (MoPub.analyticsEventsListener == null || this.f59981a.getAndSet(true)) {
                return;
            }
            MoPub.analyticsEventsListener.onAdClicked(MoPub.ANALYTICS_MOPUB_TAG, this.f59989i, MoPub.AD_TYPE_AND_SIZE.NATIVE);
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public final void prepare(View view) {
            this.f59985e.addView(view, this);
            this.f59986f.setOnClickListener(view, this);
            ExternalViewabilitySessionManager externalViewabilitySessionManager = this.f59987g;
            if (externalViewabilitySessionManager != null) {
                externalViewabilitySessionManager.registerTrackedView(view);
                return;
            }
            ExternalViewabilitySessionManager create = ExternalViewabilitySessionManager.create();
            this.f59987g = create;
            create.createNativeSession(view, this.f59988h);
            this.f59987g.startSession();
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.ImpressionInterface
        public final void recordImpression(View view) {
            notifyAdImpressed();
            ExternalViewabilitySessionManager externalViewabilitySessionManager = this.f59987g;
            if (externalViewabilitySessionManager != null) {
                externalViewabilitySessionManager.trackImpression();
            }
            if (MoPub.analyticsEventsListener != null) {
                MoPub.analyticsEventsListener.onAdLoggingImpression(MoPub.ANALYTICS_MOPUB_TAG, this.f59989i, getPublisherRevenue(), MoPub.AD_TYPE_AND_SIZE.NATIVE);
            }
        }
    }

    @Override // com.mopub.nativeads.CustomEventNative
    /* renamed from: a */
    public final void mo6188a() {
        C16940a c16940a = this.f59979a;
        if (c16940a == null) {
            return;
        }
        c16940a.invalidate();
    }

    @Override // com.mopub.nativeads.CustomEventNative
    public void loadNativeAd(Context context, CustomEventNative.CustomEventNativeListener customEventNativeListener, Map<String, Object> map, Map<String, String> map2) {
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED;
        String str = ADAPTER_NAME;
        MoPubLog.log(adapterLogEvent, str);
        C16940a c16940a = this.f59979a;
        if (c16940a == null || c16940a.isInvalidated()) {
            Object obj = map.get(DataKeys.JSON_BODY_KEY);
            if (!(obj instanceof JSONObject)) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, str, Integer.valueOf(NativeErrorCode.INVALID_RESPONSE.getIntCode()), NativeErrorCode.INVALID_RESPONSE);
                customEventNativeListener.onNativeAdFailed(NativeErrorCode.INVALID_RESPONSE);
                return;
            }
            Object obj2 = map.get(DataKeys.CALLAPP_AD_UNIT_ID);
            this.f59979a = new C16940a(context, (JSONObject) obj, new ImpressionTracker(context), new NativeClickHandler(context), customEventNativeListener, obj2 instanceof String ? (String) obj2 : "");
            if (map2.containsKey(DataKeys.IMPRESSION_MIN_VISIBLE_PERCENT)) {
                try {
                    this.f59979a.setImpressionMinPercentageViewed(Integer.parseInt(map2.get(DataKeys.IMPRESSION_MIN_VISIBLE_PERCENT)));
                } catch (NumberFormatException e) {
                    MoPubLog.AdapterLogEvent adapterLogEvent2 = MoPubLog.AdapterLogEvent.CUSTOM;
                    String str2 = ADAPTER_NAME;
                    MoPubLog.log(adapterLogEvent2, str2, "Unable to format min visible percent: " + map2.get(DataKeys.IMPRESSION_MIN_VISIBLE_PERCENT));
                }
            }
            if (map2.containsKey(DataKeys.IMPRESSION_VISIBLE_MS)) {
                try {
                    this.f59979a.setImpressionMinTimeViewed(Integer.parseInt(map2.get(DataKeys.IMPRESSION_VISIBLE_MS)));
                } catch (NumberFormatException e2) {
                    MoPubLog.AdapterLogEvent adapterLogEvent3 = MoPubLog.AdapterLogEvent.CUSTOM;
                    String str3 = ADAPTER_NAME;
                    MoPubLog.log(adapterLogEvent3, str3, "Unable to format min time: " + map2.get(DataKeys.IMPRESSION_VISIBLE_MS));
                }
            }
            if (map2.containsKey(DataKeys.IMPRESSION_MIN_VISIBLE_PX)) {
                try {
                    this.f59979a.setImpressionMinVisiblePx(Integer.valueOf(Integer.parseInt(map2.get(DataKeys.IMPRESSION_MIN_VISIBLE_PX))));
                } catch (NumberFormatException e3) {
                    MoPubLog.AdapterLogEvent adapterLogEvent4 = MoPubLog.AdapterLogEvent.CUSTOM;
                    String str4 = ADAPTER_NAME;
                    MoPubLog.log(adapterLogEvent4, str4, "Unable to format min visible px: " + map2.get(DataKeys.IMPRESSION_MIN_VISIBLE_PX));
                }
            }
            try {
                Object obj3 = map.get(DataKeys.VIEWABILITY_VENDORS_KEY);
                if (obj3 instanceof Set) {
                    C16940a.m6185a(this.f59979a, (Set) obj3);
                }
            } catch (Exception e4) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, "Ignore empty viewability vendors list.");
            }
            try {
                this.f59979a.m6187a();
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, ADAPTER_NAME);
            } catch (IllegalArgumentException e5) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, ADAPTER_NAME, Integer.valueOf(NativeErrorCode.UNSPECIFIED.getIntCode()), NativeErrorCode.UNSPECIFIED);
                customEventNativeListener.onNativeAdFailed(NativeErrorCode.UNSPECIFIED);
            }
        }
    }
}
