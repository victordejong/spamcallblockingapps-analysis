package com.millennialmedia;

import com.millennialmedia.internal.ErrorStatus;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/BidRequestErrorStatus.class */
public class BidRequestErrorStatus extends ErrorStatus {
    public static final int INVALID_BID_PRICE = 401;

    static {
        ErrorStatus.errorCodes.put(Integer.valueOf((int) INVALID_BID_PRICE), "INVALID_BID_PRICE");
    }

    public BidRequestErrorStatus(int i) {
        super(i);
    }

    public BidRequestErrorStatus(int i, String str) {
        super(i, str);
    }
}
