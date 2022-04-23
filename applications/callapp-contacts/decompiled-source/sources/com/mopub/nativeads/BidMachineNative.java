package com.mopub.nativeads;

import android.content.Context;
import com.callapp.contacts.util.ads.AdUtils;
import com.mopub.common.DataKeys;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.BidMachineAdapterConfiguration;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.nativeads.BidMachineNativeAd;
import com.mopub.nativeads.CustomEventNative;
import io.bidmachine.BidMachineFetcher;
import io.bidmachine.nativead.NativeAd;
import io.bidmachine.nativead.NativeRequest;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/BidMachineNative.class */
public class BidMachineNative extends CustomEventNative {

    /* renamed from: a  reason: collision with root package name */
    static final String f34455a = "BidMachineNative";

    /* renamed from: b  reason: collision with root package name */
    private BidMachineNativeAd f34456b;

    /* renamed from: d  reason: collision with root package name */
    private String f34458d;
    private String f;
    private double e = 0.0d;

    /* renamed from: c  reason: collision with root package name */
    private BidMachineAdapterConfiguration f34457c = new BidMachineAdapterConfiguration();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.nativeads.CustomEventNative
    public final void a() {
        BidMachineNativeAd bidMachineNativeAd = this.f34456b;
        if (bidMachineNativeAd != null) {
            bidMachineNativeAd.destroy();
            this.f34456b = null;
        }
    }

    @Override // com.mopub.nativeads.CustomEventNative
    public void loadNativeAd(Context context, CustomEventNative.CustomEventNativeListener customEventNativeListener, Map<String, Object> map, Map<String, String> map2) {
        NativeRequest nativeRequest;
        this.f34457c.initializeNetwork(context, map2);
        this.e = AdUtils.a(map2);
        this.f = map2.get("app_bidder_request_id");
        this.f34458d = map2.get(DataKeys.AD_UNIT_ID_KEY);
        if (map.containsKey(BidMachineFetcher.KEY_ID)) {
            nativeRequest = (NativeRequest) map.get(BidMachineFetcher.KEY_ID);
            if (nativeRequest == null) {
                MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
                String str = f34455a;
                MoPubLog.log(adapterLogEvent, str, "Fetched AdRequest not found");
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, str, Integer.valueOf(MoPubErrorCode.NO_FILL.getIntCode()), MoPubErrorCode.NO_FILL);
            } else {
                MoPubLog.AdapterLogEvent adapterLogEvent2 = MoPubLog.AdapterLogEvent.CUSTOM;
                String str2 = f34455a;
                MoPubLog.log(adapterLogEvent2, str2, "Fetched request resolved: " + nativeRequest.getAuctionResult());
            }
        } else {
            nativeRequest = null;
        }
        this.f34457c.setCachedInitializationParameters(context, map2);
        if (nativeRequest != null) {
            BidMachineNativeAd bidMachineNativeAd = new BidMachineNativeAd();
            this.f34456b = bidMachineNativeAd;
            String str3 = this.f34458d;
            double d2 = this.e;
            String str4 = this.f;
            bidMachineNativeAd.f34459a = new NativeAd(context);
            bidMachineNativeAd.f34459a.setListener(new BidMachineNativeAd.a(customEventNativeListener));
            bidMachineNativeAd.f34459a.load(nativeRequest);
            bidMachineNativeAd.f34460b = str3;
            bidMachineNativeAd.f34461c = d2;
            bidMachineNativeAd.f34462d = str4;
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, f34455a);
            return;
        }
        customEventNativeListener.onNativeAdFailed(NativeErrorCode.NETWORK_NO_FILL);
    }
}
