package io.bidmachine.ads.networks.nast;

import io.bidmachine.AdsType;
import io.bidmachine.NetworkAdapter;
import io.bidmachine.unified.UnifiedNativeAd;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/ads/networks/nast/NastAdapter.class */
public class NastAdapter extends NetworkAdapter {
    public NastAdapter() {
        super("nast", "1.0", "1.7.1.1", new AdsType[]{AdsType.Native});
    }

    @Override // io.bidmachine.NetworkAdapter
    public UnifiedNativeAd createNativeAd() {
        return new a();
    }
}
