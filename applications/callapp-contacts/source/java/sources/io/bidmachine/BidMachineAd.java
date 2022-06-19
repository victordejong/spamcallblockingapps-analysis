package io.bidmachine;

import android.content.Context;
import android.text.TextUtils;
import com.explorestack.protobuf.adcom.C9813Ad;
import com.explorestack.protobuf.openrtb.Response;
import io.bidmachine.AdListener;
import io.bidmachine.AdRequest;
import io.bidmachine.IAd;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.models.AdObject;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.models.AuctionResult;
import io.bidmachine.unified.UnifiedAdRequestParams;
import io.bidmachine.utils.BMError;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/BidMachineAd.class */
public abstract class BidMachineAd<SelfType extends IAd, AdRequestType extends AdRequest<AdRequestType, UnifiedAdRequestParamsType>, AdObjectType extends AdObject<AdObjectParamsType, UnifiedAdRequestParamsType, ?>, AdObjectParamsType extends AdObjectParams, UnifiedAdRequestParamsType extends UnifiedAdRequestParams, AdListenerType extends AdListener<SelfType>> implements IAd<SelfType, AdRequestType> {
    AdRequestType adRequest;
    private final AdsType adsType;
    private String cachedClassTag;
    private final Context context;
    private final ContextProvider contextProvider;
    private boolean isClickTracked;
    private boolean isCloseTracked;
    private boolean isFinishTracked;
    private boolean isImpressionTracked;
    private boolean isShownTracked;
    private AdListenerType listener;
    private AdObjectType loadedObject;
    private EnumC17788a currentState = EnumC17788a.Idle;
    final TrackingObject trackingObject = new TrackingObject() { // from class: io.bidmachine.BidMachineAd.1
        @Override // io.bidmachine.TrackingObject
        public final Object getTrackingKey() {
            AuctionResult auctionResult = BidMachineAd.this.getAuctionResult();
            return auctionResult != null ? auctionResult.getId() : "-1";
        }

        @Override // io.bidmachine.TrackingObject
        public final List<String> getTrackingUrls(TrackEventType trackEventType) {
            if (BidMachineAd.this.loadedObject == null || BidMachineAd.this.loadedObject.getParams() == null) {
                return null;
            }
            return BidMachineAd.this.loadedObject.getParams().getTrackUrls(trackEventType);
        }
    };
    private final AdRequest.AdRequestListener<AdRequestType> adRequestListener = (AdRequest.AdRequestListener<AdRequestType>) new AdRequest.AdRequestListener<AdRequestType>() { // from class: io.bidmachine.BidMachineAd.2
        @Override // io.bidmachine.AdRequest.AdRequestListener
        public final void onRequestExpired(AdRequestType adrequesttype) {
            if (adrequesttype == BidMachineAd.this.adRequest) {
                BidMachineAd.this.processCallback.processExpired();
            }
        }

        @Override // io.bidmachine.AdRequest.AdRequestListener
        public final void onRequestFailed(AdRequestType adrequesttype, BMError bMError) {
            if (adrequesttype == BidMachineAd.this.adRequest) {
                BidMachineAd.this.processRequestFail(bMError);
            }
        }

        @Override // io.bidmachine.AdRequest.AdRequestListener
        public final void onRequestSuccess(AdRequestType adrequesttype, AuctionResult auctionResult) {
            if (adrequesttype == BidMachineAd.this.adRequest) {
                BidMachineAd.this.processRequestSuccess(adrequesttype, adrequesttype.seatBidResult, adrequesttype.bidResult, adrequesttype.adResult);
            }
        }
    };
    private final AdRequest.AbstractC17756b<AdRequestType> internalAdRequestListener = (AdRequest.AbstractC17756b<AdRequestType>) new AdRequest.AbstractC17756b<AdRequestType>() { // from class: io.bidmachine.BidMachineAd.3
        @Override // io.bidmachine.AdRequest.AbstractC17756b
        public final void onRequestDestroyed(AdRequest adRequest) {
            if (adRequest == BidMachineAd.this.adRequest) {
                BidMachineAd.this.destroy();
            }
        }
    };
    final AdProcessCallback processCallback = new C177774();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.bidmachine.BidMachineAd$4 */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/BidMachineAd$4.class */
    public final class C177774 implements AdProcessCallback {
        C177774() {
            BidMachineAd.this = r4;
        }

