package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import com.aotter.net.trek.AotterTrek;
import com.aotter.net.trek.ads.TKAdN;
import com.aotter.net.trek.ads.interfaces.AdListener;
import com.aotter.net.trek.common.Constants;
import com.aotter.net.trek.model.NativeAd;
import com.mopub.nativeads.AotterTrekCustomEvent;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.NativeImageHelper;
import java.util.ArrayList;
import java.util.Map;
import p081h.p160h.p161a.p165k.C6219a;
import p081h.p160h.p161a.p168n.C6260a;
import p081h.p160h.p161a.p169o.C6262a;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/AotterTrekNative.class */
public class AotterTrekNative extends BaseCustomEventNative {
    public static final String AOTTER_TREK_CLIENT_ID = "IYVDlkxo3djTkfVgYgBE";
    public static final String AOTTER_TREK_CLIENT_SECRET = "FvXYJZOc6CQCao73bOcilfJAULktewY2kzzkt9Zb2top5X6vFJwZ5/RVY2qOPP0hrjuH13Jo";
    public static final String DEBUG_AOTTER_TREK_CLIENT_ID = "DNgNhOwfbUkOqcQFI+uD";
    public static final String DEBUG_AOTTER_TREK_CLIENT_SECRET = "1k+sYKMLZrclCRmgw/esYNZbjAhArT7Vn42cxfn3f/tgmT0XJZI4mNiNwBYLu9GOet7YtiT6";

    /* renamed from: e */
    public static final String f8987e = "AotterTrekNative";

    /* renamed from: com.mopub.nativeads.AotterTrekNative$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/AotterTrekNative$a.class */
    public static class C3929a extends StaticNativeAd implements AdListener {

        /* renamed from: p */
        public final Context f8988p;

        /* renamed from: q */
        public final TKAdN f8989q;

        /* renamed from: r */
        public final ImpressionTracker f8990r;

        /* renamed from: s */
        public final NativeClickHandler f8991s;

        /* renamed from: t */
        public final CustomEventNative.CustomEventNativeListener f8992t;

        /* renamed from: u */
        public NativeAd f8993u;

        /* renamed from: v */
        public C6260a f8994v;
        @NonNull

        /* renamed from: w */
        public String f8995w;
        @NonNull

        /* renamed from: x */
        public String f8996x;

        /* renamed from: com.mopub.nativeads.AotterTrekNative$a$a */
        /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/AotterTrekNative$a$a.class */
        public class C3930a implements NativeImageHelper.ImageListener {
            public C3930a() {
            }

            @Override // com.mopub.nativeads.NativeImageHelper.ImageListener
            public void onImagesCached() {
                C3929a.this.f8992t.onNativeAdLoaded(C3929a.this);
            }

            @Override // com.mopub.nativeads.NativeImageHelper.ImageListener
            public void onImagesFailedToCache(NativeErrorCode nativeErrorCode) {
                C6219a.m23549a("TrekStaticNativeAd", C3929a.this.f8995w, C3929a.this.f8996x, nativeErrorCode.toString());
                C3929a.this.f8992t.onNativeAdFailed(nativeErrorCode);
            }
        }

