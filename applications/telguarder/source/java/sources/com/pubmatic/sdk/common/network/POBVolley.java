package com.pubmatic.sdk.common.network;

import android.content.Context;
import com.android.volley.Network;
import com.android.volley.toolbox.DiskBasedCache;
import java.io.File;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/POBVolley.class */
public class POBVolley {
    public static POBRequestQueue newRequestQueue(Context context, Network network) {
        POBRequestQueue pOBRequestQueue = new POBRequestQueue(new DiskBasedCache(new File(context.getCacheDir(), "pmvolley")), network);
        pOBRequestQueue.start();
        return pOBRequestQueue;
    }
}
