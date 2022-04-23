package com.facebook.biddingkit.a;

import com.facebook.ads.AdError;
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/a/b.class */
public enum b {
    WIN(0),
    TIMEOUT(2),
    NO_BID(9),
    OUTBID(102),
    DID_NOT_PARTICIPATE(AdError.INTERNAL_ERROR_2003);
    
    private final int mCode;

    b(int i) {
        this.mCode = i;
    }

    public final String getStringValue() {
        return Integer.toString(this.mCode);
    }
}
