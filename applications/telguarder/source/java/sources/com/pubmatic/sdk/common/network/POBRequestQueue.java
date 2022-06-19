package com.pubmatic.sdk.common.network;

import com.android.volley.Cache;
import com.android.volley.Network;
import com.android.volley.RequestQueue;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/POBRequestQueue.class */
public class POBRequestQueue extends RequestQueue {
    public POBRequestQueue(Cache cache, Network network) {
        super(cache, network);
    }
}
