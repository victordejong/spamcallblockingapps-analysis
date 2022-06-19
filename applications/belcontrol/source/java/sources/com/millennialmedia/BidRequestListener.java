package com.millennialmedia;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/BidRequestListener.class */
public interface BidRequestListener {
    void onRequestFailed(BidRequestErrorStatus bidRequestErrorStatus);

    void onRequestSucceeded(String str);
}
