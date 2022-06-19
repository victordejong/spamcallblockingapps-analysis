package com.facebook.biddingkit.p290a;

import com.facebook.ads.AdError;
/* renamed from: com.facebook.biddingkit.a.b */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/a/b.class */
public enum EnumC10114b {
    WIN(0),
    TIMEOUT(2),
    NO_BID(9),
    OUTBID(102),
    DID_NOT_PARTICIPATE(AdError.INTERNAL_ERROR_2003);
    
    private final int mCode;

    EnumC10114b(int i) {
        this.mCode = i;
    }

    public final String getStringValue() {
        return Integer.toString(this.mCode);
    }
}