        @Override // io.bidmachine.AdProcessCallback
        public final void log(String str) {
            AuctionResult auctionResult;
            if (Logger.isLoggingEnabled()) {
                String stringShort = BidMachineAd.this.toStringShort();
                String str2 = stringShort;
                if (BidMachineAd.this.getAuctionResult() != null) {
                    str2 = stringShort + "(demand: " + auctionResult.getDemandSource() + ")";
                }
                Logger.log(String.format("%s: %s", str2, str));
            }
        }

        @Override // io.bidmachine.AdProcessCallback
        public final void processClicked() {
            if (BidMachineAd.this.currentState.ordinal() > EnumC17788a.Success.ordinal()) {
                return;
            }
            if (!BidMachineAd.this.isClickTracked) {
                SessionManager.get().getSessionAdParams(BidMachineAd.this.adsType).addClick();
            }
            BidMachineAd.this.isClickTracked = true;
            if (BidMachineAd.this.loadedObject != null) {
                BidMachineAd.this.loadedObject.onClicked();
            }
            log("processClicked");
            BidMachineAd.this.trackEvent(TrackEventType.Click, null);
            Utils.onUiThread(new Runnable() { // from class: io.bidmachine.BidMachineAd.4.6
                @Override // java.lang.Runnable
                public final void run() {
                    if (BidMachineAd.this.listener != null) {
                        C177774.this.log("notify AdClicked");
                        BidMachineAd.this.listener.onAdClicked(BidMachineAd.this);
                    }
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public final void processClosed() {
            if (BidMachineAd.this.currentState.ordinal() <= EnumC17788a.Success.ordinal() && !BidMachineAd.this.isCloseTracked) {
                BidMachineAd.this.isCloseTracked = true;
                if (BidMachineAd.this.loadedObject != null) {
                    BidMachineAd.this.loadedObject.onClosed(BidMachineAd.this.isFinishTracked);
                }
                log("processClosed (" + BidMachineAd.this.isFinishTracked + ")");
                BidMachineAd.this.trackEvent(TrackEventType.Close, null);
                Utils.onUiThread(new Runnable() { // from class: io.bidmachine.BidMachineAd.4.9
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (BidMachineAd.this.listener instanceof AdFullScreenListener) {
                            C177774.this.log("notify AdClosed");
                            ((AdFullScreenListener) BidMachineAd.this.listener).onAdClosed(BidMachineAd.this, BidMachineAd.this.isFinishTracked);
                        }
                    }
                });
            }
        }

        @Override // io.bidmachine.AdProcessCallback
        public final void processDestroy() {
            log("destroy requested");
            if (BidMachineAd.this.currentState == EnumC17788a.Loading) {
                BidMachineAd.this.trackEvent(TrackEventType.Load, BMError.Destroyed);
            }
            BidMachineAd.this.trackEvent(TrackEventType.Destroy, null);
            BidMachineAd.this.currentState = EnumC17788a.Destroyed;
            if (BidMachineAd.this.adRequest != null) {
                BidMachineAd bidMachineAd = BidMachineAd.this;
                bidMachineAd.detachRequest(bidMachineAd.adRequest);
                BidMachineAd.this.adRequest.destroy();
                BidMachineAd.this.adRequest = null;
            }
            Utils.onUiThread(new Runnable() { // from class: io.bidmachine.BidMachineAd.4.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (BidMachineAd.this.loadedObject != null) {
                        BidMachineAd.this.loadedObject.onDestroy();
                    }
                    BidMachineAd.this.onDestroy();
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public final void processExpired() {
            if (BidMachineAd.this.currentState.ordinal() > EnumC17788a.Success.ordinal()) {
                return;
            }
            if (BidMachineAd.this.adRequest != null) {
                BidMachineAd.this.adRequest.onExpired();
            }
            if (BidMachineAd.this.loadedObject != null) {
                BidMachineAd.this.loadedObject.onExpired();
            }
            log("processExpired");
            BidMachineAd.this.currentState = EnumC17788a.Expired;
            BidMachineAd.this.trackEvent(TrackEventType.Expired, null);
            Utils.onUiThread(new Runnable() { // from class: io.bidmachine.BidMachineAd.4.10
                @Override // java.lang.Runnable
                public final void run() {
                    if (BidMachineAd.this.listener != null) {
                        C177774.this.log("notify AdExpired");
                        BidMachineAd.this.listener.onAdExpired(BidMachineAd.this);
                    }
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public final void processFinished() {
            AuctionResult auctionResult;
            if (BidMachineAd.this.currentState.ordinal() <= EnumC17788a.Success.ordinal() && !BidMachineAd.this.isFinishTracked) {
                BidMachineAd.this.isFinishTracked = true;
                if (BidMachineAd.this.loadedObject != null) {
                    BidMachineAd.this.loadedObject.onFinished();
                }
                log("processFinished");
                if (BidMachineAd.this.adRequest != null && (auctionResult = BidMachineAd.this.adRequest.getAuctionResult()) != null && auctionResult.getCreativeFormat() == CreativeFormat.Video) {
                    SessionManager.get().getSessionAdParams(BidMachineAd.this.adsType).addCompletedVideo();
                }
                Utils.onUiThread(new Runnable() { // from class: io.bidmachine.BidMachineAd.4.8
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (BidMachineAd.this.listener instanceof AdRewardedListener) {
                            C177774.this.log("notify AdRewarded");
                            ((AdRewardedListener) BidMachineAd.this.listener).onAdRewarded(BidMachineAd.this);
                        }
                    }
                });
            }
        }

        @Override // io.bidmachine.AdProcessCallback
        public final void processImpression() {
            if (BidMachineAd.this.currentState.ordinal() <= EnumC17788a.Success.ordinal() && !BidMachineAd.this.isImpressionTracked) {
                BidMachineAd.this.isImpressionTracked = true;
                if (BidMachineAd.this.loadedObject != null) {
                    BidMachineAd.this.loadedObject.onImpression();
                }
                log("processImpression");
                BidMachineAd.this.trackEvent(TrackEventType.Impression, null);
                Utils.onUiThread(new Runnable() { // from class: io.bidmachine.BidMachineAd.4.7
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (BidMachineAd.this.listener != null) {
                            C177774.this.log("notify AdImpression");
                            BidMachineAd.this.listener.onAdImpression(BidMachineAd.this);
                        }
                    }
                });
            }
        }

        @Override // io.bidmachine.AdProcessCallback
        public final void processLoadFail(final BMError bMError) {
            log("processLoadFail - " + bMError.getMessage());
            BidMachineAd.this.currentState = EnumC17788a.Failed;
            BidMachineAd.this.trackEvent(TrackEventType.Load, bMError);
            Utils.onUiThread(new Runnable() { // from class: io.bidmachine.BidMachineAd.4.3
                @Override // java.lang.Runnable
                public final void run() {
                    if (BidMachineAd.this.listener != null) {
                        C177774.this.log("notify AdLoadFailed");
                        BidMachineAd.this.listener.onAdLoadFailed(BidMachineAd.this, bMError);
                    }
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public final void processLoadSuccess() {
            if (BidMachineAd.this.currentState.ordinal() > EnumC17788a.Loading.ordinal()) {
                return;
            }
            log("processLoadSuccess");
            BidMachineAd.this.currentState = EnumC17788a.Success;
            BidMachineAd.this.trackEvent(TrackEventType.Load, null);
            Utils.onUiThread(new Runnable() { // from class: io.bidmachine.BidMachineAd.4.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (BidMachineAd.this.listener != null) {
                        C177774.this.log("notify AdLoaded");
                        BidMachineAd.this.listener.onAdLoaded(BidMachineAd.this);
                    }
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public final void processShowFail(final BMError bMError) {
            if (BidMachineAd.this.loadedObject != null) {
                BidMachineAd.this.loadedObject.onShowFailed();
            }
            log("processShowFail");
            BidMachineAd.this.trackEvent(TrackEventType.Show, bMError);
            Utils.onUiThread(new Runnable() { // from class: io.bidmachine.BidMachineAd.4.5
                @Override // java.lang.Runnable
                public final void run() {
                    if (BidMachineAd.this.listener instanceof AdFullScreenListener) {
                        C177774.this.log("notify AdShowFailed");
                        ((AdFullScreenListener) BidMachineAd.this.listener).onAdShowFailed(BidMachineAd.this, bMError);
                    }
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public final void processShown() {
            if (BidMachineAd.this.currentState.ordinal() <= EnumC17788a.Success.ordinal() && !BidMachineAd.this.isShownTracked) {
                BidMachineAd.this.isShownTracked = true;
                if (BidMachineAd.this.adRequest != null) {
                    BidMachineAd.this.adRequest.onShown();
                }
                if (BidMachineAd.this.loadedObject != null) {
                    BidMachineAd.this.loadedObject.onShown();
                }
                log("processShown");
                SessionAdParams sessionAdParams = SessionManager.get().getSessionAdParams(BidMachineAd.this.adsType);
                sessionAdParams.setLastBundle(null);
                sessionAdParams.setLastAdDomain(null);
                sessionAdParams.addImpression();
                if (BidMachineAd.this.adRequest != null) {
                    AuctionResult auctionResult = BidMachineAd.this.adRequest.getAuctionResult();
                    if (auctionResult != null && auctionResult.getCreativeFormat() == CreativeFormat.Video) {
                        sessionAdParams.addVideoImpression();
                    }
                    C9813Ad c9813Ad = BidMachineAd.this.adRequest.adResult;
                    if (c9813Ad != null) {
                        Iterator<String> it2 = c9813Ad.getBundleList().iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            String next = it2.next();
                            if (!TextUtils.isEmpty(next)) {
                                sessionAdParams.setLastBundle(next);
                                break;
                            }
                        }
                        Iterator<String> it3 = c9813Ad.getAdomainList().iterator();
                        while (true) {
                            if (!it3.hasNext()) {
                                break;
                            }
                            String next2 = it3.next();
                            if (!TextUtils.isEmpty(next2)) {
                                sessionAdParams.setLastAdDomain(next2);
                                break;
                            }
                        }
                    }
                }
                BidMachineAd.this.trackEvent(TrackEventType.Show, null);
                Utils.onUiThread(new Runnable() { // from class: io.bidmachine.BidMachineAd.4.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (BidMachineAd.this.listener != null) {
                            C177774.this.log("notify AdShown");
                            BidMachineAd.this.listener.onAdShown(BidMachineAd.this);
                        }
                    }
                });
            }
        }
    }

    /* renamed from: io.bidmachine.BidMachineAd$a */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/BidMachineAd$a.class */
    public enum EnumC17788a {
        Idle,
        Requesting,
        Loading,
        Success,
        Failed,
        Destroyed,
        Expired
    }

    public BidMachineAd(Context context, AdsType adsType) {
        this.context = context;
        this.adsType = adsType;
        this.contextProvider = new C17881k(context);
    }

    private void attachRequest(AdRequestType adrequesttype) {
        if (adrequesttype != null) {
            adrequesttype.addListener(this.adRequestListener);
            adrequesttype.addInternalListener(this.internalAdRequestListener);
        }
    }

    public void detachRequest(AdRequestType adrequesttype) {
        if (adrequesttype != null) {
            adrequesttype.removeListener(this.adRequestListener);
            adrequesttype.removeInternalListener(this.internalAdRequestListener);
        }
    }

    private void processRequest(AdRequestType adrequesttype) {
        this.processCallback.log("process request start");
        if (getAuctionResult() == null) {
            this.currentState = EnumC17788a.Requesting;
            adrequesttype.request(getContext());
        } else if (adrequesttype.isExpired()) {
            processRequestFail(BMError.RequestExpired);
        } else if (adrequesttype.isAdWasShown()) {
            processRequestFail(BMError.RequestAlreadyShown);
        } else {
            processRequestSuccess(adrequesttype, adrequesttype.seatBidResult, adrequesttype.bidResult, adrequesttype.adResult);
        }
    }

    public void processRequestFail(BMError bMError) {
        if (this.currentState.ordinal() > EnumC17788a.Loading.ordinal()) {
            return;
        }
        BidMachineEvents.eventStart(this.trackingObject, TrackEventType.Load, getType());
        this.processCallback.processLoadFail(bMError);
    }

    public void processRequestSuccess(AdRequestType adrequesttype, Response.Seatbid seatbid, Response.Seatbid.Bid bid, C9813Ad c9813Ad) {
        if (this.currentState.ordinal() > EnumC17788a.Loading.ordinal()) {
            return;
        }
        BidMachineEvents.eventStart(this.trackingObject, TrackEventType.Load, getType());
        this.currentState = EnumC17788a.Loading;
        if (adrequesttype == null || seatbid == null || bid == null || c9813Ad == null) {
            processRequestFail(BMError.Internal);
            return;
        }
        BMError processResponseSuccess = processResponseSuccess(adrequesttype, seatbid, bid, c9813Ad);
        if (processResponseSuccess == null) {
            return;
        }
        this.processCallback.processLoadFail(processResponseSuccess);
    }

    private BMError processResponseSuccess(AdRequestType adrequesttype, Response.Seatbid seatbid, Response.Seatbid.Bid bid, C9813Ad c9813Ad) {
        try {
            UnifiedAdRequestParams unifiedRequestParams = adrequesttype.getUnifiedRequestParams();
            if (unifiedRequestParams == null) {
                return BMError.Internal;
            }
            NetworkConfig obtainNetworkConfig = getType().obtainNetworkConfig(c9813Ad);
            if (obtainNetworkConfig == null) {
                return BMError.adapterNotFoundError("for Ad with id: " + c9813Ad.getId());
            }
            AdObjectParams createAdObjectParams = getType().createAdObjectParams(this.contextProvider, unifiedRequestParams, seatbid, bid, c9813Ad);
            if (createAdObjectParams != null && createAdObjectParams.isValid()) {
                AdObjectType createAdObject = createAdObject(this.contextProvider, adrequesttype, obtainNetworkConfig.obtainNetworkAdapter(), createAdObjectParams, this.processCallback);
                this.loadedObject = createAdObject;
                if (createAdObject != null) {
                    createAdObject.load(this.contextProvider, unifiedRequestParams);
                    return null;
                }
            }
            return BMError.IncorrectAdUnit;
        } catch (Throwable th) {
            Logger.log(th);
            return BMError.Internal;
        }
    }

    public void trackEvent(TrackEventType trackEventType, BMError bMError) {
        BidMachineEvents.eventFinish(this.trackingObject, trackEventType, getType(), bMError);
    }

    @Override // io.bidmachine.IAd
    public boolean canShow() {
        return isLoaded() && !this.isShownTracked && isAdRequestCanShowAd();
    }

    protected abstract AdObjectType createAdObject(ContextProvider contextProvider, AdRequestType adrequesttype, NetworkAdapter networkAdapter, AdObjectParams adObjectParams, AdProcessCallback adProcessCallback);

    @Override // io.bidmachine.IAd
    public void destroy() {
        this.processCallback.processDestroy();
        BidMachineEvents.clear(this.trackingObject);
    }

    public AdRequestType getAdRequest() {
        return this.adRequest;
    }

    @Override // io.bidmachine.IAd
    public AuctionResult getAuctionResult() {
        AdRequestType adrequesttype = this.adRequest;
        if (adrequesttype != null) {
            return adrequesttype.getAuctionResult();
        }
        return null;
    }

    public Context getContext() {
        return this.context;
    }

    public final AdObjectType getLoadedObject() {
        return this.loadedObject;
    }

    protected final AdsType getType() {
        return this.adsType;
    }

    boolean isAdRequestCanShowAd() {
        AdRequestType adrequesttype = this.adRequest;
        return adrequesttype != null && !adrequesttype.isAdWasShown();
    }

    @Override // io.bidmachine.IAd
    public boolean isDestroyed() {
        return this.currentState == EnumC17788a.Destroyed;
    }

    @Override // io.bidmachine.IAd
    public boolean isExpired() {
        return this.currentState == EnumC17788a.Expired;
    }

    @Override // io.bidmachine.IAd
    public boolean isLoaded() {
        return this.loadedObject != null && this.currentState == EnumC17788a.Success;
    }

    @Override // io.bidmachine.IAd
    public boolean isLoading() {
        return this.currentState == EnumC17788a.Requesting || this.currentState == EnumC17788a.Loading;
    }

    @Override // io.bidmachine.IAd
    public SelfType load(AdRequestType adrequesttype) {
        this.processCallback.log("load requested");
        if (!C17842d.get().isInitialized()) {
            processRequestFail(BMError.NotInitialized);
            return this;
        } else if (this.currentState != EnumC17788a.Idle) {
            this.processCallback.log("request process abort because it's already processing");
            return this;
        } else if (adrequesttype == null) {
            processRequestFail(BMError.paramError("No Request"));
            return this;
        } else {
            detachRequest(this.adRequest);
            this.adRequest = adrequesttype;
            attachRequest(adrequesttype);
            processRequest(adrequesttype);
            return this;
        }
    }

    protected void onDestroy() {
    }

    public boolean prepareShow() {
        if (isDestroyed()) {
            this.processCallback.processShowFail(BMError.Destroyed);
            return false;
        } else if (isExpired()) {
            this.processCallback.processShowFail(BMError.Expired);
            return false;
        } else if (!isLoaded() || this.loadedObject == null) {
            this.processCallback.processShowFail(BMError.NotLoaded);
            return false;
        } else if (!isAdRequestCanShowAd()) {
            this.processCallback.processShowFail(BMError.RequestAlreadyShown);
            return false;
        } else if (!this.isShownTracked) {
            return true;
        } else {
            this.processCallback.processShowFail(BMError.AlreadyShown);
            return false;
        }
    }

    public SelfType setListener(AdListenerType adlistenertype) {
        this.listener = adlistenertype;
        return this;
    }

    public String toString() {
        return toStringShort() + ": state=" + this.currentState + ", auctionResult=" + getAuctionResult();
    }

    public String toStringShort() {
        if (this.cachedClassTag == null) {
            this.cachedClassTag = getClass().getSimpleName() + "[@" + Integer.toHexString(hashCode()) + "]";
        }
        return this.cachedClassTag;
    }
}
