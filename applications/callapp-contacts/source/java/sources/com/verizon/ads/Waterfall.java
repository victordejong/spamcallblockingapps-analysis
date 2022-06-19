package com.verizon.ads;

import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/Waterfall.class */
public interface Waterfall {

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/Waterfall$WaterfallItem.class */
    public interface WaterfallItem {

        /* loaded from: classes4-dex2jar.jar:com/verizon/ads/Waterfall$WaterfallItem$FetchResult.class */
        public static final class FetchResult {
            public final AdContent adContent;
            public final ErrorInfo errorInfo;

            public FetchResult(AdContent adContent) {
                this.adContent = adContent;
                this.errorInfo = null;
            }

            public FetchResult(ErrorInfo errorInfo) {
                this.adContent = null;
                this.errorInfo = errorInfo;
            }
        }

        FetchResult fetch(AdSession adSession);

        Map<String, Object> getMetadata();
    }

    Map<String, Object> getMetadata();

    WaterfallItem[] getWaterfallItems();
}
