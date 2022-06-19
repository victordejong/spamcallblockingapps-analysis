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

    /* renamed from: a */
    static final String f59801a = "BidMachineNative";

    /* renamed from: b */
    private BidMachineNativeAd f59802b;

    /* renamed from: d */
    private String f59804d;

    /* renamed from: f */
    private String f59806f;

    /* renamed from: e */
    private double f59805e = 0.0d;

    /* renamed from: c */
    private BidMachineAdapterConfiguration f59803c = new BidMachineAdapterConfiguration();

    @Override // com.mopub.nativeads.CustomEventNative
    /* renamed from: a */
    public final void mo6188a() {
        BidMachineNativeAd bidMachineNativeAd = this.f59802b;
        if (bidMachineNativeAd != null) {
            bidMachineNativeAd.destroy();
            this.f59802b = null;
        }
    }

    @Override // com.mopub.nativeads.CustomEventNative
    public void loadNativeAd(Context context, CustomEventNative.CustomEventNativeListener customEventNativeListener, Map<String, Object> map, Map<String, String> map2) {
        NativeRequest nativeRequest;
        this.f59803c.initializeNetwork(context, map2);
        this.f59805e = AdUtils.m27266a(map2);
        this.f59806f = map2.get("app_bidder_request_id");
        this.f59804d = map2.get(DataKeys.AD_UNIT_ID_KEY);
        if (map.containsKey(BidMachineFetcher.KEY_ID)) {
            nativeRequest = (NativeRequest) map.get(BidMachineFetcher.KEY_ID);
            if (nativeRequest == null) {
                MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
                String str = f59801a;
                MoPubLog.log(adapterLogEvent, str, "Fetched AdRequest not found");
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, str, Integer.valueOf(MoPubErrorCode.NO_FILL.getIntCode()), MoPubErrorCode.NO_FILL);
            } else {
                MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, f59801a, "Fetched request resolved: " + nativeRequest.getAuctionResult());
            }
        } else {
            nativeRequest = null;
        }
        this.f59803c.setCachedInitializationParameters(context, map2);
        if (nativeRequest == null) {
            customEventNativeListener.onNativeAdFailed(NativeErrorCode.NETWORK_NO_FILL);
            return;
        }
        BidMachineNativeAd bidMachineNativeAd = new BidMachineNativeAd();
        this.f59802b = bidMachineNativeAd;
        String str2 = this.f59804d;
        double d = this.f59805e;
        String str3 = this.f59806f;
        bidMachineNativeAd.f59807a = new NativeAd(context);
        bidMachineNativeAd.f59807a.setListener(new BidMachineNativeAd.C16908a(customEventNativeListener));
        bidMachineNativeAd.f59807a.load(nativeRequest);
        bidMachineNativeAd.f59808b = str2;
        bidMachineNativeAd.f59809c = d;
        bidMachineNativeAd.f59810d = str3;
        MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, f59801a);
    }
}
