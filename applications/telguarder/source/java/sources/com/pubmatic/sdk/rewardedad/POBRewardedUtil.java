package com.pubmatic.sdk.rewardedad;

import android.content.Context;
import com.pubmatic.sdk.rewardedad.renderer.POBRewardedAdRenderer;
import com.pubmatic.sdk.rewardedad.renderer.POBRewardedAdRendering;
import com.pubmatic.sdk.rewardedad.renderer.POBSkipConfirmationInfo;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/rewardedad/POBRewardedUtil.class */
public final class POBRewardedUtil {
    public static POBRewardedAdRendering getRewardedRenderer(Context context, int i, POBSkipConfirmationInfo pOBSkipConfirmationInfo) {
        return new POBRewardedAdRenderer(context, i, pOBSkipConfirmationInfo);
    }
}
