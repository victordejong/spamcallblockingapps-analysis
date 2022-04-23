package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import com.mopub.nativeads.CustomEventNative;
import com.taiwanmobile.p055pt.adp.view.TWMAd;
import com.taiwanmobile.p055pt.adp.view.TWMAdRequest;
import com.taiwanmobile.p055pt.adp.view.TWMAdViewListener;
import com.taiwanmobile.p055pt.adp.view.TWMNativeAd;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p160h.p161a.p165k.C6219a;
import p081h.p160h.p161a.p168n.C6260a;
import p081h.p160h.p161a.p169o.C6262a;
import p081h.p447o.p448a.p449a.C10832d;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/TAMediaCustomEvent.class */
public class TAMediaCustomEvent extends BaseCustomEventNative {

    /* renamed from: e */
    public TWMNativeAd f9294e;

    /* renamed from: com.mopub.nativeads.TAMediaCustomEvent$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/TAMediaCustomEvent$a.class */
    public static class C4019a extends StaticNativeAd implements TWMAdViewListener {

        /* renamed from: p */
        public final CustomEventNative.CustomEventNativeListener f9295p;

        /* renamed from: q */
        public final TWMNativeAd f9296q;

        /* renamed from: r */
        public final C6260a f9297r;
        @NonNull

        /* renamed from: s */
        public final String f9298s;
        @NonNull

        /* renamed from: t */
        public final String f9299t;
        @NonNull

        /* renamed from: u */
        public final ImpressionTracker f9300u;
        @NonNull

        /* renamed from: v */
        public final NativeClickHandler f9301v;

        public C4019a(TWMNativeAd tWMNativeAd, @NonNull String str, @NonNull String str2, C6260a aVar, @NonNull ImpressionTracker impressionTracker, @NonNull NativeClickHandler nativeClickHandler, CustomEventNative.CustomEventNativeListener customEventNativeListener) {
            this.f9295p = customEventNativeListener;
            this.f9300u = impressionTracker;
            this.f9301v = nativeClickHandler;
            this.f9296q = tWMNativeAd;
            this.f9298s = str;
            this.f9299t = str2;
            this.f9297r = aVar;
        }

