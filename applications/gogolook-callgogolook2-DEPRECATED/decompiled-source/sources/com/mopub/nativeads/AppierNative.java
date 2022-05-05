package com.mopub.nativeads;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.NativeImageHelper;
import java.util.Map;
import org.json.JSONException;
import p081h.p115c.p116a.C5716a;
import p081h.p115c.p116a.C5740h;
import p081h.p115c.p116a.EnumC5731e;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/AppierNative.class */
public class AppierNative extends CustomEventNative {

    /* renamed from: com.mopub.nativeads.AppierNative$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/AppierNative$a.class */
    public static class C3931a extends StaticNativeAd implements C5740h.AbstractC5743c {
        @NonNull

        /* renamed from: p */
        public final Context f8998p;
        @NonNull

        /* renamed from: q */
        public final ImpressionTracker f8999q;
        @NonNull

        /* renamed from: r */
        public final NativeClickHandler f9000r;
        @NonNull

        /* renamed from: s */
        public final CustomEventNative.CustomEventNativeListener f9001s;
        @NonNull

        /* renamed from: t */
        public C5740h f9002t;

        /* renamed from: u */
        public Handler f9003u = new Handler(Looper.getMainLooper());

        /* renamed from: com.mopub.nativeads.AppierNative$a$a */
        /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/AppierNative$a$a.class */
        public class RunnableC3932a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C5740h f9004a;

            /* renamed from: com.mopub.nativeads.AppierNative$a$a$a */
            /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/AppierNative$a$a$a.class */
            public class C3933a implements NativeImageHelper.ImageListener {
                public C3933a() {
                }

                @Override // com.mopub.nativeads.NativeImageHelper.ImageListener
                public void onImagesCached() {
                    C3931a.this.f9001s.onNativeAdLoaded(C3931a.this);
                }

                @Override // com.mopub.nativeads.NativeImageHelper.ImageListener
                public void onImagesFailedToCache(NativeErrorCode nativeErrorCode) {
                    C3931a.this.f9001s.onNativeAdFailed(nativeErrorCode);
                }
            }

