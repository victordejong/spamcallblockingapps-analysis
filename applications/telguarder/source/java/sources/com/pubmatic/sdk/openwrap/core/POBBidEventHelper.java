package com.pubmatic.sdk.openwrap.core;

import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.openwrap.core.POBBidEvent;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBBidEventHelper.class */
public class POBBidEventHelper {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.openwrap.core.POBBidEventHelper$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBBidEventHelper$a.class */
    public static /* synthetic */ class C1934a {

        /* renamed from: a */
        static final /* synthetic */ int[] f714a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[POBBidEvent.BidEventError.values().length];
            f714a = iArr;
            try {
                iArr[POBBidEvent.BidEventError.CLIENT_SIDE_AUCTION_LOSS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f714a[POBBidEvent.BidEventError.BID_EXPIRED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f714a[POBBidEvent.BidEventError.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public static POBError convertToPOBError(POBBidEvent.BidEventError bidEventError) {
        int i = C1934a.f714a[bidEventError.ordinal()];
        return i != 1 ? i != 2 ? new POBError(1006, bidEventError.getErrorMessage()) : new POBError(1011, bidEventError.getErrorMessage()) : new POBError(3001, bidEventError.getErrorMessage());
    }
}
