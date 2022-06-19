package io.bidmachine.displays;

import android.text.TextUtils;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.adcom.C9813Ad;
import com.explorestack.protobuf.openrtb.Response;
import io.bidmachine.AdContentType;
import io.bidmachine.AdsType;
import io.bidmachine.BidMachineEvents;
import io.bidmachine.ContextProvider;
import io.bidmachine.HeaderBiddingAdRequestParams;
import io.bidmachine.HeaderBiddingAdapter;
import io.bidmachine.HeaderBiddingCollectParamsCallback;
import io.bidmachine.NetworkAdapter;
import io.bidmachine.NetworkConfig;
import io.bidmachine.TrackEventInfo;
import io.bidmachine.TrackEventType;
import io.bidmachine.TrackingObject;
import io.bidmachine.core.Logger;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingAd;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement;
import io.bidmachine.unified.UnifiedAdRequestParams;
import io.bidmachine.utils.BMError;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
/* renamed from: io.bidmachine.displays.a */
/* loaded from: classes5-dex2jar.jar:io/bidmachine/displays/a.class */
public final class C17853a<UnifiedAdRequestParamsType extends UnifiedAdRequestParams> {
    private static final long HEADER_BIDDING_PREPARE_TIMEOUT_SEC = 10;

    /* renamed from: io.bidmachine.displays.a$a */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/displays/a$a.class */
    public static final class RunnableC17855a<UnifiedAdRequestParamsType extends UnifiedAdRequestParams> implements HeaderBiddingAdRequestParams, HeaderBiddingCollectParamsCallback, Runnable {
        private static Executor executor = Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors() * 2);
        private AdContentType adContentType;
        private UnifiedAdRequestParamsType adRequestParams;
        private HeaderBiddingPlacement.AdUnit adUnit;
        private HeaderBiddingAdapter adapter;
        private AdsType adsType;
        private ContextProvider contextProvider;
        private Map<String, String> mediationConfig;
        private CountDownLatch syncLock;
        private boolean isFinished = false;
        private final TrackingObject trackingObject = new TrackingObject() { // from class: io.bidmachine.displays.a.a.1
            private String key = UUID.randomUUID().toString();

            @Override // io.bidmachine.TrackingObject
            public final Object getTrackingKey() {
                return this.key;
            }
        };

        RunnableC17855a(ContextProvider contextProvider, HeaderBiddingAdapter headerBiddingAdapter, AdsType adsType, AdContentType adContentType, UnifiedAdRequestParamsType unifiedadrequestparamstype, Map<String, String> map) {
            this.contextProvider = contextProvider;
            this.adapter = headerBiddingAdapter;
            this.adsType = adsType;
            this.adContentType = adContentType;
            this.adRequestParams = unifiedadrequestparamstype;
            this.mediationConfig = map;
        }

        private void finish() {
            this.isFinished = true;
            this.syncLock.countDown();
        }

        final void cancel() {
            if (this.isFinished) {
                return;
            }
            Logger.log(String.format("%s: Header bidding collect fail: timeout", this.adapter.getKey()));
            finish();
        }

        final void execute(CountDownLatch countDownLatch) {
            BidMachineEvents.eventStart(this.trackingObject, TrackEventType.HeaderBiddingNetworkPrepare, new TrackEventInfo().withParameter("HB_NETWORK", this.adapter.getKey()).withParameter("BM_AD_TYPE", this.adsType.getName()), this.adsType);
            this.syncLock = countDownLatch;
            executor.execute(this);
        }

        @Override // io.bidmachine.HeaderBiddingAdRequestParams
        public final AdContentType getAdContentType() {
            return this.adContentType;
        }

        final HeaderBiddingPlacement.AdUnit getAdUnit() {
            return this.adUnit;
        }

        @Override // io.bidmachine.HeaderBiddingAdRequestParams
        public final AdsType getAdsType() {
            return this.adsType;
        }

        final boolean isFinished() {
            return this.isFinished;
        }

        @Override // io.bidmachine.HeaderBiddingCollectParamsCallback
        public final void onCollectFail(BMError bMError) {
            if (this.isFinished) {
                return;
            }
            if (bMError != null) {
                Logger.log(String.format("%s: Header bidding collect fail: %s", this.adapter.getKey(), bMError.getMessage()));
            }
            finish();
            BidMachineEvents.eventFinish(this.trackingObject, TrackEventType.HeaderBiddingNetworkPrepare, this.adsType, bMError);
        }

