package io.bidmachine;

import android.content.Context;
import io.bidmachine.AdListener;
import io.bidmachine.FullScreenAd;
import io.bidmachine.FullScreenAdObject;
import io.bidmachine.FullScreenAdRequest;
import io.bidmachine.core.Utils;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.unified.UnifiedFullscreenAdRequestParams;
import io.bidmachine.utils.BMError;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/FullScreenAd.class */
public abstract class FullScreenAd<SelfType extends FullScreenAd<SelfType, AdRequestType, AdObjectType, ListenerType>, AdRequestType extends FullScreenAdRequest<AdRequestType>, AdObjectType extends FullScreenAdObject<AdRequestType>, ListenerType extends AdListener<SelfType>> extends BidMachineAd<SelfType, AdRequestType, AdObjectType, AdObjectParams, UnifiedFullscreenAdRequestParams, ListenerType> {
    public FullScreenAd(Context context, AdsType adsType) {
        super(context, adsType);
    }

    @Override // io.bidmachine.BidMachineAd, io.bidmachine.IAd
    public boolean canShow() {
        return super.canShow() && Utils.isNetworkAvailable(getContext());
    }

    public void show() {
        FullScreenAdObject fullScreenAdObject = (FullScreenAdObject) getLoadedObject();
        if (prepareShow() && fullScreenAdObject != null) {
            if (!Utils.isNetworkAvailable(getContext())) {
                this.processCallback.processShowFail(BMError.Connection);
            } else {
                fullScreenAdObject.show(getContext());
            }
        }
    }
}
