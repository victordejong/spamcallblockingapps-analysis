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

    /* renamed from: a  reason: collision with root package name */
    private a f34565a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mopub.nativeads.MoPubCustomEventNative$1  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventNative$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f34566a;

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
            int[] iArr = new int[a.EnumC0547a.values().length];
            f34566a = iArr;
            try {
                iArr[a.EnumC0547a.MAIN_IMAGE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f34566a[a.EnumC0547a.ICON_IMAGE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f34566a[a.EnumC0547a.IMPRESSION_TRACKER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f34566a[a.EnumC0547a.CLICK_DESTINATION.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f34566a[a.EnumC0547a.CLICK_TRACKER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f34566a[a.EnumC0547a.CALL_TO_ACTION.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f34566a[a.EnumC0547a.TITLE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f34566a[a.EnumC0547a.TEXT.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f34566a[a.EnumC0547a.STAR_RATING.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f34566a[a.EnumC0547a.PRIVACY_INFORMATION_ICON_IMAGE_URL.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f34566a[a.EnumC0547a.PRIVACY_INFORMATION_ICON_CLICKTHROUGH_URL.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f34566a[a.EnumC0547a.SPONSORED.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventNative$a.class */
    static final class a extends StaticNativeAd {

        /* renamed from: b  reason: collision with root package name */
        private final Context f34568b;

        /* renamed from: c  reason: collision with root package name */
        private final CustomEventNative.CustomEventNativeListener f34569c;

        /* renamed from: d  reason: collision with root package name */
        private final JSONObject f34570d;
        private final ImpressionTracker e;
        private final NativeClickHandler f;
        private ExternalViewabilitySessionManager g;
        private final String i;

        /* renamed from: a  reason: collision with root package name */
        private AtomicBoolean f34567a = new AtomicBoolean(false);
        private final Set<ViewabilityVendor> h = new HashSet();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.mopub.nativeads.MoPubCustomEventNative$a$a  reason: collision with other inner class name */
        /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventNative$a$a.class */
        public enum EnumC0547a {
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
                EnumC0547a[] values;
                for (EnumC0547a aVar : values()) {
                    if (aVar.required) {
                        requiredKeys.add(aVar.name);
                    }
                }
            }

            EnumC0547a(String str, boolean z) {
                this.name = str;
                this.required = z;
            }

            static EnumC0547a from(String str) {
                EnumC0547a[] values;
                for (EnumC0547a aVar : values()) {
                    if (aVar.name.equals(str)) {
                        return aVar;
                    }
                }
                return null;
            }
        }

        a(Context context, JSONObject jSONObject, ImpressionTracker impressionTracker, NativeClickHandler nativeClickHandler, CustomEventNative.CustomEventNativeListener customEventNativeListener, String str) {
            this.f34570d = jSONObject;
            this.f34568b = context.getApplicationContext();
            this.e = impressionTracker;
            this.f = nativeClickHandler;
            this.f34569c = customEventNativeListener;
            this.i = str;
        }

        static /* synthetic */ void a(a aVar, Set set) {
            aVar.h.addAll(set);
        }

        private List<String> b() {
            ArrayList arrayList = new ArrayList(getExtras().size());
            for (Map.Entry<String, Object> entry : getExtras().entrySet()) {
                String key = entry.getKey();
                if ((key != null && key.toLowerCase(Locale.US).endsWith("image")) && (entry.getValue() instanceof String)) {
                    arrayList.add((String) entry.getValue());
                }
            }
            return arrayList;
        }

        final void a() throws IllegalArgumentException {
            JSONObject jSONObject = this.f34570d;
            HashSet hashSet = new HashSet();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                hashSet.add(keys.next());
            }
            if (hashSet.containsAll(EnumC0547a.requiredKeys)) {
                Iterator<String> keys2 = this.f34570d.keys();
                while (keys2.hasNext()) {
                    String next = keys2.next();
                    EnumC0547a from = EnumC0547a.from(next);
                    if (from != null) {
                        try {
                            Object opt = this.f34570d.opt(next);
                            try {
                                switch (AnonymousClass1.f34566a[from.ordinal()]) {
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
                                if (!from.required) {
                                    MoPubLog.AdapterLogEvent adapterLogEvent3 = MoPubLog.AdapterLogEvent.CUSTOM;
                                    String str3 = MoPubCustomEventNative.ADAPTER_NAME;
                                    MoPubLog.log(adapterLogEvent3, str3, "Ignoring class cast exception for optional key: " + from.name);
                                } else {
                                    throw e;
                                }
                            }
                        } catch (ClassCastException e2) {
                            throw new IllegalArgumentException("JSONObject key (" + next + ") contained unexpected value.");
                        }
                    } else {
                        addExtra(next, this.f34570d.opt(next));
                    }
                }
                if (TextUtils.isEmpty(getPrivacyInformationIconClickThroughUrl())) {
                    setPrivacyInformationIconClickThroughUrl("https://www.mopub.com/optout");
                }
                Context context = this.f34568b;
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
                arrayList.addAll(b());
                NativeImageHelper.preCacheImages(context, arrayList, new NativeImageHelper.ImageListener() { // from class: com.mopub.nativeads.MoPubCustomEventNative.a.1
                    @Override // com.mopub.nativeads.NativeImageHelper.ImageListener
                    public final void onImagesCached() {
                        if (!a.this.isInvalidated()) {
                            a.this.f34569c.onNativeAdLoaded(a.this);
                        }
                    }

                    @Override // com.mopub.nativeads.NativeImageHelper.ImageListener
                    public final void onImagesFailedToCache(NativeErrorCode nativeErrorCode) {
                        if (!a.this.isInvalidated()) {
                            a.this.f34569c.onNativeAdFailed(nativeErrorCode);
                        }
                    }
                });
                return;
            }
            throw new IllegalArgumentException("JSONObject did not contain required keys.");
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public final void clear(View view) {
            this.e.removeView(view);
            this.f.clearOnClickListener(view);
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public final void destroy() {
            this.e.destroy();
            ExternalViewabilitySessionManager externalViewabilitySessionManager = this.g;
            if (externalViewabilitySessionManager != null) {
                externalViewabilitySessionManager.registerTrackedView(new View(this.f34568b));
                this.g.endSession();
                this.g = null;
            }
            super.destroy();
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.ClickInterface
        public final void handleClick(View view) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.CLICKED, MoPubCustomEventNative.ADAPTER_NAME);
            notifyAdClicked();
            this.f.openClickDestinationUrl(getClickDestinationUrl(), view);
            if (MoPub.analyticsEventsListener != null && !this.f34567a.getAndSet(true)) {
                MoPub.analyticsEventsListener.onAdClicked(MoPub.ANALYTICS_MOPUB_TAG, this.i, MoPub.AD_TYPE_AND_SIZE.NATIVE);
            }
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public final void prepare(View view) {
            this.e.addView(view, this);
            this.f.setOnClickListener(view, this);
            ExternalViewabilitySessionManager externalViewabilitySessionManager = this.g;
            if (externalViewabilitySessionManager == null) {
                ExternalViewabilitySessionManager create = ExternalViewabilitySessionManager.create();
                this.g = create;
                create.createNativeSession(view, this.h);
                this.g.startSession();
                return;
            }
            externalViewabilitySessionManager.registerTrackedView(view);
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.ImpressionInterface
        public final void recordImpression(View view) {
            notifyAdImpressed();
            ExternalViewabilitySessionManager externalViewabilitySessionManager = this.g;
            if (externalViewabilitySessionManager != null) {
                externalViewabilitySessionManager.trackImpression();
            }
            if (MoPub.analyticsEventsListener != null) {
                MoPub.analyticsEventsListener.onAdLoggingImpression(MoPub.ANALYTICS_MOPUB_TAG, this.i, getPublisherRevenue(), MoPub.AD_TYPE_AND_SIZE.NATIVE);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.nativeads.CustomEventNative
    public final void a() {
        a aVar = this.f34565a;
        if (aVar != null) {
            aVar.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.nativeads.CustomEventNative
    public void loadNativeAd(Context context, CustomEventNative.CustomEventNativeListener customEventNativeListener, Map<String, Object> map, Map<String, String> map2) {
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED;
        String str = ADAPTER_NAME;
        MoPubLog.log(adapterLogEvent, str);
        a aVar = this.f34565a;
        if (aVar == null || aVar.isInvalidated()) {
            Object obj = map.get(DataKeys.JSON_BODY_KEY);
            if (!(obj instanceof JSONObject)) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, str, Integer.valueOf(NativeErrorCode.INVALID_RESPONSE.getIntCode()), NativeErrorCode.INVALID_RESPONSE);
                customEventNativeListener.onNativeAdFailed(NativeErrorCode.INVALID_RESPONSE);
                return;
            }
            Object obj2 = map.get(DataKeys.CALLAPP_AD_UNIT_ID);
            this.f34565a = new a(context, (JSONObject) obj, new ImpressionTracker(context), new NativeClickHandler(context), customEventNativeListener, obj2 instanceof String ? (String) obj2 : "");
            if (map2.containsKey(DataKeys.IMPRESSION_MIN_VISIBLE_PERCENT)) {
                try {
                    this.f34565a.setImpressionMinPercentageViewed(Integer.parseInt(map2.get(DataKeys.IMPRESSION_MIN_VISIBLE_PERCENT)));
                } catch (NumberFormatException e) {
                    MoPubLog.AdapterLogEvent adapterLogEvent2 = MoPubLog.AdapterLogEvent.CUSTOM;
                    String str2 = ADAPTER_NAME;
                    MoPubLog.log(adapterLogEvent2, str2, "Unable to format min visible percent: " + map2.get(DataKeys.IMPRESSION_MIN_VISIBLE_PERCENT));
                }
            }
            if (map2.containsKey(DataKeys.IMPRESSION_VISIBLE_MS)) {
                try {
                    this.f34565a.setImpressionMinTimeViewed(Integer.parseInt(map2.get(DataKeys.IMPRESSION_VISIBLE_MS)));
                } catch (NumberFormatException e2) {
                    MoPubLog.AdapterLogEvent adapterLogEvent3 = MoPubLog.AdapterLogEvent.CUSTOM;
                    String str3 = ADAPTER_NAME;
                    MoPubLog.log(adapterLogEvent3, str3, "Unable to format min time: " + map2.get(DataKeys.IMPRESSION_VISIBLE_MS));
                }
            }
            if (map2.containsKey(DataKeys.IMPRESSION_MIN_VISIBLE_PX)) {
                try {
                    this.f34565a.setImpressionMinVisiblePx(Integer.valueOf(Integer.parseInt(map2.get(DataKeys.IMPRESSION_MIN_VISIBLE_PX))));
                } catch (NumberFormatException e3) {
                    MoPubLog.AdapterLogEvent adapterLogEvent4 = MoPubLog.AdapterLogEvent.CUSTOM;
                    String str4 = ADAPTER_NAME;
                    MoPubLog.log(adapterLogEvent4, str4, "Unable to format min visible px: " + map2.get(DataKeys.IMPRESSION_MIN_VISIBLE_PX));
                }
            }
            try {
                Object obj3 = map.get(DataKeys.VIEWABILITY_VENDORS_KEY);
                if (obj3 instanceof Set) {
                    a.a(this.f34565a, (Set) obj3);
                }
            } catch (Exception e4) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, "Ignore empty viewability vendors list.");
            }
            try {
                this.f34565a.a();
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, ADAPTER_NAME);
            } catch (IllegalArgumentException e5) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, ADAPTER_NAME, Integer.valueOf(NativeErrorCode.UNSPECIFIED.getIntCode()), NativeErrorCode.UNSPECIFIED);
                customEventNativeListener.onNativeAdFailed(NativeErrorCode.UNSPECIFIED);
            }
        }
    }
}