        @Override // io.bidmachine.HeaderBiddingCollectParamsCallback
        public final void onCollectFinished(Map<String, String> map) {
            if (this.isFinished) {
                return;
            }
            HeaderBiddingPlacement.AdUnit.Builder newBuilder = HeaderBiddingPlacement.AdUnit.newBuilder();
            newBuilder.setBidder(this.adapter.getKey());
            newBuilder.setBidderSdkver(this.adapter.getVersion());
            for (Map.Entry<String, String> entry : this.mediationConfig.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                if (!TextUtils.isEmpty(key) && !TextUtils.isEmpty(value) && !NetworkConfig.PRIVATE_FIELDS.contains(key)) {
                    newBuilder.putClientParams(key, value);
                }
            }
            newBuilder.putAllClientParams(map);
            this.adUnit = newBuilder.build();
            Logger.log(String.format("%s: %s: Header bidding collect finished", this.adapter.getKey(), this.adsType));
            finish();
            BidMachineEvents.eventFinish(this.trackingObject, TrackEventType.HeaderBiddingNetworkPrepare, this.adsType, null);
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                this.adapter.collectHeaderBiddingParams(this.contextProvider, this.adRequestParams, this, this, this.mediationConfig);
            } catch (Exception e) {
                Logger.log(e);
                onCollectFail(BMError.Internal);
            }
        }
    }

    private HeaderBiddingAd obtainHeaderBiddingAd(List<Any> list) {
        for (Any any : list) {
            if (any.m23822is(HeaderBiddingAd.class)) {
                try {
                    return (HeaderBiddingAd) any.unpack(HeaderBiddingAd.class);
                } catch (InvalidProtocolBufferException e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }

    public final AdObjectParams createAdObjectParams(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype, Response.Seatbid seatbid, Response.Seatbid.Bid bid, C9813Ad c9813Ad) {
        HeaderBiddingAd obtainHeaderBiddingAd = obtainHeaderBiddingAd(c9813Ad);
        if (obtainHeaderBiddingAd != null) {
            return new HeaderBiddingAdObjectParams(seatbid, bid, c9813Ad, obtainHeaderBiddingAd);
        }
        return null;
    }

    public final Message.Builder createPlacement(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype, AdsType adsType, AdContentType adContentType, Collection<NetworkConfig> collection) {
        List<Map<String, String>> peekMediationConfig;
        ArrayList<RunnableC17855a> arrayList = new ArrayList();
        for (NetworkConfig networkConfig : collection) {
            NetworkAdapter obtainNetworkAdapter = networkConfig.obtainNetworkAdapter();
            if ((obtainNetworkAdapter instanceof HeaderBiddingAdapter) && (peekMediationConfig = networkConfig.peekMediationConfig(adsType, unifiedadrequestparamstype, adContentType)) != null) {
                for (Map<String, String> map : peekMediationConfig) {
                    arrayList.add(new RunnableC17855a(contextProvider, (HeaderBiddingAdapter) obtainNetworkAdapter, adsType, adContentType, unifiedadrequestparamstype, map));
                }
            }
        }
        if (!arrayList.isEmpty()) {
            TrackingObject trackingObject = new TrackingObject() { // from class: io.bidmachine.displays.a.1
                private String key = UUID.randomUUID().toString();

                @Override // io.bidmachine.TrackingObject
                public final Object getTrackingKey() {
                    return this.key;
                }
            };
            BidMachineEvents.eventStart(trackingObject, TrackEventType.HeaderBiddingNetworksPrepare, adsType);
            try {
                CountDownLatch countDownLatch = new CountDownLatch(arrayList.size());
                for (RunnableC17855a runnableC17855a : arrayList) {
                    runnableC17855a.execute(countDownLatch);
                }
                try {
                    countDownLatch.await(HEADER_BIDDING_PREPARE_TIMEOUT_SEC, TimeUnit.SECONDS);
                } catch (InterruptedException e) {
                    Logger.log(e);
                }
                ArrayList arrayList2 = null;
                for (RunnableC17855a runnableC17855a2 : arrayList) {
                    HeaderBiddingPlacement.AdUnit adUnit = runnableC17855a2.getAdUnit();
                    if (adUnit != null) {
                        ArrayList arrayList3 = arrayList2;
                        if (arrayList2 == null) {
                            arrayList3 = new ArrayList();
                        }
                        arrayList3.add(adUnit);
                        arrayList2 = arrayList3;
                    } else if (!runnableC17855a2.isFinished()) {
                        runnableC17855a2.cancel();
                    }
                }
                if (arrayList2 == null || arrayList2.isEmpty()) {
                    return null;
                }
                HeaderBiddingPlacement.Builder newBuilder = HeaderBiddingPlacement.newBuilder();
                newBuilder.addAllAdUnits(arrayList2);
                return newBuilder;
            } finally {
                BidMachineEvents.eventFinish(trackingObject, TrackEventType.HeaderBiddingNetworksPrepare, adsType, null);
            }
        }
        return null;
    }

    public final HeaderBiddingAd obtainHeaderBiddingAd(C9813Ad c9813Ad) {
        HeaderBiddingAd headerBiddingAd = null;
        HeaderBiddingAd headerBiddingAd2 = null;
        if (c9813Ad.hasDisplay()) {
            C9813Ad.Display display = c9813Ad.getDisplay();
            if (display.hasBanner()) {
                headerBiddingAd2 = obtainHeaderBiddingAd(display.getBanner().getExtProtoList());
            }
            headerBiddingAd = headerBiddingAd2;
            if (headerBiddingAd2 == null) {
                headerBiddingAd = headerBiddingAd2;
                if (display.hasNative()) {
                    headerBiddingAd = obtainHeaderBiddingAd(display.getNative().getExtProtoList());
                }
            }
        }
        HeaderBiddingAd headerBiddingAd3 = headerBiddingAd;
        if (headerBiddingAd == null) {
            headerBiddingAd3 = headerBiddingAd;
            if (c9813Ad.hasVideo()) {
                headerBiddingAd3 = obtainHeaderBiddingAd(c9813Ad.getVideo().getExtProtoList());
            }
        }
        return headerBiddingAd3;
    }
}
