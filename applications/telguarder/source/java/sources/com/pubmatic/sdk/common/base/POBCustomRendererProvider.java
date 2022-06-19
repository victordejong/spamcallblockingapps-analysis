package com.pubmatic.sdk.common.base;

import android.content.Context;
import com.pubmatic.sdk.common.models.POBPartnerInfo;
import com.pubmatic.sdk.common.p019ui.POBBannerRendering;
import com.pubmatic.sdk.common.p019ui.POBInterstitialRendering;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/base/POBCustomRendererProvider.class */
public interface POBCustomRendererProvider {
    POBBannerRendering getBannerRenderer(Context context, POBPartnerInfo pOBPartnerInfo);

    POBInterstitialRendering getInterstitialRenderer(Context context, POBPartnerInfo pOBPartnerInfo);
}
