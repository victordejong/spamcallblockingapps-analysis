package io.bidmachine.models;

import io.bidmachine.AdRequest;
import io.bidmachine.NetworkConfig;
import io.bidmachine.PriceFloorParams;
import io.bidmachine.SessionAdParams;
import io.bidmachine.TargetingParams;
import io.bidmachine.models.RequestBuilder;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/models/RequestBuilder.class */
public interface RequestBuilder<SelfType extends RequestBuilder, ReturnType extends AdRequest> {
    ReturnType build();

    SelfType disableHeaderBidding();

    SelfType enableHeaderBidding();

    SelfType setListener(AdRequest.AdRequestListener<ReturnType> adRequestListener);

    SelfType setLoadingTimeOut(int i);

    SelfType setNetworks(String str);

    SelfType setNetworks(List<NetworkConfig> list);

    SelfType setPriceFloorParams(PriceFloorParams priceFloorParams);

    SelfType setSessionAdParams(SessionAdParams sessionAdParams);

    SelfType setTargetingParams(TargetingParams targetingParams);
}