        public C3929a(@NonNull Context context, @NonNull TKAdN tKAdN, @NonNull String str, @NonNull String str2, @NonNull C6260a aVar, @NonNull ImpressionTracker impressionTracker, @NonNull NativeClickHandler nativeClickHandler, @NonNull CustomEventNative.CustomEventNativeListener customEventNativeListener) {
            this.f8988p = context.getApplicationContext();
            this.f8989q = tKAdN;
            this.f8995w = str;
            this.f8996x = str2;
            this.f8994v = aVar;
            this.f8990r = impressionTracker;
            this.f8991s = nativeClickHandler;
            this.f8992t = customEventNativeListener;
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void clear(View view) {
            this.f8990r.removeView(view);
            this.f8991s.clearOnClickListener(view);
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void destroy() {
            this.f8990r.destroy();
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.ClickInterface
        public void handleClick(View view) {
            String unused = AotterTrekNative.f8987e;
            notifyAdClicked();
            String clickDestinationUrl = getClickDestinationUrl();
            if (!TextUtils.isEmpty(clickDestinationUrl)) {
                this.f8991s.openClickDestinationUrl(clickDestinationUrl, view);
                this.f8989q.recordTrekClick(this.f8993u);
            }
        }

        public void loadAd() {
            C6260a aVar = this.f8994v;
            if (aVar != null) {
                aVar.m23456j();
            }
            this.f8989q.setAdListener(this);
        }

        @Override // com.aotter.net.trek.ads.interfaces.AdListener
        public void onAdClicked(NativeAd nativeAd) {
        }

        @Override // com.aotter.net.trek.ads.interfaces.AdListener
        public void onAdFail() {
            C6260a aVar = this.f8994v;
            if (aVar != null) {
                aVar.m23467b(NativeErrorCode.NETWORK_NO_FILL.name());
            }
            C6219a.m23549a("TrekStaticNativeAd", this.f8995w, this.f8996x, NativeErrorCode.NETWORK_NO_FILL.toString());
            this.f8992t.onNativeAdFailed(NativeErrorCode.NETWORK_NO_FILL);
        }

        @Override // com.aotter.net.trek.ads.interfaces.AdListener
        public void onAdImpression(NativeAd nativeAd) {
        }

        @Override // com.aotter.net.trek.ads.interfaces.AdListener
        public void onAdLoaded(NativeAd nativeAd) {
            this.f8993u = nativeAd;
            if (this.f8993u == null) {
                C6260a aVar = this.f8994v;
                if (aVar != null) {
                    aVar.m23467b(NativeErrorCode.EMPTY_AD_RESPONSE.name());
                }
                C6219a.m23549a("TrekStaticNativeAd", this.f8995w, this.f8996x, NativeErrorCode.EMPTY_AD_RESPONSE.toString());
                this.f8992t.onNativeAdFailed(NativeErrorCode.EMPTY_AD_RESPONSE);
                return;
            }
            C6260a aVar2 = this.f8994v;
            if (aVar2 != null) {
                aVar2.m23467b(C6262a.EnumC6263a.NETWORK_FILL.name());
            }
            setTitle(this.f8993u.getAdTitle());
            setText(this.f8993u.getAdText());
            setMainImageUrl(this.f8993u.getAdImgMain());
            setIconImageUrl(this.f8993u.getAdImgIconHd());
            this.f8989q.urlImpression(this.f8993u);
            setClickDestinationUrl(this.f8989q.urlClick(this.f8993u));
            addExtra(AotterTrekCustomEvent.AotterTrekStaticAd.SPONSOR_CONTEXT_FOR_AD, this.f8993u.getAdSponsor());
            addExtra("advertiserName", this.f8993u.getAdAdvertiserName());
            ArrayList arrayList = new ArrayList();
            if (getMainImageUrl() != null) {
                arrayList.add(getMainImageUrl());
            }
            if (getIconImageUrl() != null) {
                arrayList.add(getIconImageUrl());
            }
            NativeImageHelper.preCacheImages(this.f8988p, arrayList, new C3930a());
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void prepare(View view) {
            this.f8990r.addView(view, this);
            this.f8991s.setOnClickListener(view, this);
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.ImpressionInterface
        public void recordImpression(View view) {
            notifyAdImpressed();
            this.f8989q.recordTrekImp(this.f8993u);
        }
    }

    /* renamed from: c */
    public final boolean m30223c(Map<String, String> map) {
        String str = map.get(AotterTrekCustomEvent.PLACE_NAME_KEY);
        return str != null && str.length() > 0;
    }

    @Override // com.mopub.nativeads.BaseCustomEventNative, com.mopub.nativeads.CustomEventNative
    public void loadNativeAd(@NonNull Context context, @NonNull CustomEventNative.CustomEventNativeListener customEventNativeListener, @NonNull Map<String, Object> map, @NonNull Map<String, String> map2) {
        super.loadNativeAd(context, customEventNativeListener, map, map2);
        C6260a aVar = this.f9009a;
        if (aVar != null) {
            aVar.m23470a(AotterTrekNative.class.getName());
        }
        if (context != null) {
            boolean isValidUsingTestAdSource = isValidUsingTestAdSource(map2);
            if (m30223c(map2)) {
                String str = map2.get(AotterTrekCustomEvent.PLACE_NAME_KEY);
                AotterTrek.init(context, isValidUsingTestAdSource ? DEBUG_AOTTER_TREK_CLIENT_ID : AOTTER_TREK_CLIENT_ID, isValidUsingTestAdSource ? DEBUG_AOTTER_TREK_CLIENT_SECRET : AOTTER_TREK_CLIENT_SECRET);
                new C3929a(context, new TKAdN(context, str, Constants.AD_TYPE_NATIVE), this.f9010b, this.f9011c, this.f9009a, new ImpressionTracker(context), new NativeClickHandler(context), customEventNativeListener).loadAd();
                return;
            }
            C6219a.m23549a(f8987e, this.f9010b, this.f9011c, NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR.toString());
            customEventNativeListener.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR);
        }
    }
}
