package io.bidmachine;

import android.content.Context;
import android.view.ViewGroup;
import io.bidmachine.AdListener;
import io.bidmachine.AdRequest;
import io.bidmachine.ViewAd;
import io.bidmachine.ViewAdObject;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.unified.UnifiedAdRequestParams;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/ViewAd.class */
public abstract class ViewAd<AdType extends ViewAd<AdType, AdRequestType, AdObjectType, UnifiedAdRequestParamsType, AdListenerType>, AdRequestType extends AdRequest<AdRequestType, UnifiedAdRequestParamsType>, AdObjectType extends ViewAdObject<AdRequestType, ?, UnifiedAdRequestParamsType>, UnifiedAdRequestParamsType extends UnifiedAdRequestParams, AdListenerType extends AdListener<AdType>> extends BidMachineAd<AdType, AdRequestType, AdObjectType, AdObjectParams, UnifiedAdRequestParamsType, AdListenerType> {
    public ViewAd(Context context, AdsType adsType) {
        super(context, adsType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void show(ViewGroup viewGroup) {
        ViewAdObject viewAdObject = (ViewAdObject) getLoadedObject();
        if (prepareShow() && viewAdObject != null) {
            viewAdObject.show(viewGroup);
        }
    }
}
