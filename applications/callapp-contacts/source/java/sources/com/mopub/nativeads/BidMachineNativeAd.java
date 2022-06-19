package com.mopub.nativeads;

import android.view.View;
import com.callapp.contacts.manager.CallAppAdsAnalyticsManager;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.BidMachineUtils;
import com.mopub.nativeads.CustomEventNative;
import io.bidmachine.nativead.NativeAd;
import io.bidmachine.nativead.NativeListener;
import io.bidmachine.utils.BMError;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/BidMachineNativeAd.class */
public class BidMachineNativeAd extends BaseNativeAd {

    /* renamed from: a */
    NativeAd f59807a;

    /* renamed from: b */
    String f59808b;

    /* renamed from: c */
    double f59809c;

    /* renamed from: d */
    String f59810d;

    /* renamed from: e */
    private final Map<String, Object> f59811e = new HashMap();

    /* renamed from: com.mopub.nativeads.BidMachineNativeAd$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/BidMachineNativeAd$a.class */
    public final class C16908a implements NativeListener {

        /* renamed from: b */
        private final CustomEventNative.CustomEventNativeListener f59813b;

        public C16908a(CustomEventNative.CustomEventNativeListener customEventNativeListener) {
            BidMachineNativeAd.this = r4;
            this.f59813b = customEventNativeListener;
        }

        public final void onAdClicked(NativeAd nativeAd) {
            BidMachineNativeAd.this.notifyAdClicked();
            MoPubLog.log(MoPubLog.AdapterLogEvent.CLICKED, BidMachineNative.f59801a);
            String str = BidMachineNativeAd.this.f59808b;
            MoPub.AD_TYPE_AND_SIZE ad_type_and_size = MoPub.AD_TYPE_AND_SIZE.NATIVE;
            String unused = BidMachineNativeAd.this.f59810d;
            CallAppAdsAnalyticsManager.m28737c("bidmachine", str, ad_type_and_size);
        }

        public final void onAdExpired(NativeAd nativeAd) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.EXPIRED, BidMachineNative.f59801a);
        }

        public final void onAdImpression(NativeAd nativeAd) {
            BidMachineNativeAd.this.notifyAdImpressed();
            MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_SUCCESS, BidMachineNative.f59801a);
            CallAppAdsAnalyticsManager.m28740a("bidmachine", BidMachineNativeAd.this.f59808b, BidMachineNativeAd.this.f59809c, MoPub.AD_TYPE_AND_SIZE.NATIVE, BidMachineNativeAd.this.f59810d);
        }

        public final void onAdLoadFailed(NativeAd nativeAd, BMError bMError) {
            NativeErrorCode transformToMoPubNativeErrorCode = BidMachineUtils.transformToMoPubNativeErrorCode(bMError);
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, BidMachineNative.f59801a, Integer.valueOf(transformToMoPubNativeErrorCode.getIntCode()), transformToMoPubNativeErrorCode);
            this.f59813b.onNativeAdFailed(transformToMoPubNativeErrorCode);
        }

        public final void onAdLoaded(NativeAd nativeAd) {
            this.f59813b.onNativeAdLoaded(BidMachineNativeAd.this);
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, BidMachineNative.f59801a);
        }

        public final void onAdShown(NativeAd nativeAd) {
        }
    }

    public final void addExtra(String str, Object obj) {
        if (!Preconditions.NoThrow.checkNotNull(str, "addExtra key is not allowed to be null")) {
            return;
        }
        this.f59811e.put(str, obj);
    }

    @Override // com.mopub.nativeads.BaseNativeAd
    public void clear(View view) {
        this.f59807a.unregisterView();
    }

    @Override // com.mopub.nativeads.BaseNativeAd
    public void destroy() {
        NativeAd nativeAd = this.f59807a;
        if (nativeAd != null) {
            nativeAd.setListener(null);
            this.f59807a.destroy();
            this.f59807a = null;
        }
    }

    public final Object getExtra(String str) {
        if (!Preconditions.NoThrow.checkNotNull(str, "getExtra key is not allowed to be null")) {
            return null;
        }
        return this.f59811e.get(str);
    }

    public final Map<String, Object> getExtras() {
        return new HashMap(this.f59811e);
    }

    @Override // com.mopub.nativeads.BaseNativeAd
    public void prepare(View view) {
    }
}