            public RunnableC3932a(C5740h hVar) {
                this.f9004a = hVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    C3931a.this.setTitle(this.f9004a.m24599u());
                    C3931a.this.setText(this.f9004a.m24600t());
                    C3931a.this.setIconImageUrl(this.f9004a.m24605o());
                    C3931a.this.setMainImageUrl(this.f9004a.m24603q());
                    C3931a.this.setCallToAction(this.f9004a.m24607m());
                    C3931a.this.setClickDestinationUrl(this.f9004a.m24606n());
                    C3931a.this.setPrivacyInformationIconImageUrl(this.f9004a.m24601s());
                    C3931a.this.setPrivacyInformationIconClickThroughUrl(this.f9004a.m24602r());
                    NativeImageHelper.preCacheImages(C3931a.this.f8998p, this.f9004a.m24608l(), new C3933a());
                } catch (JSONException e) {
                    C3931a.this.f9001s.onNativeAdFailed(NativeErrorCode.INVALID_RESPONSE);
                }
            }
        }

        public C3931a(@NonNull Context context, @NonNull ImpressionTracker impressionTracker, @NonNull NativeClickHandler nativeClickHandler, @NonNull CustomEventNative.CustomEventNativeListener customEventNativeListener) {
            this.f8998p = context;
            this.f8999q = impressionTracker;
            this.f9000r = nativeClickHandler;
            this.f9001s = customEventNativeListener;
            this.f9002t = new C5740h(this.f8998p, this);
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void clear(@NonNull View view) {
            C5716a.m24661a("[Appier Mediation]", "AppierNative.AppierStaticNativeAd.clear()");
            this.f8999q.removeView(view);
            this.f9000r.clearOnClickListener(view);
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void destroy() {
            C5716a.m24661a("[Appier Mediation]", "AppierNative.AppierStaticNativeAd.destroy()");
            this.f8999q.destroy();
            super.destroy();
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.ClickInterface
        public void handleClick(@Nullable View view) {
            C5716a.m24661a("[Appier Mediation]", "AppierNative.AppierStaticNativeAd.handleClick()");
            notifyAdClicked();
            this.f9000r.openClickDestinationUrl(getClickDestinationUrl(), view);
        }

        public void loadAd(String str) {
            this.f9002t.m24613a(str);
        }

        @Override // p081h.p115c.p116a.C5740h.AbstractC5743c
        public void onAdLoadFail(EnumC5731e eVar, C5740h hVar) {
            C5716a.m24661a("[Appier Mediation]", "AppierNative.AppierStaticNativeAd.onAdLoadFail() (Custom Callback)", eVar.toString());
            if (eVar == EnumC5731e.NETWORK_ERROR) {
                this.f9001s.onNativeAdFailed(NativeErrorCode.NETWORK_INVALID_STATE);
            } else if (eVar == EnumC5731e.BAD_REQUEST) {
                this.f9001s.onNativeAdFailed(NativeErrorCode.NETWORK_INVALID_REQUEST);
            } else if (eVar == EnumC5731e.INTERNAL_SERVER_ERROR) {
                this.f9001s.onNativeAdFailed(NativeErrorCode.NETWORK_INVALID_STATE);
            }
        }

        @Override // p081h.p115c.p116a.C5740h.AbstractC5743c
        public void onAdLoaded(C5740h hVar) {
            C5716a.m24661a("[Appier Mediation]", "AppierNative.AppierStaticNativeAd.onAdLoaded() (Custom Callback)");
            this.f9002t = hVar;
            this.f9003u.post(new RunnableC3932a(hVar));
        }

        @Override // p081h.p115c.p116a.C5740h.AbstractC5743c
        public void onAdNoBid(C5740h hVar) {
            C5716a.m24661a("[Appier Mediation]", "AppierNative.AppierStaticNativeAd.onAdNoBid() (Custom Callback)");
            this.f9001s.onNativeAdFailed(NativeErrorCode.NETWORK_NO_FILL);
        }

        @Override // p081h.p115c.p116a.C5740h.AbstractC5743c
        public void onImpressionRecordFail(EnumC5731e eVar, C5740h hVar) {
            C5716a.m24661a("[Appier Mediation]", "AppierNative.AppierStaticNativeAd.onImpressionRecordFail() (Custom Callback)");
        }

        @Override // p081h.p115c.p116a.C5740h.AbstractC5743c
        public void onImpressionRecorded(C5740h hVar) {
            C5716a.m24661a("[Appier Mediation]", "AppierNative.AppierStaticNativeAd.onImpressionRecorded() (Custom Callback)");
            notifyAdImpressed();
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void prepare(@NonNull View view) {
            C5716a.m24661a("[Appier Mediation]", "AppierNative.AppierStaticNativeAd.prepare()");
            this.f8999q.addView(view, this);
            this.f9000r.setOnClickListener(view, this);
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.ImpressionInterface
        public void recordImpression(@NonNull View view) {
            C5716a.m24661a("[Appier Mediation]", "AppierNative.AppierStaticNativeAd.recordImpression()");
            try {
                this.f9002t.m24598v();
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: a */
    public final String m30219a(Map<String, Object> map, Map<String, String> map2) {
        Object obj = map.get("com_appier_zone_id");
        return obj != null ? obj.toString() : map2.get("zoneId");
    }

    @Override // com.mopub.nativeads.CustomEventNative
    public void loadNativeAd(@NonNull Context context, @NonNull CustomEventNative.CustomEventNativeListener customEventNativeListener, @NonNull Map<String, Object> map, @NonNull Map<String, String> map2) {
        C5716a.m24661a("[Appier Mediation]", "AppierNative.loadNativeAd()");
        if (map2.isEmpty()) {
            customEventNativeListener.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR);
        } else {
            new C3931a(context, new ImpressionTracker(context), new NativeClickHandler(context), customEventNativeListener).loadAd(m30219a(map, map2));
        }
    }
}
