package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import com.mopub.common.DataKeys;
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
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventNative.class */
public class MoPubCustomEventNative extends CustomEventNative {
    public static final String ADAPTER_NAME = "MoPubCustomEventNative";

    /* renamed from: a */
    public C3966b f9128a;

    /* renamed from: com.mopub.nativeads.MoPubCustomEventNative$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventNative$a.class */
    public static /* synthetic */ class C3965a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f9129a = new int[C3966b.EnumC3968b.values().length];

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
            try {
                f9129a[C3966b.EnumC3968b.MAIN_IMAGE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f9129a[C3966b.EnumC3968b.ICON_IMAGE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f9129a[C3966b.EnumC3968b.IMPRESSION_TRACKER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f9129a[C3966b.EnumC3968b.CLICK_DESTINATION.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f9129a[C3966b.EnumC3968b.CLICK_TRACKER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f9129a[C3966b.EnumC3968b.CALL_TO_ACTION.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f9129a[C3966b.EnumC3968b.TITLE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f9129a[C3966b.EnumC3968b.TEXT.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f9129a[C3966b.EnumC3968b.STAR_RATING.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f9129a[C3966b.EnumC3968b.PRIVACY_INFORMATION_ICON_IMAGE_URL.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f9129a[C3966b.EnumC3968b.PRIVACY_INFORMATION_ICON_CLICKTHROUGH_URL.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f9129a[C3966b.EnumC3968b.SPONSORED.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubCustomEventNative$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventNative$b.class */
    public static class C3966b extends StaticNativeAd {
        @NonNull

        /* renamed from: p */
        public final Context f9130p;
        @NonNull

        /* renamed from: q */
        public final CustomEventNative.CustomEventNativeListener f9131q;
        @NonNull

        /* renamed from: r */
        public final JSONObject f9132r;
        @NonNull

        /* renamed from: s */
        public final ImpressionTracker f9133s;
        @NonNull

        /* renamed from: t */
        public final NativeClickHandler f9134t;

        /* renamed from: com.mopub.nativeads.MoPubCustomEventNative$b$a */
        /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventNative$b$a.class */
        public class C3967a implements NativeImageHelper.ImageListener {
            public C3967a() {
            }

            @Override // com.mopub.nativeads.NativeImageHelper.ImageListener
            public void onImagesCached() {
                if (!C3966b.this.isInvalidated()) {
                    C3966b.this.f9131q.onNativeAdLoaded(C3966b.this);
                }
            }

            @Override // com.mopub.nativeads.NativeImageHelper.ImageListener
            public void onImagesFailedToCache(NativeErrorCode nativeErrorCode) {
                if (!C3966b.this.isInvalidated()) {
                    C3966b.this.f9131q.onNativeAdFailed(nativeErrorCode);
                }
            }
        }

        /* renamed from: com.mopub.nativeads.MoPubCustomEventNative$b$b */
        /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventNative$b$b.class */
        public enum EnumC3968b {
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
            
            @NonNull
            @VisibleForTesting

            /* renamed from: c */
            public static final Set<String> f9136c = new HashSet();
            @NonNull

            /* renamed from: a */
            public final String f9138a;

            /* renamed from: b */
            public final boolean f9139b;

            static {
                EnumC3968b[] values;
                for (EnumC3968b bVar : values()) {
                    if (bVar.f9139b) {
                        f9136c.add(bVar.f9138a);
                    }
                }
            }

            EnumC3968b(@NonNull String str, boolean z) {
                this.f9138a = str;
                this.f9139b = z;
            }

            @Nullable
            /* renamed from: a */
            public static EnumC3968b m30144a(@NonNull String str) {
                EnumC3968b[] values;
                for (EnumC3968b bVar : values()) {
                    if (bVar.f9138a.equals(str)) {
                        return bVar;
                    }
                }
                return null;
            }
        }

        public C3966b(@NonNull Context context, @NonNull JSONObject jSONObject, @NonNull ImpressionTracker impressionTracker, @NonNull NativeClickHandler nativeClickHandler, @NonNull CustomEventNative.CustomEventNativeListener customEventNativeListener) {
            this.f9132r = jSONObject;
            this.f9130p = context.getApplicationContext();
            this.f9133s = impressionTracker;
            this.f9134t = nativeClickHandler;
            this.f9131q = customEventNativeListener;
        }

        /* renamed from: a */
        public final void m30151a(@NonNull EnumC3968b bVar, @Nullable Object obj) throws ClassCastException {
            try {
                switch (C3965a.f9129a[bVar.ordinal()]) {
                    case 1:
                        setMainImageUrl((String) obj);
                        return;
                    case 2:
                        setIconImageUrl((String) obj);
                        return;
                    case 3:
                        addImpressionTrackers(obj);
                        return;
                    case 4:
                        setClickDestinationUrl((String) obj);
                        return;
                    case 5:
                        m30149a(obj);
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
                MoPubLog.log(adapterLogEvent, str, "Unable to add JSON key to internal mapping: " + bVar.f9138a);
            } catch (ClassCastException e) {
                if (!bVar.f9139b) {
                    MoPubLog.AdapterLogEvent adapterLogEvent2 = MoPubLog.AdapterLogEvent.CUSTOM;
                    String str2 = MoPubCustomEventNative.ADAPTER_NAME;
                    MoPubLog.log(adapterLogEvent2, str2, "Ignoring class cast exception for optional key: " + bVar.f9138a);
                    return;
                }
                throw e;
            }
        }

        /* renamed from: a */
        public final void m30149a(@NonNull Object obj) {
            if (obj instanceof JSONArray) {
                addClickTrackers(obj);
            } else {
                addClickTracker((String) obj);
            }
        }

        /* renamed from: a */
        public final boolean m30148a(@Nullable String str) {
            return str != null && str.toLowerCase(Locale.US).endsWith(TtmlNode.TAG_IMAGE);
        }

        /* renamed from: a */
        public final boolean m30147a(@NonNull JSONObject jSONObject) {
            HashSet hashSet = new HashSet();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                hashSet.add(keys.next());
            }
            return hashSet.containsAll(EnumC3968b.f9136c);
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void clear(@NonNull View view) {
            this.f9133s.removeView(view);
            this.f9134t.clearOnClickListener(view);
        }

        @NonNull
        /* renamed from: d */
        public List<String> m30146d() {
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
            arrayList.addAll(m30145e());
            return arrayList;
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void destroy() {
            this.f9133s.destroy();
            super.destroy();
        }

        @NonNull
        /* renamed from: e */
        public List<String> m30145e() {
            ArrayList arrayList = new ArrayList(getExtras().size());
            for (Map.Entry<String, Object> entry : getExtras().entrySet()) {
                if (m30148a(entry.getKey()) && (entry.getValue() instanceof String)) {
                    arrayList.add((String) entry.getValue());
                }
            }
            return arrayList;
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.ClickInterface
        public void handleClick(@Nullable View view) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.CLICKED, MoPubCustomEventNative.ADAPTER_NAME);
            notifyAdClicked();
            this.f9134t.openClickDestinationUrl(getClickDestinationUrl(), view);
        }

        public void loadAd() throws IllegalArgumentException {
            if (m30147a(this.f9132r)) {
                Iterator<String> keys = this.f9132r.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    EnumC3968b a = EnumC3968b.m30144a(next);
                    if (a != null) {
                        try {
                            m30151a(a, this.f9132r.opt(next));
                        } catch (ClassCastException e) {
                            throw new IllegalArgumentException("JSONObject key (" + next + ") contained unexpected value.");
                        }
                    } else {
                        addExtra(next, this.f9132r.opt(next));
                    }
                }
                if (TextUtils.isEmpty(getPrivacyInformationIconClickThroughUrl())) {
                    setPrivacyInformationIconClickThroughUrl("https://www.mopub.com/optout");
                }
                NativeImageHelper.preCacheImages(this.f9130p, m30146d(), new C3967a());
                return;
            }
            throw new IllegalArgumentException("JSONObject did not contain required keys.");
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void prepare(@NonNull View view) {
            this.f9133s.addView(view, this);
            this.f9134t.setOnClickListener(view, this);
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.ImpressionInterface
        public void recordImpression(@NonNull View view) {
            notifyAdImpressed();
        }
    }

    @Override // com.mopub.nativeads.CustomEventNative
    public void loadNativeAd(@NonNull Context context, @NonNull CustomEventNative.CustomEventNativeListener customEventNativeListener, @NonNull Map<String, Object> map, @NonNull Map<String, String> map2) {
        MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, ADAPTER_NAME);
        C3966b bVar = this.f9128a;
        if (bVar == null || bVar.isInvalidated()) {
            Object obj = map.get(DataKeys.JSON_BODY_KEY);
            if (!(obj instanceof JSONObject)) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, ADAPTER_NAME, Integer.valueOf(NativeErrorCode.INVALID_RESPONSE.getIntCode()), NativeErrorCode.INVALID_RESPONSE);
                customEventNativeListener.onNativeAdFailed(NativeErrorCode.INVALID_RESPONSE);
                return;
            }
            this.f9128a = new C3966b(context, (JSONObject) obj, new ImpressionTracker(context), new NativeClickHandler(context), customEventNativeListener);
            if (map2.containsKey(DataKeys.IMPRESSION_MIN_VISIBLE_PERCENT)) {
                try {
                    this.f9128a.setImpressionMinPercentageViewed(Integer.parseInt(map2.get(DataKeys.IMPRESSION_MIN_VISIBLE_PERCENT)));
                } catch (NumberFormatException e) {
                    MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
                    String str = ADAPTER_NAME;
                    MoPubLog.log(adapterLogEvent, str, "Unable to format min visible percent: " + map2.get(DataKeys.IMPRESSION_MIN_VISIBLE_PERCENT));
                }
            }
            if (map2.containsKey(DataKeys.IMPRESSION_VISIBLE_MS)) {
                try {
                    this.f9128a.setImpressionMinTimeViewed(Integer.parseInt(map2.get(DataKeys.IMPRESSION_VISIBLE_MS)));
                } catch (NumberFormatException e2) {
                    MoPubLog.AdapterLogEvent adapterLogEvent2 = MoPubLog.AdapterLogEvent.CUSTOM;
                    String str2 = ADAPTER_NAME;
                    MoPubLog.log(adapterLogEvent2, str2, "Unable to format min time: " + map2.get(DataKeys.IMPRESSION_VISIBLE_MS));
                }
            }
            if (map2.containsKey(DataKeys.IMPRESSION_MIN_VISIBLE_PX)) {
                try {
                    this.f9128a.setImpressionMinVisiblePx(Integer.valueOf(Integer.parseInt(map2.get(DataKeys.IMPRESSION_MIN_VISIBLE_PX))));
                } catch (NumberFormatException e3) {
                    MoPubLog.AdapterLogEvent adapterLogEvent3 = MoPubLog.AdapterLogEvent.CUSTOM;
                    String str3 = ADAPTER_NAME;
                    MoPubLog.log(adapterLogEvent3, str3, "Unable to format min visible px: " + map2.get(DataKeys.IMPRESSION_MIN_VISIBLE_PX));
                }
            }
            try {
                this.f9128a.loadAd();
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, ADAPTER_NAME);
            } catch (IllegalArgumentException e4) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, ADAPTER_NAME, Integer.valueOf(NativeErrorCode.UNSPECIFIED.getIntCode()), NativeErrorCode.UNSPECIFIED);
                customEventNativeListener.onNativeAdFailed(NativeErrorCode.UNSPECIFIED);
            }
        }
    }

    @Override // com.mopub.nativeads.CustomEventNative
    public void onInvalidate() {
        C3966b bVar = this.f9128a;
        if (bVar != null) {
            bVar.invalidate();
        }
    }
}
