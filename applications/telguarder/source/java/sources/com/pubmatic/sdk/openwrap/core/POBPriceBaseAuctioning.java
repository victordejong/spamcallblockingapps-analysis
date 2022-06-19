package com.pubmatic.sdk.openwrap.core;

import com.pubmatic.sdk.common.base.POBAuctioning;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBPriceBaseAuctioning.class */
public class POBPriceBaseAuctioning implements POBAuctioning<POBBid> {
    @Override // com.pubmatic.sdk.common.base.POBAuctioning
    public POBBid perform(List<POBBid> list) {
        POBBid pOBBid;
        if (!list.isEmpty()) {
            POBBid pOBBid2 = list.get(0);
            int i = 1;
            while (true) {
                pOBBid = pOBBid2;
                if (i >= list.size()) {
                    break;
                }
                POBBid pOBBid3 = list.get(i);
                POBBid pOBBid4 = pOBBid2;
                if (pOBBid3 != null) {
                    if (pOBBid2 != null) {
                        pOBBid4 = pOBBid2;
                        if (pOBBid2.getPrice() >= pOBBid3.getPrice()) {
                        }
                    }
                    pOBBid4 = pOBBid3;
                }
                i++;
                pOBBid2 = pOBBid4;
            }
        } else {
            pOBBid = null;
        }
        return pOBBid;
    }
}
