package com.mopub.volley.toolbox;

import android.content.Context;
import com.mopub.volley.RequestQueue;
import java.io.File;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/Volley.class */
public class Volley {
    public static RequestQueue newRequestQueue(Context context, BaseHttpStack baseHttpStack) {
        RequestQueue requestQueue = new RequestQueue(new DiskBasedCache(new File(context.getCacheDir(), "volley")), baseHttpStack == null ? new BasicNetwork(new HurlStack()) : new BasicNetwork(baseHttpStack));
        requestQueue.start();
        return requestQueue;
    }
}
