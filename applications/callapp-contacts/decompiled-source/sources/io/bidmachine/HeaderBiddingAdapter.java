package io.bidmachine;

import io.bidmachine.unified.UnifiedAdRequestParams;
import java.util.Map;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/HeaderBiddingAdapter.class */
public interface HeaderBiddingAdapter {
    void collectHeaderBiddingParams(ContextProvider contextProvider, UnifiedAdRequestParams unifiedAdRequestParams, HeaderBiddingAdRequestParams headerBiddingAdRequestParams, HeaderBiddingCollectParamsCallback headerBiddingCollectParamsCallback, Map<String, String> map) throws Exception;

    String getKey();

    String getVersion();
}
