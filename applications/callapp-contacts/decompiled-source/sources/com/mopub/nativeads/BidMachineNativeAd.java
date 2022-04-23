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

    /* renamed from: a  reason: collision with root package name */
    NativeAd f34459a;

    /* renamed from: b  reason: collision with root package name */
    String f34460b;

    /* renamed from: c  reason: collision with root package name */
    double f34461c;

    /* renamed from: d  reason: collision with root package name */
    String f34462d;
    private final Map<String, Object> e = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/BidMachineNativeAd$a.class */
    public final class a implements NativeListener {

        /* renamed from: b  reason: collision with root package name */
        private final CustomEventNative.CustomEventNativeListener f34464b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(CustomEventNative.CustomEventNativeListener customEventNativeListener) {
            this.f34464b = customEventNativeListener;
        }

        public final void onAdClicked(NativeAd nativeAd) {
            BidMachineNativeAd.this.notifyAdClicked();
            MoPubLog.log(MoPubLog.AdapterLogEvent.CLICKED, BidMachineNative.f34455a);
            String str = BidMachineNativeAd.this.f34460b;
            MoPub.AD_TYPE_AND_SIZE ad_type_and_size = MoPub.AD_TYPE_AND_SIZE.NATIVE;
            String unused = BidMachineNativeAd.this.f34462d;
            CallAppAdsAnalyticsManager.c("bidmachine", str, ad_type_and_size);
        }

        public final void onAdExpired(NativeAd nativeAd) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.EXPIRED, BidMachineNative.f34455a);
        }

        public final void onAdImpression(NativeAd nativeAd) {
            BidMachineNativeAd.this.notifyAdImpressed();
            MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_SUCCESS, BidMachineNative.f34455a);
            CallAppAdsAnalyticsManager.a("bidmachine", BidMachineNativeAd.this.f34460b, BidMachineNativeAd.this.f34461c, MoPub.AD_TYPE_AND_SIZE.NATIVE, BidMachineNativeAd.this.f34462d);
        }

        public final void onAdLoadFailed(NativeAd nativeAd, BMError bMError) {
            NativeErrorCode transformToMoPubNativeErrorCode = BidMachineUtils.transformToMoPubNativeErrorCode(bMError);
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, BidMachineNative.f34455a, Integer.valueOf(transformToMoPubNativeErrorCode.getIntCode()), transformToMoPubNativeErrorCode);
            this.f34464b.onNativeAdFailed(transformToMoPubNativeErrorCode);
        }

        public final void onAdLoaded(NativeAd nativeAd) {
            this.f34464b.onNativeAdLoaded(BidMachineNativeAd.this);
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, BidMachineNative.f34455a);
        }

        public final void onAdShown(NativeAd nativeAd) {
        }
    }

    public final void addExtra(String str, Object obj) {
        if (Preconditions.NoThrow.checkNotNull(str, "addExtra key is not allowed to be null")) {
            this.e.put(str, obj);
        }
    }

    @Override // com.mopub.nativeads.BaseNativeAd
    public void clear(View view) {
        this.f34459a.unregisterView();
    }

    @Override // com.mopub.nativeads.BaseNativeAd
    public void destroy() {
        NativeAd nativeAd = this.f34459a;
        if (nativeAd != null) {
            nativeAd.setListener(null);
            this.f34459a.destroy();
            this.f34459a = null;
        }
    }

    public final Object getExtra(String str) {
        if (!Preconditions.NoThrow.checkNotNull(str, "getExtra key is not allowed to be null")) {
            return null;
        }
        return this.e.get(str);
    }

    public final Map<String, Object> getExtras() {
        return new HashMap(this.e);
    }

    @Override // com.mopub.nativeads.BaseNativeAd
    public void prepare(View view) {
    }
}
