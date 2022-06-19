package io.bidmachine.nativead;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import io.bidmachine.AdProcessCallback;
import io.bidmachine.AdsType;
import io.bidmachine.BidMachineAd;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdapter;
import io.bidmachine.core.Logger;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.nativead.view.NativeMediaView;
import io.bidmachine.unified.UnifiedNativeAd;
import io.bidmachine.unified.UnifiedNativeAdRequestParams;
import java.util.Set;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/NativeAd.class */
public final class NativeAd extends BidMachineAd<NativeAd, NativeRequest, NativeAdObject, AdObjectParams, UnifiedNativeAdRequestParams, NativeListener> implements NativeContainer, NativePublicData {
    public NativeAd(Context context) {
        super(context, AdsType.Native);
    }

    private boolean hasLoadedObject() {
        if (getLoadedObject() == null) {
            Logger.log(toStringShort() + ": not loaded, please load ads first!");
            return false;
        }
        return true;
    }

    public final NativeAdObject createAdObject(ContextProvider contextProvider, NativeRequest nativeRequest, NetworkAdapter networkAdapter, AdObjectParams adObjectParams, AdProcessCallback adProcessCallback) {
        UnifiedNativeAd createNativeAd = networkAdapter.createNativeAd();
        if (createNativeAd == null) {
            return null;
        }
        return new NativeAdObject(contextProvider, adProcessCallback, nativeRequest, adObjectParams, createNativeAd);
    }

    @Override // io.bidmachine.nativead.NativePublicData
    public final String getCallToAction() {
        if (hasLoadedObject()) {
            return getLoadedObject().getCallToAction();
        }
        return null;
    }

    @Override // io.bidmachine.nativead.NativePublicData
    public final String getDescription() {
        if (hasLoadedObject()) {
            return getLoadedObject().getDescription();
        }
        return null;
    }

    @Override // io.bidmachine.nativead.NativeContainer
    public final View getProviderView(Context context) {
        if (hasLoadedObject()) {
            return getLoadedObject().getProviderView(context);
        }
        return null;
    }

    @Override // io.bidmachine.nativead.NativePublicData
    public final float getRating() {
        if (hasLoadedObject()) {
            return getLoadedObject().getRating();
        }
        return -1.0f;
    }

    @Override // io.bidmachine.nativead.NativePublicData
    public final String getTitle() {
        if (hasLoadedObject()) {
            return getLoadedObject().getTitle();
        }
        return null;
    }

    @Override // io.bidmachine.nativead.NativePublicData
    public final boolean hasVideo() {
        return hasLoadedObject() && getLoadedObject().hasVideo();
    }

    @Override // io.bidmachine.nativead.NativeContainer
    public final boolean isViewRegistered() {
        return hasLoadedObject() && getLoadedObject().isViewRegistered();
    }

    @Override // io.bidmachine.nativead.NativeContainer
    public final void registerView(ViewGroup viewGroup, View view, NativeMediaView nativeMediaView, Set<View> set) {
        if (hasLoadedObject()) {
            getLoadedObject().registerView(viewGroup, view, nativeMediaView, set);
        }
    }

    @Override // io.bidmachine.nativead.NativeContainer
    public final void unregisterView() {
        if (hasLoadedObject()) {
            getLoadedObject().unregisterView();
        }
    }
}