        /* renamed from: a */
        public final NativeErrorCode m30071a(TWMAdRequest.ErrorCode errorCode) {
            return errorCode == TWMAdRequest.ErrorCode.INTERNAL_ERROR ? NativeErrorCode.UNSPECIFIED : errorCode == TWMAdRequest.ErrorCode.INVALID_REQUEST ? NativeErrorCode.NETWORK_INVALID_REQUEST : errorCode == TWMAdRequest.ErrorCode.NETWORK_ERROR ? NativeErrorCode.NETWORK_INVALID_STATE : errorCode == TWMAdRequest.ErrorCode.NO_FILL ? NativeErrorCode.NETWORK_NO_FILL : NativeErrorCode.UNSPECIFIED;
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void clear(@NonNull View view) {
            this.f9300u.removeView(view);
            this.f9301v.clearOnClickListener(view);
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void destroy() {
            this.f9300u.destroy();
            this.f9296q.destroy();
            super.destroy();
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.ClickInterface
        public void handleClick(@NonNull View view) {
            this.f9296q.handleClick();
            notifyAdClicked();
        }

        @Override // com.taiwanmobile.p055pt.adp.view.TWMAdViewListener
        public void onDismissScreen(TWMAd tWMAd) {
        }

        @Override // com.taiwanmobile.p055pt.adp.view.TWMAdViewListener
        public void onFailedToReceiveAd(TWMAd tWMAd, TWMAdRequest.ErrorCode errorCode) {
            NativeErrorCode a = m30071a(errorCode);
            if (this.f9297r != null) {
                String str = null;
                if (a == NativeErrorCode.UNSPECIFIED) {
                    str = null;
                    if (errorCode != null) {
                        str = "errorCode: " + errorCode.name();
                    }
                }
                this.f9297r.m23467b(C6260a.m23469a(a.name(), str));
            }
            C6219a.m23549a("TWMediaStaticNativeAd", this.f9298s, this.f9299t, a.toString());
            this.f9295p.onNativeAdFailed(a);
        }

        @Override // com.taiwanmobile.p055pt.adp.view.TWMAdViewListener
        public void onLeaveApplication(TWMAd tWMAd) {
        }

        @Override // com.taiwanmobile.p055pt.adp.view.TWMAdViewListener
        public void onPresentScreen(TWMAd tWMAd) {
        }

        @Override // com.taiwanmobile.p055pt.adp.view.TWMAdViewListener
        public void onReceiveAd(TWMAd tWMAd) {
            if (this.f9296q.isReady()) {
                JSONObject nativeAdContent = this.f9296q.getNativeAdContent();
                try {
                    String string = nativeAdContent.has(TWMNativeAd.LONGSUBJECT) ? nativeAdContent.getString(TWMNativeAd.LONGSUBJECT) : null;
                    String string2 = nativeAdContent.has(TWMNativeAd.BODY) ? nativeAdContent.getString(TWMNativeAd.BODY) : null;
                    String string3 = nativeAdContent.has(TWMNativeAd.ICONSQUARE) ? nativeAdContent.getString(TWMNativeAd.ICONSQUARE) : null;
                    String string4 = nativeAdContent.has(TWMNativeAd.IMAGE1200X627) ? nativeAdContent.getString(TWMNativeAd.IMAGE1200X627) : null;
                    String string5 = nativeAdContent.has(TWMNativeAd.IMAGE1280X720) ? nativeAdContent.getString(TWMNativeAd.IMAGE1280X720) : null;
                    String string6 = nativeAdContent.has("nurl") ? nativeAdContent.getString("nurl") : null;
                    if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string6) && (!TextUtils.isEmpty(string4) || !TextUtils.isEmpty(string5) || !TextUtils.isEmpty(string3))) {
                        if (this.f9297r != null) {
                            this.f9297r.m23467b(C6262a.EnumC6263a.NETWORK_FILL.name());
                        }
                        setTitle(string);
                        setClickDestinationUrl(string6);
                        if (!TextUtils.isEmpty(string2)) {
                            setText(string2);
                        }
                        if (!TextUtils.isEmpty(string4)) {
                            setMainImageUrl(string4);
                        } else if (!TextUtils.isEmpty(string5)) {
                            setMainImageUrl(string5);
                        }
                        if (!TextUtils.isEmpty(string3)) {
                            setIconImageUrl(string3);
                        }
                        if (this.f9295p != null) {
                            this.f9295p.onNativeAdLoaded(this);
                            return;
                        }
                        return;
                    }
                    NativeErrorCode nativeErrorCode = NativeErrorCode.NETWORK_INVALID_STATE;
                    if (this.f9297r != null) {
                        this.f9297r.m23467b(C6260a.m23469a(nativeErrorCode.name(), null));
                    }
                    C6219a.m23549a("TWMediaStaticNativeAd", this.f9298s, this.f9299t, nativeErrorCode.toString());
                    this.f9295p.onNativeAdFailed(nativeErrorCode);
                } catch (JSONException e) {
                    C6260a aVar = this.f9297r;
                    if (aVar != null) {
                        aVar.m23467b(C6260a.m23469a(NativeErrorCode.NETWORK_INVALID_STATE.name(), null));
                    }
                    if (this.f9295p != null) {
                        C6219a.m23549a("TWMediaStaticNativeAd", this.f9298s, this.f9299t, NativeErrorCode.NETWORK_INVALID_STATE.toString());
                    }
                    this.f9295p.onNativeAdFailed(NativeErrorCode.NETWORK_INVALID_STATE);
                }
            }
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void prepare(View view) {
            this.f9300u.addView(view, this);
            this.f9301v.setOnClickListener(view, this);
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.ImpressionInterface
        public void recordImpression(@NonNull View view) {
            notifyAdImpressed();
        }
    }

    /* renamed from: c */
    public final String m30072c(Map<String, String> map) {
        if (map.containsKey("adUnitId")) {
            return map.get("adUnitId");
        }
        return null;
    }

    @Override // com.mopub.nativeads.BaseCustomEventNative, com.mopub.nativeads.CustomEventNative
    public void loadNativeAd(@NonNull Context context, @NonNull CustomEventNative.CustomEventNativeListener customEventNativeListener, @NonNull Map<String, Object> map, @NonNull Map<String, String> map2) {
        super.loadNativeAd(context, customEventNativeListener, map, map2);
        C6260a aVar = this.f9009a;
        if (aVar != null) {
            aVar.m23470a(TAMediaCustomEvent.class.getName());
        }
        String c = m30072c(map2);
        boolean isValidUsingTestAdSource = isValidUsingTestAdSource(map2);
        if (TextUtils.isEmpty(c)) {
            C6219a.m23549a("TAMediaMopubNative", this.f9010b, this.f9011c, NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR.toString());
            customEventNativeListener.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        this.f9294e = new TWMNativeAd(context, c);
        C4019a aVar2 = new C4019a(this.f9294e, this.f9010b, this.f9011c, this.f9009a, new ImpressionTracker(context), new NativeClickHandler(context), customEventNativeListener);
        TWMAdRequest tWMAdRequest = new TWMAdRequest();
        if (isValidUsingTestAdSource) {
            tWMAdRequest.addTestDevice(C10832d.m10460q(context));
        }
        this.f9294e.setAdListener(aVar2);
        C6260a aVar3 = this.f9009a;
        if (aVar3 != null) {
            aVar3.m23456j();
        }
        this.f9294e.loadAd(tWMAdRequest);
    }
}
