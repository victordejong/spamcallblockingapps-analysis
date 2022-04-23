package com.mopub.volley.toolbox;

import android.content.Context;
import com.mopub.volley.Network;
import com.mopub.volley.RequestQueue;
import java.io.File;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/Volley.class */
public class Volley {
    /* renamed from: a */
    public static RequestQueue m3667a(Context context, Network network) {
        RequestQueue requestQueue = new RequestQueue(new DiskBasedCache(new File(context.getCacheDir(), com.android.volley.toolbox.Volley.DEFAULT_CACHE_DIR)), network);
        requestQueue.start();
        return requestQueue;
    }

    public static RequestQueue newRequestQueue(Context context, BaseHttpStack baseHttpStack) {
        return m3667a(context, baseHttpStack == null ? new BasicNetwork(new HurlStack()) : new BasicNetwork(baseHttpStack));
    }
}
