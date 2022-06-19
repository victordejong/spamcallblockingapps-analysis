package com.mopub.volley.toolbox;

import android.content.Context;
import com.mopub.volley.Network;
import com.mopub.volley.RequestQueue;
import java.io.File;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/Volley.class */
public class Volley {
    /* renamed from: a */
    public static RequestQueue m3085a(Context context, Network network) {
        RequestQueue requestQueue = new RequestQueue(new DiskBasedCache(new File(context.getCacheDir(), "volley")), network);
        requestQueue.start();
        return requestQueue;
    }

    public static RequestQueue newRequestQueue(Context context, BaseHttpStack baseHttpStack) {
        return m3085a(context, baseHttpStack == null ? new BasicNetwork(new HurlStack()) : new BasicNetwork(baseHttpStack));
    }
}
