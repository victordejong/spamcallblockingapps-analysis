package io.bidmachine;

import android.content.Context;
import android.text.TextUtils;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.adcom.C9813Ad;
import com.explorestack.protobuf.adcom.Placement;
import com.explorestack.protobuf.openrtb.Request;
import com.explorestack.protobuf.openrtb.Response;
import io.bidmachine.AdRequest;
import io.bidmachine.ApiRequest;
import io.bidmachine.core.Logger;
import io.bidmachine.core.NetworkRequest;
import io.bidmachine.core.Utils;
import io.bidmachine.displays.PlacementBuilder;
import io.bidmachine.models.AuctionResult;
import io.bidmachine.models.DataRestrictions;
import io.bidmachine.models.RequestBuilder;
import io.bidmachine.unified.UnifiedAdRequestParams;
import io.bidmachine.utils.BMError;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/AdRequest.class */
public abstract class AdRequest<SelfType extends AdRequest, UnifiedAdRequestParamsType extends UnifiedAdRequestParams> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final long DEF_EXPIRATION_TIME = TimeUnit.MINUTES.toSeconds(29);
    List<AdRequestListener<SelfType>> adRequestListeners;
    C9813Ad adResult;
    private final AdsType adsType;
    AuctionResult auctionResult;
    Response.Seatbid.Bid bidResult;
    private ApiRequest<Request, Response> currentApiRequest;
    private ExtraParams extraParams;
    List<AbstractC17756b<SelfType>> internalAdRequestListeners;
    private boolean isAdWasShown;
    private boolean isDestroyed;
    private boolean isExpireTrackerSubscribed;
    private boolean isExpired;
    Map<String, NetworkConfig> networkConfigMap;
    PriceFloorParams priceFloorParams;
    Response.Seatbid seatBidResult;
    SessionAdParams sessionAdParams;
    TargetingParams targetingParams;
    Map<TrackEventType, List<String>> trackUrls;
    private UnifiedAdRequestParamsType unifiedAdRequestParams;
    UserRestrictionParams userRestrictionParams;
    private final String trackingId = UUID.randomUUID().toString();
    int timeOut = -1;
    boolean headerBiddingEnabled = true;
    private long expirationTime = -1;
    private final AtomicBoolean isApiRequestCanceled = new AtomicBoolean(false);
    private final AtomicBoolean isApiRequestCompleted = new AtomicBoolean(false);
    private final Runnable expiredRunnable = new RunnableC17755a(this);
    private final Runnable timeOutRunnable = new Runnable() { // from class: io.bidmachine.AdRequest.1
        @Override // java.lang.Runnable
        public final void run() {
            if (!AdRequest.this.isApiRequestCompleted.get()) {
                AdRequest.this.cancel();
                AdRequest.this.processRequestFail(BMError.TimeoutError);
            }
        }
    };
    private final TrackingObject trackingObject = new TrackingObject() { // from class: io.bidmachine.AdRequest.2
        @Override // io.bidmachine.TrackingObject
        public final Object getTrackingKey() {
            return AdRequest.this.trackingId;
        }

        @Override // io.bidmachine.TrackingObject
        public final List<String> getTrackingUrls(TrackEventType trackEventType) {
            return AdRequest.this.trackUrls != null ? AdRequest.this.trackUrls.get(trackEventType) : super.getTrackingUrls(trackEventType);
        }
    };

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/AdRequest$AdRequestBuilderImpl.class */
    public static abstract class AdRequestBuilderImpl<SelfType extends RequestBuilder, ReturnType extends AdRequest> implements RequestBuilder<SelfType, ReturnType> {
        protected ReturnType params;

        @Override // io.bidmachine.models.RequestBuilder
        public ReturnType build() {
            try {
                prepareRequest();
                return this.params;
            } finally {
                this.params = null;
            }
        }

        protected abstract ReturnType createRequest();

        @Override // io.bidmachine.models.RequestBuilder
        public SelfType disableHeaderBidding() {
            prepareRequest();
            this.params.headerBiddingEnabled = false;
            return this;
        }

        @Override // io.bidmachine.models.RequestBuilder
        public SelfType enableHeaderBidding() {
            prepareRequest();
            this.params.headerBiddingEnabled = true;
            return this;
        }

        void fillNetworkConfigs(List<NetworkConfig> list) {
            if (list == null || list.size() <= 0) {
                return;
            }
            prepareRequest();
            this.params.networkConfigMap = new HashMap();
            for (NetworkConfig networkConfig : C17842d.get().getInitNetworkConfigList()) {
                this.params.networkConfigMap.put(networkConfig.getKey(), networkConfig);
            }
            for (NetworkConfig networkConfig2 : list) {
                String key = networkConfig2.getKey();
                if (C17859f.isNetworkInitialized(key, EnumC17873h.Publisher)) {
                    this.params.networkConfigMap.put(networkConfig2.getKey(), networkConfig2);
                } else {
                    Logger.log(String.format("%s: %s was removed from AdRequest. Please register network before initialize BidMachine", toString(), key));
                }
            }
        }

        public void prepareRequest() {
            if (this.params == null) {
                this.params = createRequest();
            }
        }

        @Override // io.bidmachine.models.RequestBuilder
        public SelfType setListener(AdRequestListener<ReturnType> adRequestListener) {
            prepareRequest();
            this.params.addListener(adRequestListener);
            return this;
        }

        @Override // io.bidmachine.models.RequestBuilder
        public SelfType setLoadingTimeOut(int i) {
            prepareRequest();
            this.params.timeOut = i;
            return this;
        }

        @Override // io.bidmachine.models.RequestBuilder
        public SelfType setNetworks(String str) {
            if (!TextUtils.isEmpty(str)) {
                ArrayList arrayList = new ArrayList();
                try {
                    JSONArray jSONArray = new JSONArray(str);
                    for (int i = 0; i < jSONArray.length(); i++) {
                        NetworkConfig create = NetworkConfig.create(C17842d.get().getAppContext(), jSONArray.getJSONObject(i));
                        if (create != null) {
                            arrayList.add(create);
                        }
                    }
                } catch (Exception e) {
                    Logger.log(e);
                }
                fillNetworkConfigs(arrayList);
            }
            return this;
        }

        @Override // io.bidmachine.models.RequestBuilder
        public SelfType setNetworks(List<NetworkConfig> list) {
            fillNetworkConfigs(list);
            return this;
        }

        @Override // io.bidmachine.models.RequestBuilder
        public SelfType setPriceFloorParams(PriceFloorParams priceFloorParams) {
            prepareRequest();
            this.params.priceFloorParams = priceFloorParams;
            return this;
        }

        @Override // io.bidmachine.models.RequestBuilder
        public SelfType setSessionAdParams(SessionAdParams sessionAdParams) {
            prepareRequest();
            this.params.sessionAdParams = sessionAdParams;
            return this;
        }

        @Override // io.bidmachine.models.RequestBuilder
        public SelfType setTargetingParams(TargetingParams targetingParams) {
            prepareRequest();
            this.params.targetingParams = targetingParams;
            return this;
        }
    }

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/AdRequest$AdRequestListener.class */
    public interface AdRequestListener<AdRequestType extends AdRequest> {
        void onRequestExpired(AdRequestType adrequesttype);

        void onRequestFailed(AdRequestType adrequesttype, BMError bMError);

        void onRequestSuccess(AdRequestType adrequesttype, AuctionResult auctionResult);
    }

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/AdRequest$BaseUnifiedAdRequestParams.class */
    public class BaseUnifiedAdRequestParams extends C17882l {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BaseUnifiedAdRequestParams(TargetingParams targetingParams, DataRestrictions dataRestrictions) {
            super(targetingParams, dataRestrictions);
            AdRequest.this = r5;
        }

        @Override // io.bidmachine.C17882l, io.bidmachine.unified.UnifiedAdRequestParams
        public AdRequest getAdRequest() {
            return AdRequest.this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.bidmachine.AdRequest$a */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/AdRequest$a.class */
    public static final class RunnableC17755a implements Runnable {
        private final WeakReference<AdRequest> weakAdRequest;

        public RunnableC17755a(AdRequest adRequest) {
            this.weakAdRequest = new WeakReference<>(adRequest);
        }

        @Override // java.lang.Runnable
        public final void run() {
            AdRequest adRequest = this.weakAdRequest.get();
            if (adRequest != null) {
                adRequest.processExpired();
            }
        }
    }

    /* renamed from: io.bidmachine.AdRequest$b */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/AdRequest$b.class */
    public interface AbstractC17756b<AdRequestType extends AdRequest> {
        void onRequestDestroyed(AdRequestType adrequesttype);
    }

    public AdRequest(AdsType adsType) {
        this.adsType = adsType;
    }

    public void processApiRequestCancel() {
        this.isApiRequestCanceled.set(true);
        Utils.cancelBackgroundThreadTask(this.timeOutRunnable);
        BidMachineEvents.eventFinish(this.trackingObject, TrackEventType.AuctionRequestCancel, getType(), null);
        BidMachineEvents.clearEvent(this.trackingObject, TrackEventType.AuctionRequest);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x005a, code lost:
        if (r4 != io.bidmachine.utils.BMError.NoContent) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void processApiRequestFail(io.bidmachine.utils.BMError r4) {
        /*
            r3 = this;
            r0 = r3
            java.util.concurrent.atomic.AtomicBoolean r0 = r0.isApiRequestCanceled
            boolean r0 = r0.get()
            if (r0 == 0) goto Lb
            return
        Lb:
            r0 = r3
            java.util.concurrent.atomic.AtomicBoolean r0 = r0.isApiRequestCompleted
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r5
            r1 = 1
            r0.set(r1)
            r0 = r3
            r1 = 0
            r0.currentApiRequest = r1
            r0 = r3
            java.lang.Runnable r0 = r0.timeOutRunnable
            io.bidmachine.core.Utils.cancelBackgroundThreadTask(r0)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r5
            r1 = r3
            java.lang.String r1 = r1.toString()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r1 = ": api request fail - "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r4
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r0 = r0.toString()
            io.bidmachine.core.Logger.log(r0)
            r0 = r4
            if (r0 != 0) goto L54
            r0 = 0
            io.bidmachine.utils.BMError r0 = io.bidmachine.utils.BMError.noFillError(r0)
            r5 = r0
            goto L60
        L54:
            r0 = r4
            r5 = r0
            r0 = r4
            io.bidmachine.utils.BMError r1 = io.bidmachine.utils.BMError.NoContent
            if (r0 == r1) goto L60
            goto L64
        L60:
            r0 = 0
            r6 = r0
            r0 = r5
            r4 = r0
        L64:
            r0 = r4
            r1 = r6
            r0.setTrackError(r1)
            r0 = r3
            r1 = r4
            r0.processRequestFail(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.AdRequest.processApiRequestFail(io.bidmachine.utils.BMError):void");
    }

    public void processApiRequestSuccess(Response response) {
        if (this.isApiRequestCanceled.get()) {
            return;
        }
        this.isApiRequestCompleted.set(true);
        this.currentApiRequest = null;
        Utils.cancelBackgroundThreadTask(this.timeOutRunnable);
        Logger.log(toString() + ": api request success");
        if (response == null || response.getSeatbidCount() <= 0) {
            Logger.log(toString() + ": Response not found or not valid");
        } else {
            Response.Seatbid seatbid = response.getSeatbid(0);
            if (seatbid == null || seatbid.getBidCount() == 0) {
                Logger.log(toString() + ": Seatbid not found or not valid");
                processRequestFail(BMError.requestError("Seatbid not found or not valid"));
                return;
            }
            Response.Seatbid.Bid bid = seatbid.getBid(0);
            if (bid == null) {
                Logger.log(toString() + ": Bid not found or not valid");
                processRequestFail(BMError.requestError("Bid not found or not valid"));
                return;
            }
            Any media = bid.getMedia();
            if (media == null || !media.m23822is(C9813Ad.class)) {
                Logger.log(toString() + ": Media not found or not valid");
                processRequestFail(BMError.requestError("Media not found or not valid"));
                return;
            }
            try {
                C9813Ad c9813Ad = (C9813Ad) bid.getMedia().unpack(C9813Ad.class);
                if (c9813Ad != null) {
                    NetworkConfig obtainNetworkConfig = getType().obtainNetworkConfig(c9813Ad);
                    if (obtainNetworkConfig == null) {
                        Logger.log(toString() + ": NetworkConfig not found");
                        processRequestFail(BMError.requestError("NetworkConfig not found"));
                        return;
                    }
                    this.adResult = c9813Ad;
                    this.bidResult = bid;
                    this.seatBidResult = seatbid;
                    this.auctionResult = new AuctionResultImpl(getType(), seatbid, bid, c9813Ad, obtainNetworkConfig);
                    this.expirationTime = Utils.getOrDefault(bid.getExp(), Response.Seatbid.Bid.getDefaultInstance().getExp(), DEF_EXPIRATION_TIME);
                    extractTrackUrls(bid);
                    subscribeExpireTracker();
                    Logger.log(toString() + ": Request finished (" + this.auctionResult + ")");
                    List<AdRequestListener<SelfType>> list = this.adRequestListeners;
                    if (list != null) {
                        for (AdRequestListener<SelfType> adRequestListener : list) {
                            adRequestListener.onRequestSuccess(this, this.auctionResult);
                        }
                    }
                    for (AdRequestListener adRequestListener2 : C17842d.get().getAdRequestListeners()) {
                        adRequestListener2.onRequestSuccess(this, this.auctionResult);
                    }
                    BidMachineEvents.eventFinish(this.trackingObject, TrackEventType.AuctionRequest, getType(), null);
                    return;
                }
                Logger.log(toString() + ": Ad not found or not valid");
            } catch (InvalidProtocolBufferException e) {
                Logger.log(e);
            }
        }
        processRequestFail(BMError.Internal);
    }

    public void processRequestFail(BMError bMError) {
        List<AdRequestListener<SelfType>> list = this.adRequestListeners;
        if (list != null) {
            for (AdRequestListener<SelfType> adRequestListener : list) {
                adRequestListener.onRequestFailed(this, bMError);
            }
        }
        for (AdRequestListener adRequestListener2 : C17842d.get().getAdRequestListeners()) {
            adRequestListener2.onRequestFailed(this, bMError);
        }
        BidMachineEvents.eventFinish(this.trackingObject, TrackEventType.AuctionRequest, getType(), bMError);
    }

    private void subscribeExpireTracker() {
        long j = this.expirationTime * 1000;
        if (j <= 0 || this.isExpireTrackerSubscribed) {
            return;
        }
        this.isExpireTrackerSubscribed = true;
        Utils.onBackgroundThread(this.expiredRunnable, j);
    }

    private void unsubscribeExpireTracker() {
        this.isExpireTrackerSubscribed = false;
        Utils.cancelBackgroundThreadTask(this.expiredRunnable);
    }

    public void addInternalListener(AbstractC17756b<SelfType> abstractC17756b) {
        if (abstractC17756b != null) {
            if (this.internalAdRequestListeners == null) {
                this.internalAdRequestListeners = new CopyOnWriteArrayList();
            }
            this.internalAdRequestListeners.add(abstractC17756b);
        }
    }

    public void addListener(AdRequestListener<SelfType> adRequestListener) {
        if (adRequestListener != null) {
            if (this.adRequestListeners == null) {
                this.adRequestListeners = new CopyOnWriteArrayList();
            }
            this.adRequestListeners.add(adRequestListener);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00ce A[Catch: all -> 0x03a1, TRY_ENTER, TryCatch #0 {all -> 0x03a1, blocks: (B:2:0x0000, B:4:0x000e, B:7:0x0016, B:11:0x0023, B:13:0x00a5, B:16:0x00b5, B:17:0x00bf, B:20:0x00ce, B:22:0x00d5, B:22:0x00d5, B:23:0x00d8, B:25:0x0121, B:27:0x012d, B:28:0x0174, B:30:0x017b, B:31:0x0191, B:31:0x0191, B:35:0x019a, B:37:0x01aa, B:39:0x01b2, B:41:0x01c6, B:42:0x01d3, B:44:0x01db, B:45:0x01e8, B:46:0x01fc, B:48:0x01fe, B:50:0x022f, B:52:0x0238, B:54:0x0252, B:56:0x025e, B:58:0x0269, B:59:0x027c, B:59:0x027c, B:60:0x027f, B:62:0x0290, B:63:0x0297, B:63:0x0297, B:64:0x029a, B:66:0x02ab, B:68:0x02b8, B:70:0x030c, B:72:0x0318, B:74:0x0362, B:75:0x0369, B:77:0x036f), top: B:82:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00d5 A[Catch: all -> 0x03a1, all -> 0x03a1, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x03a1, blocks: (B:2:0x0000, B:4:0x000e, B:7:0x0016, B:11:0x0023, B:13:0x00a5, B:16:0x00b5, B:17:0x00bf, B:20:0x00ce, B:22:0x00d5, B:22:0x00d5, B:23:0x00d8, B:25:0x0121, B:27:0x012d, B:28:0x0174, B:30:0x017b, B:31:0x0191, B:31:0x0191, B:35:0x019a, B:37:0x01aa, B:39:0x01b2, B:41:0x01c6, B:42:0x01d3, B:44:0x01db, B:45:0x01e8, B:46:0x01fc, B:48:0x01fe, B:50:0x022f, B:52:0x0238, B:54:0x0252, B:56:0x025e, B:58:0x0269, B:59:0x027c, B:59:0x027c, B:60:0x027f, B:62:0x0290, B:63:0x0297, B:63:0x0297, B:64:0x029a, B:66:0x02ab, B:68:0x02b8, B:70:0x030c, B:72:0x0318, B:74:0x0362, B:75:0x0369, B:77:0x036f), top: B:82:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    java.lang.Object build(android.content.Context r8, io.bidmachine.AdsType r9) {
        /*
            Method dump skipped, instructions count: 936
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.AdRequest.build(android.content.Context, io.bidmachine.AdsType):java.lang.Object");
    }

    void cancel() {
        if (this.isApiRequestCompleted.get() || this.isApiRequestCanceled.get()) {
            return;
        }
        ApiRequest<Request, Response> apiRequest = this.currentApiRequest;
        if (apiRequest == null) {
            processApiRequestCancel();
            return;
        }
        apiRequest.cancel();
        this.currentApiRequest = null;
    }

    protected abstract UnifiedAdRequestParamsType createUnifiedAdRequestParams(TargetingParams targetingParams, DataRestrictions dataRestrictions);

    public void destroy() {
        if (this.isDestroyed) {
            return;
        }
        this.isDestroyed = true;
        Logger.log(toString() + ": destroy");
        cancel();
        unsubscribeExpireTracker();
        BidMachineEvents.clear(this.trackingObject);
        BidMachineFetcher.release(this);
        notifyRequestDestroyed();
        this.priceFloorParams = null;
        this.targetingParams = null;
        this.sessionAdParams = null;
        this.networkConfigMap = null;
        this.userRestrictionParams = null;
        this.extraParams = null;
        this.adResult = null;
        this.seatBidResult = null;
        this.bidResult = null;
        this.auctionResult = null;
        this.unifiedAdRequestParams = null;
        BidMachineEvents.eventFinish(this.trackingObject, TrackEventType.AuctionRequestDestroy, getType(), null);
    }

    void extractTrackUrls(Response.Seatbid.Bid bid) {
        if (bid == null) {
            return;
        }
        EnumMap enumMap = new EnumMap(TrackEventType.class);
        this.trackUrls = enumMap;
        C17869g.addEvent(enumMap, TrackEventType.MediationWin, bid.getPurl());
        C17869g.addEvent(this.trackUrls, TrackEventType.MediationLoss, bid.getLurl());
    }

    public AuctionResult getAuctionResult() {
        return this.auctionResult;
    }

    public final AdsType getType() {
        return this.adsType;
    }

    public final UnifiedAdRequestParamsType getUnifiedRequestParams() {
        return this.unifiedAdRequestParams;
    }

    public boolean isAdWasShown() {
        return this.isAdWasShown;
    }

    public boolean isDestroyed() {
        return this.isDestroyed;
    }

    public boolean isExpired() {
        return this.isExpired;
    }

    public boolean isPlacementBuilderMatch(PlacementBuilder placementBuilder) {
        return true;
    }

    boolean isValid() {
        return !TextUtils.isEmpty(C17842d.get().getSellerId());
    }

    public void notifyMediationLoss() {
        if (!this.isApiRequestCompleted.get()) {
            return;
        }
        Logger.log(toString() + ": notifyMediationLoss");
        BidMachineEvents.eventFinish(this.trackingObject, TrackEventType.MediationLoss, getType(), this.isDestroyed ? BMError.RequestDestroyed : this.isExpired ? BMError.RequestExpired : null);
    }

    public void notifyMediationWin() {
        if (!this.isApiRequestCompleted.get()) {
            return;
        }
        Logger.log(toString() + ": notifyMediationWin");
        BidMachineEvents.eventFinish(this.trackingObject, TrackEventType.MediationWin, getType(), this.isDestroyed ? BMError.RequestDestroyed : this.isExpired ? BMError.RequestExpired : null);
    }

    void notifyRequestDestroyed() {
        List<AbstractC17756b<SelfType>> list = this.internalAdRequestListeners;
        if (list != null) {
            for (AbstractC17756b<SelfType> abstractC17756b : list) {
                abstractC17756b.onRequestDestroyed(this);
            }
        }
    }

    public void onBuildPlacement(Placement.Builder builder) {
    }

    public void onExpired() {
        unsubscribeExpireTracker();
    }

    public void onShown() {
        this.isAdWasShown = true;
        unsubscribeExpireTracker();
    }

    void processExpired() {
        this.isExpired = true;
        unsubscribeExpireTracker();
        List<AdRequestListener<SelfType>> list = this.adRequestListeners;
        if (list != null) {
            for (AdRequestListener<SelfType> adRequestListener : list) {
                adRequestListener.onRequestExpired(this);
            }
        }
        for (AdRequestListener adRequestListener2 : C17842d.get().getAdRequestListeners()) {
            adRequestListener2.onRequestExpired(this);
        }
        BidMachineEvents.eventFinish(this.trackingObject, TrackEventType.AuctionRequestExpired, getType(), null);
    }

    public void removeInternalListener(AbstractC17756b<SelfType> abstractC17756b) {
        List<AbstractC17756b<SelfType>> list = this.internalAdRequestListeners;
        if (list == null || abstractC17756b == null) {
            return;
        }
        list.remove(abstractC17756b);
    }

    public void removeListener(AdRequestListener<SelfType> adRequestListener) {
        List<AdRequestListener<SelfType>> list = this.adRequestListeners;
        if (list == null || adRequestListener == null) {
            return;
        }
        list.remove(adRequestListener);
    }

    public void request(final Context context) {
        if (!C17842d.get().isInitialized()) {
            processRequestFail(BMError.NotInitialized);
        } else if (this.isDestroyed) {
            processRequestFail(BMError.RequestDestroyed);
        } else {
            BidMachineEvents.eventStart(this.trackingObject, TrackEventType.AuctionRequest, getType());
            try {
                this.isAdWasShown = false;
                unsubscribeExpireTracker();
                ApiRequest<Request, Response> apiRequest = this.currentApiRequest;
                if (apiRequest != null) {
                    apiRequest.cancel();
                }
                Logger.log(toString() + ": api request start");
                C17820b.get().execute(new Runnable() { // from class: io.bidmachine.AdRequest.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        AdRequest adRequest = AdRequest.this;
                        Object build = adRequest.build(context, adRequest.getType());
                        if (!(build instanceof Request)) {
                            AdRequest.this.processRequestFail(build instanceof BMError ? (BMError) build : BMError.Internal);
                            return;
                        }
                        ApiRequest.Builder cancelCallback = new ApiRequest.Builder().url(C17842d.get().getAuctionUrl()).setRequestData((Request) build).setLoadingTimeOut(AdRequest.this.timeOut).setDataBinder(AdRequest.this.getType().getBinder()).setCallback(new NetworkRequest.Callback<Response, BMError>() { // from class: io.bidmachine.AdRequest.3.2
                            public final void onFail(BMError bMError) {
                                AdRequest.this.processApiRequestFail(bMError);
                            }

                            public final void onSuccess(Response response) {
                                AdRequest.this.processApiRequestSuccess(response);
                            }
                        }).setCancelCallback(new NetworkRequest.CancelCallback() { // from class: io.bidmachine.AdRequest.3.1
                            @Override // io.bidmachine.core.NetworkRequest.CancelCallback
                            public final void onCanceled() {
                                AdRequest.this.processApiRequestCancel();
                            }
                        });
                        if (AdRequest.this.isApiRequestCanceled.get()) {
                            return;
                        }
                        AdRequest.this.currentApiRequest = cancelCallback.request();
                    }
                });
                int i = this.timeOut;
                if (i <= 0) {
                    return;
                }
                Utils.onBackgroundThread(this.timeOutRunnable, i);
            } catch (Exception e) {
                Logger.log(e);
                processRequestFail(BMError.Internal);
            }
        }
    }

    public String toString() {
        return getClass().getSimpleName() + "[@" + Integer.toHexString(hashCode()) + "]";
    }

    public BMError verifyRequest() {
        return null;
    }
}
