package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.mopub.common.DataKeys;
import com.mopub.common.ExternalViewabilitySessionManager;
import com.mopub.common.ViewabilityVendor;
import com.mopub.common.VisibleForTesting;
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
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventNative.class */
public class MoPubCustomEventNative extends CustomEventNative {
    public static final String ADAPTER_NAME = "MoPubCustomEventNative";

    /* renamed from: a */
    public C1186b f5162a;

    /* renamed from: com.mopub.nativeads.MoPubCustomEventNative$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventNative$a.class */
    public static /* synthetic */ class C1185a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f5163a;

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
            int[] iArr = new int[C1186b.EnumC1188b.values().length];
            f5163a = iArr;
            try {
                iArr[C1186b.EnumC1188b.MAIN_IMAGE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5163a[C1186b.EnumC1188b.ICON_IMAGE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f5163a[C1186b.EnumC1188b.IMPRESSION_TRACKER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f5163a[C1186b.EnumC1188b.CLICK_DESTINATION.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f5163a[C1186b.EnumC1188b.CLICK_TRACKER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f5163a[C1186b.EnumC1188b.CALL_TO_ACTION.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f5163a[C1186b.EnumC1188b.TITLE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f5163a[C1186b.EnumC1188b.TEXT.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f5163a[C1186b.EnumC1188b.STAR_RATING.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f5163a[C1186b.EnumC1188b.PRIVACY_INFORMATION_ICON_IMAGE_URL.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f5163a[C1186b.EnumC1188b.PRIVACY_INFORMATION_ICON_CLICKTHROUGH_URL.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f5163a[C1186b.EnumC1188b.SPONSORED.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubCustomEventNative$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventNative$b.class */
    public static class C1186b extends StaticNativeAd {

        /* renamed from: t */
        public final Context f5164t;

        /* renamed from: u */
        public final CustomEventNative.CustomEventNativeListener f5165u;

        /* renamed from: v */
        public final JSONObject f5166v;

        /* renamed from: w */
        public final ImpressionTracker f5167w;

        /* renamed from: x */
        public final NativeClickHandler f5168x;

        /* renamed from: y */
        public ExternalViewabilitySessionManager f5169y;

        /* renamed from: z */
        public final Set<ViewabilityVendor> f5170z = new HashSet();

        /* renamed from: com.mopub.nativeads.MoPubCustomEventNative$b$a */
        /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventNative$b$a.class */
        public class C1187a implements NativeImageHelper.ImageListener {
            public C1187a() {
                C1186b.this = r4;
            }

            @Override // com.mopub.nativeads.NativeImageHelper.ImageListener
            public void onImagesCached() {
                if (C1186b.this.isInvalidated()) {
                    return;
                }
                C1186b.this.f5165u.onNativeAdLoaded(C1186b.this);
            }

            @Override // com.mopub.nativeads.NativeImageHelper.ImageListener
            public void onImagesFailedToCache(NativeErrorCode nativeErrorCode) {
                if (C1186b.this.isInvalidated()) {
                    return;
                }
                C1186b.this.f5165u.onNativeAdFailed(nativeErrorCode);
            }
        }

        /* renamed from: com.mopub.nativeads.MoPubCustomEventNative$b$b */
        /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventNative$b$b.class */
        public enum EnumC1188b {
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
            
            @VisibleForTesting

            /* renamed from: c */
            public static final Set<String> f5172c = new HashSet();

            /* renamed from: a */
            public final String f5174a;

            /* renamed from: b */
            public final boolean f5175b;

            static {
                EnumC1188b[] values;
                for (EnumC1188b enumC1188b : values()) {
                    if (enumC1188b.f5175b) {
                        f5172c.add(enumC1188b.f5174a);
                    }
                }
            }

            EnumC1188b(String str, boolean z) {
                this.f5174a = str;
                this.f5175b = z;
            }

            /* renamed from: a */
            public static EnumC1188b m3330a(String str) {
                EnumC1188b[] values;
                for (EnumC1188b enumC1188b : values()) {
                    if (enumC1188b.f5174a.equals(str)) {
                        return enumC1188b;
                    }
                }
                return null;
            }
        }

        public C1186b(Context context, JSONObject jSONObject, ImpressionTracker impressionTracker, NativeClickHandler nativeClickHandler, CustomEventNative.CustomEventNativeListener customEventNativeListener) {
            this.f5166v = jSONObject;
            this.f5164t = context.getApplicationContext();
            this.f5167w = impressionTracker;
            this.f5168x = nativeClickHandler;
            this.f5165u = customEventNativeListener;
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void clear(View view) {
            this.f5167w.removeView(view);
            this.f5168x.clearOnClickListener(view);
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void destroy() {
            this.f5167w.destroy();
            ExternalViewabilitySessionManager externalViewabilitySessionManager = this.f5169y;
            if (externalViewabilitySessionManager != null) {
                externalViewabilitySessionManager.registerTrackedView(new View(this.f5164t));
                this.f5169y.endSession();
                this.f5169y = null;
            }
            super.destroy();
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.ClickInterface
        public void handleClick(View view) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.CLICKED, MoPubCustomEventNative.ADAPTER_NAME);
            m3376e();
            this.f5168x.openClickDestinationUrl(getClickDestinationUrl(), view);
        }

        /* renamed from: i */
        public final void m3338i(EnumC1188b enumC1188b, Object obj) {
            try {
                switch (C1185a.f5163a[enumC1188b.ordinal()]) {
                    case 1:
                        setMainImageUrl((String) obj);
                        return;
                    case 2:
                        setIconImageUrl((String) obj);
                        return;
                    case 3:
                        m3379b(obj);
                        return;
                    case 4:
                        setClickDestinationUrl((String) obj);
                        return;
                    case 5:
                        m3332o(obj);
                        return;
                    case 6:
                        setCallToAction((String) obj);
                        return;
                    case 7:
                        setTitle((String) obj);
                        return;
                    case 8:
                        setText((String) obj);
                        return;
                    case 9:
                        setStarRating(Numbers.parseDouble(obj));
                        return;
                    case 10:
                        setPrivacyInformationIconImageUrl((String) obj);
                        return;
                    case 11:
                        setPrivacyInformationIconClickThroughUrl((String) obj);
                        return;
                    case 12:
                        setSponsored((String) obj);
                        break;
                }
                MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
                String str = MoPubCustomEventNative.ADAPTER_NAME;
                MoPubLog.log(adapterLogEvent, str, "Unable to add JSON key to internal mapping: " + enumC1188b.f5174a);
            } catch (ClassCastException e) {
                if (enumC1188b.f5175b) {
                    throw e;
                }
                MoPubLog.AdapterLogEvent adapterLogEvent2 = MoPubLog.AdapterLogEvent.CUSTOM;
                String str2 = MoPubCustomEventNative.ADAPTER_NAME;
                MoPubLog.log(adapterLogEvent2, str2, "Ignoring class cast exception for optional key: " + enumC1188b.f5174a);
            }
        }

        /* renamed from: j */
        public final boolean m3337j(JSONObject jSONObject) {
            HashSet hashSet = new HashSet();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                hashSet.add(keys.next());
            }
            return hashSet.containsAll(EnumC1188b.f5172c);
        }

        /* renamed from: k */
        public List<String> m3336k() {
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
            arrayList.addAll(m3335l());
            return arrayList;
        }

        /* renamed from: l */
        public List<String> m3335l() {
            ArrayList arrayList = new ArrayList(getExtras().size());
            for (Map.Entry<String, Object> entry : getExtras().entrySet()) {
                if (m3334m(entry.getKey()) && (entry.getValue() instanceof String)) {
                    arrayList.add((String) entry.getValue());
                }
            }
            return arrayList;
        }

        /* renamed from: m */
        public final boolean m3334m(String str) {
            return str != null && str.toLowerCase(Locale.US).endsWith("image");
        }

        /* renamed from: n */
        public void m3333n() {
            if (m3337j(this.f5166v)) {
                Iterator<String> keys = this.f5166v.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    EnumC1188b m3330a = EnumC1188b.m3330a(next);
                    if (m3330a != null) {
                        try {
                            m3338i(m3330a, this.f5166v.opt(next));
                        } catch (ClassCastException e) {
                            throw new IllegalArgumentException("JSONObject key (" + next + ") contained unexpected value.");
                        }
                    } else {
                        addExtra(next, this.f5166v.opt(next));
                    }
                }
                if (TextUtils.isEmpty(getPrivacyInformationIconClickThroughUrl())) {
                    setPrivacyInformationIconClickThroughUrl("https://www.mopub.com/optout");
                }
                NativeImageHelper.preCacheImages(this.f5164t, m3336k(), new C1187a());
                return;
            }
            throw new IllegalArgumentException("JSONObject did not contain required keys.");
        }

        /* renamed from: o */
        public final void m3332o(Object obj) {
            if (obj instanceof JSONArray) {
                m3380a(obj);
            } else {
                addClickTracker((String) obj);
            }
        }

        /* renamed from: p */
        public final void m3331p(Set<ViewabilityVendor> set) {
            this.f5170z.addAll(set);
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void prepare(View view) {
            this.f5167w.addView(view, this);
            this.f5168x.setOnClickListener(view, this);
            ExternalViewabilitySessionManager externalViewabilitySessionManager = this.f5169y;
            if (externalViewabilitySessionManager != null) {
                externalViewabilitySessionManager.registerTrackedView(view);
                return;
            }
            ExternalViewabilitySessionManager create = ExternalViewabilitySessionManager.create();
            this.f5169y = create;
            create.createNativeSession(view, this.f5170z);
            this.f5169y.startSession();
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.ImpressionInterface
        public void recordImpression(View view) {
            m3375f();
            ExternalViewabilitySessionManager externalViewabilitySessionManager = this.f5169y;
            if (externalViewabilitySessionManager != null) {
                externalViewabilitySessionManager.trackImpression();
            }
        }
    }

    @Override // com.mopub.nativeads.CustomEventNative
    /* renamed from: a */
    public void mo3342a(Context context, CustomEventNative.CustomEventNativeListener customEventNativeListener, Map<String, Object> map, Map<String, String> map2) {
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED;
        String str = ADAPTER_NAME;
        MoPubLog.log(adapterLogEvent, str);
        C1186b c1186b = this.f5162a;
        if (c1186b == null || c1186b.isInvalidated()) {
            Object obj = map.get(DataKeys.JSON_BODY_KEY);
            if (!(obj instanceof JSONObject)) {
                MoPubLog.AdapterLogEvent adapterLogEvent2 = MoPubLog.AdapterLogEvent.LOAD_FAILED;
                NativeErrorCode nativeErrorCode = NativeErrorCode.INVALID_RESPONSE;
                MoPubLog.log(adapterLogEvent2, str, Integer.valueOf(nativeErrorCode.getIntCode()), nativeErrorCode);
                customEventNativeListener.onNativeAdFailed(nativeErrorCode);
                return;
            }
            this.f5162a = new C1186b(context, (JSONObject) obj, new ImpressionTracker(context), new NativeClickHandler(context), customEventNativeListener);
            if (map2.containsKey(DataKeys.IMPRESSION_MIN_VISIBLE_PERCENT)) {
                try {
                    this.f5162a.setImpressionMinPercentageViewed(Integer.parseInt(map2.get(DataKeys.IMPRESSION_MIN_VISIBLE_PERCENT)));
                } catch (NumberFormatException e) {
                    MoPubLog.AdapterLogEvent adapterLogEvent3 = MoPubLog.AdapterLogEvent.CUSTOM;
                    String str2 = ADAPTER_NAME;
                    MoPubLog.log(adapterLogEvent3, str2, "Unable to format min visible percent: " + map2.get(DataKeys.IMPRESSION_MIN_VISIBLE_PERCENT));
                }
            }
            if (map2.containsKey(DataKeys.IMPRESSION_VISIBLE_MS)) {
                try {
                    this.f5162a.setImpressionMinTimeViewed(Integer.parseInt(map2.get(DataKeys.IMPRESSION_VISIBLE_MS)));
                } catch (NumberFormatException e2) {
                    MoPubLog.AdapterLogEvent adapterLogEvent4 = MoPubLog.AdapterLogEvent.CUSTOM;
                    String str3 = ADAPTER_NAME;
                    MoPubLog.log(adapterLogEvent4, str3, "Unable to format min time: " + map2.get(DataKeys.IMPRESSION_VISIBLE_MS));
                }
            }
            if (map2.containsKey(DataKeys.IMPRESSION_MIN_VISIBLE_PX)) {
                try {
                    this.f5162a.setImpressionMinVisiblePx(Integer.valueOf(Integer.parseInt(map2.get(DataKeys.IMPRESSION_MIN_VISIBLE_PX))));
                } catch (NumberFormatException e3) {
                    MoPubLog.AdapterLogEvent adapterLogEvent5 = MoPubLog.AdapterLogEvent.CUSTOM;
                    String str4 = ADAPTER_NAME;
                    MoPubLog.log(adapterLogEvent5, str4, "Unable to format min visible px: " + map2.get(DataKeys.IMPRESSION_MIN_VISIBLE_PX));
                }
            }
            try {
                Object obj2 = map.get(DataKeys.VIEWABILITY_VENDORS_KEY);
                if (obj2 instanceof Set) {
                    this.f5162a.m3331p((Set) obj2);
                }
            } catch (Exception e4) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, "Ignore empty viewability vendors list.");
            }
            try {
                this.f5162a.m3333n();
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, ADAPTER_NAME);
            } catch (IllegalArgumentException e5) {
                MoPubLog.AdapterLogEvent adapterLogEvent6 = MoPubLog.AdapterLogEvent.LOAD_FAILED;
                String str5 = ADAPTER_NAME;
                NativeErrorCode nativeErrorCode2 = NativeErrorCode.UNSPECIFIED;
                MoPubLog.log(adapterLogEvent6, str5, Integer.valueOf(nativeErrorCode2.getIntCode()), nativeErrorCode2);
                customEventNativeListener.onNativeAdFailed(nativeErrorCode2);
            }
        }
    }

    @Override // com.mopub.nativeads.CustomEventNative
    /* renamed from: b */
    public void mo3341b() {
        C1186b c1186b = this.f5162a;
        if (c1186b == null) {
            return;
        }
        c1186b.invalidate();
    }
}
