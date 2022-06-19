package io.bidmachine;

import android.graphics.Point;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.adcom.C9813Ad;
import com.explorestack.protobuf.adcom.NativeDataAssetType;
import com.explorestack.protobuf.adcom.NativeImageAssetType;
import com.explorestack.protobuf.adcom.Placement;
import com.explorestack.protobuf.adcom.PlacementPosition;
import com.explorestack.protobuf.adcom.SizeUnit;
import com.explorestack.protobuf.adcom.VideoCreativeType;
import com.explorestack.protobuf.openrtb.Response;
import com.mopub.common.AdType;
import com.mopub.common.FullAdType;
import io.bidmachine.AdContentType;
import io.bidmachine.AdsType;
import io.bidmachine.ApiRequest;
import io.bidmachine.Constants;
import io.bidmachine.ContextProvider;
import io.bidmachine.MediaAssetType;
import io.bidmachine.NetworkConfig;
import io.bidmachine.banner.BannerSize;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.displays.DisplayPlacementBuilder;
import io.bidmachine.displays.PlacementBuilder;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingAd;
import io.bidmachine.unified.UnifiedAdRequestParams;
import io.bidmachine.unified.UnifiedBannerAdRequestParams;
import io.bidmachine.unified.UnifiedNativeAdRequestParams;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import net.pubnative.lite.sdk.analytics.Reporting;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/AdsType.class */
public enum AdsType {
    Banner("banner", new ApiRequest.ApiAuctionDataBinder(), new PlacementBuilder[]{new DisplayPlacementBuilder<UnifiedBannerAdRequestParams>(false, true) { // from class: io.bidmachine.AdsType.1
        public final Point getSize(ContextProvider contextProvider, UnifiedBannerAdRequestParams unifiedBannerAdRequestParams) {
            BannerSize bannerSize = unifiedBannerAdRequestParams.getBannerSize();
            return new Point(bannerSize.width, bannerSize.height);
        }
    }}),
    Interstitial(AdType.INTERSTITIAL, new ApiRequest.ApiAuctionDataBinder(), new PlacementBuilder[]{new DisplayPlacementBuilder(true, true), new PlacementBuilder<UnifiedAdRequestParamsType>(true, true) { // from class: io.bidmachine.displays.VideoPlacementBuilder
        private boolean canSkip;

        {
            super(AdContentType.Video, r6);
            this.canSkip = r5;
        }

        @Override // io.bidmachine.displays.PlacementBuilder
        public AdObjectParams createAdObjectParams(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype, Response.Seatbid seatbid, Response.Seatbid.Bid bid, C9813Ad c9813Ad) {
            if (!c9813Ad.hasVideo()) {
                return null;
            }
            AdObjectParams createHeaderBiddingAdObjectParams = createHeaderBiddingAdObjectParams(contextProvider, unifiedadrequestparamstype, seatbid, bid, c9813Ad);
            VideoAdObjectParams videoAdObjectParams = createHeaderBiddingAdObjectParams;
            if (createHeaderBiddingAdObjectParams == null) {
                C9813Ad.Video video = c9813Ad.getVideo();
                VideoAdObjectParams videoAdObjectParams2 = new VideoAdObjectParams(seatbid, bid, c9813Ad);
                videoAdObjectParams2.setCreativeAdm(video.getAdm());
                videoAdObjectParams = videoAdObjectParams2;
            }
            return videoAdObjectParams;
        }

        @Override // io.bidmachine.displays.PlacementBuilder
        public void createPlacement(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype, AdsType adsType, Collection<NetworkConfig> collection, PlacementBuilder.PlacementCreateCallback placementCreateCallback) throws Exception {
            Placement.VideoPlacement.Builder newBuilder = Placement.VideoPlacement.newBuilder();
            newBuilder.setSkip(this.canSkip);
            newBuilder.setUnit(SizeUnit.SIZE_UNIT_DIPS);
            newBuilder.setPos(PlacementPosition.PLACEMENT_POSITION_FULLSCREEN);
            Point size = getSize(contextProvider, unifiedadrequestparamstype);
            newBuilder.setW(size.x);
            newBuilder.setH(size.y);
            newBuilder.addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_2_0);
            newBuilder.addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_3_0);
            newBuilder.addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_WRAPPER_2_0);
            newBuilder.addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_WRAPPER_3_0);
            newBuilder.addAllMime(Arrays.asList(Constants.VIDEO_MIME_TYPES));
            newBuilder.setMinbitr(56);
            newBuilder.setMaxbitr(4096);
            newBuilder.setMindur(5);
            newBuilder.setMaxdur(30);
            newBuilder.setLinearValue(1);
            Message.Builder createHeaderBiddingPlacement = createHeaderBiddingPlacement(contextProvider, unifiedadrequestparamstype, adsType, collection);
            if (createHeaderBiddingPlacement != null) {
                newBuilder.addExtProto(Any.pack(createHeaderBiddingPlacement.build()));
            }
            placementCreateCallback.onCreated(newBuilder);
        }

        public Point getSize(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype) {
            return Utils.getScreenSize(contextProvider.getContext());
        }
    }}),
    Rewarded(Reporting.AdFormat.REWARDED, new ApiRequest.ApiAuctionDataBinder(), new PlacementBuilder[]{new DisplayPlacementBuilder(true, true), new PlacementBuilder<UnifiedAdRequestParamsType>(false, true) { // from class: io.bidmachine.displays.VideoPlacementBuilder
        private boolean canSkip;

        {
            super(AdContentType.Video, r6);
            this.canSkip = r5;
        }

        @Override // io.bidmachine.displays.PlacementBuilder
        public AdObjectParams createAdObjectParams(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype, Response.Seatbid seatbid, Response.Seatbid.Bid bid, C9813Ad c9813Ad) {
            if (!c9813Ad.hasVideo()) {
                return null;
            }
            AdObjectParams createHeaderBiddingAdObjectParams = createHeaderBiddingAdObjectParams(contextProvider, unifiedadrequestparamstype, seatbid, bid, c9813Ad);
            VideoAdObjectParams videoAdObjectParams = createHeaderBiddingAdObjectParams;
            if (createHeaderBiddingAdObjectParams == null) {
                C9813Ad.Video video = c9813Ad.getVideo();
                VideoAdObjectParams videoAdObjectParams2 = new VideoAdObjectParams(seatbid, bid, c9813Ad);
                videoAdObjectParams2.setCreativeAdm(video.getAdm());
                videoAdObjectParams = videoAdObjectParams2;
            }
            return videoAdObjectParams;
        }

        @Override // io.bidmachine.displays.PlacementBuilder
        public void createPlacement(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype, AdsType adsType, Collection<NetworkConfig> collection, PlacementBuilder.PlacementCreateCallback placementCreateCallback) throws Exception {
            Placement.VideoPlacement.Builder newBuilder = Placement.VideoPlacement.newBuilder();
            newBuilder.setSkip(this.canSkip);
            newBuilder.setUnit(SizeUnit.SIZE_UNIT_DIPS);
            newBuilder.setPos(PlacementPosition.PLACEMENT_POSITION_FULLSCREEN);
            Point size = getSize(contextProvider, unifiedadrequestparamstype);
            newBuilder.setW(size.x);
            newBuilder.setH(size.y);
            newBuilder.addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_2_0);
            newBuilder.addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_3_0);
            newBuilder.addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_WRAPPER_2_0);
            newBuilder.addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_WRAPPER_3_0);
            newBuilder.addAllMime(Arrays.asList(Constants.VIDEO_MIME_TYPES));
            newBuilder.setMinbitr(56);
            newBuilder.setMaxbitr(4096);
            newBuilder.setMindur(5);
            newBuilder.setMaxdur(30);
            newBuilder.setLinearValue(1);
            Message.Builder createHeaderBiddingPlacement = createHeaderBiddingPlacement(contextProvider, unifiedadrequestparamstype, adsType, collection);
            if (createHeaderBiddingPlacement != null) {
                newBuilder.addExtProto(Any.pack(createHeaderBiddingPlacement.build()));
            }
            placementCreateCallback.onCreated(newBuilder);
        }

        public Point getSize(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype) {
            return Utils.getScreenSize(contextProvider.getContext());
        }
    }}),
    Native("native", new ApiRequest.ApiAuctionDataBinder(), new PlacementBuilder[]{new PlacementBuilder<UnifiedNativeAdRequestParams>(false) { // from class: io.bidmachine.displays.NativePlacementBuilder
        static final int CTA_ASSET_ID = 8;
        static final int DESC_ASSET_ID = 127;
        static final int ICON_ASSET_ID = 124;
        static final int IMAGE_ASSET_ID = 128;
        static final int RATING_ASSET_ID = 7;
        static final int TITLE_ASSET_ID = 123;
        static final int VIDEO_ASSET_ID = 4;
        private static final Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder ctaAsset;
        private static final Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder descAsset;
        private static final Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder ratingAsset;
        private static final Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder titleAsset;

        static {
            Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder newBuilder = Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder();
            titleAsset = newBuilder;
            newBuilder.setId(123);
            newBuilder.setReq(true);
            newBuilder.setTitle(Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormat.newBuilder().setLen(104).build());
            Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder newBuilder2 = Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder();
            descAsset = newBuilder2;
            newBuilder2.setId(127);
            newBuilder2.setReq(true);
            newBuilder2.setData(Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormat.newBuilder().setType(NativeDataAssetType.NATIVE_DATA_ASSET_TYPE_DESC).build());
            Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder newBuilder3 = Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder();
            ctaAsset = newBuilder3;
            newBuilder3.setId(8);
            newBuilder3.setReq(true);
            newBuilder3.setData(Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormat.newBuilder().setType(NativeDataAssetType.NATIVE_DATA_ASSET_TYPE_CTA_TEXT).build());
            Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder newBuilder4 = Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder();
            ratingAsset = newBuilder4;
            newBuilder4.setId(7);
            newBuilder4.setReq(false);
            newBuilder4.setData(Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormat.newBuilder().setType(NativeDataAssetType.NATIVE_DATA_ASSET_TYPE_RATING).build());
        }

        {
            AdContentType adContentType = AdContentType.All;
        }

        static Placement.DisplayPlacement.NativeFormat.AssetFormat createIconAsset(UnifiedNativeAdRequestParams unifiedNativeAdRequestParams) {
            Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder newBuilder = Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder();
            newBuilder.setId(124);
            newBuilder.setReq(unifiedNativeAdRequestParams.containsAssetType(MediaAssetType.Icon));
            newBuilder.setImg(Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormat.newBuilder().setType(NativeImageAssetType.NATIVE_IMAGE_ASSET_TYPE_ICON_IMAGE).addAllMime(Arrays.asList(Constants.IMAGE_MIME_TYPES)).build());
            return newBuilder.build();
        }

        static Placement.DisplayPlacement.NativeFormat.AssetFormat createImageAsset(UnifiedNativeAdRequestParams unifiedNativeAdRequestParams) {
            Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder newBuilder = Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder();
            newBuilder.setId(128);
            newBuilder.setReq(unifiedNativeAdRequestParams.containsAssetType(MediaAssetType.Image));
            newBuilder.setImg(Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormat.newBuilder().setType(NativeImageAssetType.NATIVE_IMAGE_ASSET_TYPE_MAIN_IMAGE).addAllMime(Arrays.asList(Constants.IMAGE_MIME_TYPES)).build());
            return newBuilder.build();
        }

        static Placement.DisplayPlacement.NativeFormat.AssetFormat createVideoAsset(UnifiedNativeAdRequestParams unifiedNativeAdRequestParams) {
            Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder newBuilder = Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder();
            newBuilder.setId(4);
            newBuilder.setReq(unifiedNativeAdRequestParams.containsAssetType(MediaAssetType.Video));
            newBuilder.setVideo(Placement.VideoPlacement.newBuilder().setSkip(false).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_2_0).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_3_0).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_WRAPPER_2_0).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_WRAPPER_3_0).addAllMime(Arrays.asList(Constants.VIDEO_MIME_TYPES)).setMinbitr(56).setMaxbitr(4096).setMindur(5).setMaxdur(30).setLinearValue(1).build());
            return newBuilder.build();
        }

        public AdObjectParams createAdObjectParams(ContextProvider contextProvider, UnifiedNativeAdRequestParams unifiedNativeAdRequestParams, Response.Seatbid seatbid, Response.Seatbid.Bid bid, C9813Ad c9813Ad) {
            AdObjectParams createHeaderBiddingAdObjectParams = createHeaderBiddingAdObjectParams(contextProvider, unifiedNativeAdRequestParams, seatbid, bid, c9813Ad);
            NativeAdObjectParams nativeAdObjectParams = createHeaderBiddingAdObjectParams;
            if (createHeaderBiddingAdObjectParams == null) {
                nativeAdObjectParams = createHeaderBiddingAdObjectParams;
                if (c9813Ad.hasDisplay()) {
                    nativeAdObjectParams = createHeaderBiddingAdObjectParams;
                    if (c9813Ad.getDisplay().hasNative()) {
                        nativeAdObjectParams = new NativeAdObjectParams(seatbid, bid, c9813Ad);
                    }
                }
            }
            return nativeAdObjectParams;
        }

        @Override // io.bidmachine.displays.PlacementBuilder
        public /* bridge */ /* synthetic */ void createPlacement(ContextProvider contextProvider, UnifiedNativeAdRequestParams unifiedNativeAdRequestParams, AdsType adsType, Collection collection, PlacementBuilder.PlacementCreateCallback placementCreateCallback) throws Exception {
            createPlacement2(contextProvider, unifiedNativeAdRequestParams, adsType, (Collection<NetworkConfig>) collection, placementCreateCallback);
        }

        /* renamed from: createPlacement  reason: avoid collision after fix types in other method */
        public void createPlacement2(ContextProvider contextProvider, UnifiedNativeAdRequestParams unifiedNativeAdRequestParams, AdsType adsType, Collection<NetworkConfig> collection, PlacementBuilder.PlacementCreateCallback placementCreateCallback) throws Exception {
            Placement.DisplayPlacement.Builder newBuilder = Placement.DisplayPlacement.newBuilder();
            newBuilder.setInstl(false);
            newBuilder.setUnit(SizeUnit.SIZE_UNIT_DIPS);
            Placement.DisplayPlacement.NativeFormat.Builder newBuilder2 = Placement.DisplayPlacement.NativeFormat.newBuilder();
            newBuilder2.addAsset(titleAsset);
            newBuilder2.addAsset(descAsset);
            newBuilder2.addAsset(ctaAsset);
            newBuilder2.addAsset(ratingAsset);
            newBuilder2.addAsset(createIconAsset(unifiedNativeAdRequestParams));
            newBuilder2.addAsset(createImageAsset(unifiedNativeAdRequestParams));
            newBuilder2.addAsset(createVideoAsset(unifiedNativeAdRequestParams));
            newBuilder.setNativefmt(newBuilder2);
            newBuilder.addAllMime(Arrays.asList(Constants.IMAGE_MIME_TYPES));
            newBuilder.addAllMime(Arrays.asList(Constants.VIDEO_MIME_TYPES));
            Message.Builder createHeaderBiddingPlacement = createHeaderBiddingPlacement(contextProvider, unifiedNativeAdRequestParams, adsType, collection);
            if (createHeaderBiddingPlacement != null) {
                newBuilder.addExtProto(Any.pack(createHeaderBiddingPlacement.build()));
            }
            placementCreateCallback.onCreated(newBuilder);
        }
    }});
    
    private final ApiRequest.ApiAuctionDataBinder binder;
    private final String name;
    private final PlacementBuilder[] placementBuilders;
    private final Map<String, NetworkConfig> networkConfigs = new HashMap();
    private final Executor placementCreateExecutor = Executors.newFixedThreadPool(Math.max(8, Runtime.getRuntime().availableProcessors() * 4));

    AdsType(String str, ApiRequest.ApiAuctionDataBinder apiAuctionDataBinder, PlacementBuilder[] placementBuilderArr) {
        this.name = str;
        this.binder = apiAuctionDataBinder;
        this.placementBuilders = placementBuilderArr;
    }

    public final void addNetworkConfig(String str, NetworkConfig networkConfig) {
        this.networkConfigs.put(str, networkConfig);
    }

    public final void collectDisplayPlacements(final ContextProvider contextProvider, AdRequest adRequest, final UnifiedAdRequestParams unifiedAdRequestParams, final ArrayList<Message.Builder> arrayList, final Map<String, NetworkConfig> map) {
        PlacementBuilder[] placementBuilderArr;
        final CountDownLatch countDownLatch = new CountDownLatch(this.placementBuilders.length);
        for (final PlacementBuilder placementBuilder : this.placementBuilders) {
            if (adRequest.isPlacementBuilderMatch(placementBuilder)) {
                this.placementCreateExecutor.execute(new Runnable() { // from class: io.bidmachine.AdsType.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            PlacementBuilder placementBuilder2 = placementBuilder;
                            ContextProvider contextProvider2 = contextProvider;
                            UnifiedAdRequestParams unifiedAdRequestParams2 = unifiedAdRequestParams;
                            AdsType adsType = AdsType.this;
                            Map map2 = map;
                            placementBuilder2.createPlacement(contextProvider2, unifiedAdRequestParams2, adsType, map2 != null ? map2.values() : adsType.networkConfigs.values(), new PlacementBuilder.PlacementCreateCallback() { // from class: io.bidmachine.AdsType.2.1
                                @Override // io.bidmachine.displays.PlacementBuilder.PlacementCreateCallback
                                public final void onCreated(Message.Builder builder) {
                                    if (builder != null) {
                                        synchronized (arrayList) {
                                            arrayList.add(builder);
                                        }
                                    }
                                    countDownLatch.countDown();
                                }
                            });
                        } catch (Exception e) {
                            Logger.log(e);
                            countDownLatch.countDown();
                        }
                    }
                });
            } else {
                countDownLatch.countDown();
            }
        }
        try {
            countDownLatch.await();
        } catch (InterruptedException e) {
            Logger.log(e);
        }
    }

    public final AdObjectParams createAdObjectParams(ContextProvider contextProvider, UnifiedAdRequestParams unifiedAdRequestParams, Response.Seatbid seatbid, Response.Seatbid.Bid bid, C9813Ad c9813Ad) {
        for (PlacementBuilder placementBuilder : this.placementBuilders) {
            AdObjectParams createAdObjectParams = placementBuilder.createAdObjectParams(contextProvider, unifiedAdRequestParams, seatbid, bid, c9813Ad);
            if (createAdObjectParams != null) {
                return createAdObjectParams;
            }
        }
        return null;
    }

    public final ApiRequest.ApiAuctionDataBinder getBinder() {
        return this.binder;
    }

    public final String getName() {
        return this.name;
    }

    public final HeaderBiddingAd obtainHeaderBiddingAd(C9813Ad c9813Ad) {
        for (PlacementBuilder placementBuilder : this.placementBuilders) {
            HeaderBiddingAd obtainHeaderBiddingAd = placementBuilder.obtainHeaderBiddingAd(c9813Ad);
            if (obtainHeaderBiddingAd != null) {
                return obtainHeaderBiddingAd;
            }
        }
        return null;
    }

    public final NetworkConfig obtainNetworkConfig(C9813Ad c9813Ad) {
        HeaderBiddingAd obtainHeaderBiddingAd = obtainHeaderBiddingAd(c9813Ad);
        NetworkConfig config = obtainHeaderBiddingAd != null ? C17859f.getConfig(obtainHeaderBiddingAd.getBidder()) : null;
        NetworkConfig networkConfig = config;
        if (config == null) {
            if (this == Native) {
                networkConfig = C17859f.getConfig("nast");
            } else if (c9813Ad.hasDisplay()) {
                networkConfig = C17859f.getConfig("mraid");
            } else {
                networkConfig = config;
                if (c9813Ad.hasVideo()) {
                    networkConfig = C17859f.getConfig(FullAdType.VAST);
                }
            }
        }
        return networkConfig;
    }
}
