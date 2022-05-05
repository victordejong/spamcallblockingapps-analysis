package com.aotter.net.volley.toolbox;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.http.AndroidHttpClient;
import android.os.Build;
import com.aotter.net.trek.network.CustomSSLSocketFactory;
import com.aotter.net.volley.RequestQueue;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/aotter/net/volley/toolbox/Volley.class */
public class Volley {
    public static final String DEFAULT_CACHE_DIR = "volley";

    public static RequestQueue newRequestQueue(Context context) {
        return newRequestQueue(context, null);
    }

    public static RequestQueue newRequestQueue(Context context, HttpStack httpStack) {
        String str;
        File file = new File(context.getCacheDir(), DEFAULT_CACHE_DIR);
        try {
            String packageName = context.getPackageName();
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
            str = packageName + "/" + packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            str = "volley/0";
        }
        HttpStack httpStack2 = httpStack;
        if (httpStack == null) {
            httpStack2 = Build.VERSION.SDK_INT >= 9 ? new HurlStack(null, CustomSSLSocketFactory.getDefault(10000)) : new HttpClientStack(AndroidHttpClient.newInstance(str));
        }
        RequestQueue requestQueue = new RequestQueue(new DiskBasedCache(file), new BasicNetwork(httpStack2));
        requestQueue.start();
        return requestQueue;
    }
}
