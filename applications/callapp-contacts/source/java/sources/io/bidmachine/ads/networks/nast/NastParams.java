package io.bidmachine.ads.networks.nast;

import android.text.TextUtils;
import io.bidmachine.MediaAssetType;
import io.bidmachine.unified.UnifiedAdCallback;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.unified.UnifiedNativeAdRequestParams;
import io.bidmachine.unified.UnifiedParams;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.IabUtils;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/ads/networks/nast/NastParams.class */
public class NastParams extends UnifiedParams {
    final String callToAction;
    final String clickUrl;
    final String description;
    final String iconUrl;
    final String imageUrl;
    final float rating;
    final String title;
    final String videoAdm;
    final String videoUrl;

    public NastParams(UnifiedMediationParams unifiedMediationParams) {
        super(unifiedMediationParams);
        this.title = unifiedMediationParams.getString("title");
        this.description = unifiedMediationParams.getString("description");
        this.callToAction = unifiedMediationParams.getString("cta");
        this.rating = unifiedMediationParams.getFloat("rating");
        this.iconUrl = unifiedMediationParams.getString(IabUtils.KEY_ICON_URL);
        this.imageUrl = unifiedMediationParams.getString(IabUtils.KEY_IMAGE_URL);
        this.videoUrl = unifiedMediationParams.getString(IabUtils.KEY_VIDEO_URL);
        this.videoAdm = unifiedMediationParams.getString(IabUtils.KEY_VIDEO_ADM);
        this.clickUrl = unifiedMediationParams.getString(IabUtils.KEY_CLICK_URL);
    }

    @Override // io.bidmachine.unified.UnifiedParams
    public boolean isValid(UnifiedAdCallback unifiedAdCallback) {
        if (TextUtils.isEmpty(this.title)) {
            unifiedAdCallback.onAdLoadFailed(BMError.requestError("title not provided"));
            return false;
        } else if (!TextUtils.isEmpty(this.callToAction)) {
            return true;
        } else {
            unifiedAdCallback.onAdLoadFailed(BMError.requestError("callToAction not provided"));
            return false;
        }
    }

    public boolean isValid(UnifiedNativeAdRequestParams unifiedNativeAdRequestParams, UnifiedAdCallback unifiedAdCallback) {
        if (!isValid(unifiedAdCallback)) {
            return false;
        }
        if (unifiedNativeAdRequestParams.containsAssetType(MediaAssetType.Icon) && TextUtils.isEmpty(this.iconUrl)) {
            unifiedAdCallback.onAdLoadFailed(BMError.requestError("Your request settings require ICON, but it not provided in response"));
            return false;
        } else if (unifiedNativeAdRequestParams.containsAssetType(MediaAssetType.Image) && TextUtils.isEmpty(this.imageUrl)) {
            unifiedAdCallback.onAdLoadFailed(BMError.requestError("Your request settings require IMAGE, but it not provided in response"));
            return false;
        } else if (!unifiedNativeAdRequestParams.containsAssetType(MediaAssetType.Video) || !TextUtils.isEmpty(this.videoAdm) || !TextUtils.isEmpty(this.videoUrl)) {
            return true;
        } else {
            unifiedAdCallback.onAdLoadFailed(BMError.requestError("Your request settings require VIDEO, but it not provided in response"));
            return false;
        }
    }
}
