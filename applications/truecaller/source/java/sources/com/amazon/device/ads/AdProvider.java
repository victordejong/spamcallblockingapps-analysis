package com.amazon.device.ads;

import android.view.ViewGroup;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/AdProvider.class */
public interface AdProvider {
    String getFlavor();

    String[] getProprietaryKeys();

    boolean matches(String str, String str2, DTBAdResponse dTBAdResponse);

    void onBidRequested(Map<String, Object> map);

    void onBidResponse(DTBAdResponse dTBAdResponse);

    void takeOwnership(ViewGroup viewGroup, DTBAdResponse dTBAdResponse, DTBRendererObserver dTBRendererObserver, DTBRenderer dTBRenderer, Map<String, Object> map);
}
