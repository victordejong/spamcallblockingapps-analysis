package com.yanzhenjie.nohttp;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.ImageView;
import com.yanzhenjie.nohttp.download.DownloadQueue;
import com.yanzhenjie.nohttp.download.DownloadRequest;
import com.yanzhenjie.nohttp.rest.ByteArrayRequest;
import com.yanzhenjie.nohttp.rest.ImageRequest;
import com.yanzhenjie.nohttp.rest.JsonArrayRequest;
import com.yanzhenjie.nohttp.rest.JsonObjectRequest;
import com.yanzhenjie.nohttp.rest.Request;
import com.yanzhenjie.nohttp.rest.RequestQueue;
import com.yanzhenjie.nohttp.rest.Response;
import com.yanzhenjie.nohttp.rest.StringRequest;
import com.yanzhenjie.nohttp.rest.SyncRequestExecutor;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/NoHttp.class */
public class NoHttp {
    private static DownloadQueue sDownloadQueueInstance;
    private static InitializationConfig sInitializeConfig;
    private static RequestQueue sRequestQueueInstance;

    private NoHttp() {
    }

    public static Request<byte[]> createByteArrayRequest(String str) {
        return new ByteArrayRequest(str);
    }

    public static Request<byte[]> createByteArrayRequest(String str, RequestMethod requestMethod) {
        return new ByteArrayRequest(str, requestMethod);
    }

    public static DownloadRequest createDownloadRequest(String str, RequestMethod requestMethod, String str2, String str3, boolean z, boolean z2) {
        return new DownloadRequest(str, requestMethod, str2, str3, z, z2);
    }

    public static DownloadRequest createDownloadRequest(String str, RequestMethod requestMethod, String str2, boolean z) {
        return new DownloadRequest(str, requestMethod, str2, true, z);
    }

    public static DownloadRequest createDownloadRequest(String str, RequestMethod requestMethod, String str2, boolean z, boolean z2) {
        return new DownloadRequest(str, requestMethod, str2, z, z2);
    }

    public static DownloadRequest createDownloadRequest(String str, String str2, String str3, boolean z, boolean z2) {
        return createDownloadRequest(str, RequestMethod.GET, str2, str3, z, z2);
    }

    public static DownloadRequest createDownloadRequest(String str, String str2, boolean z) {
        return createDownloadRequest(str, RequestMethod.GET, str2, z);
    }

    public static Request<Bitmap> createImageRequest(String str) {
        return createImageRequest(str, RequestMethod.GET);
    }

    public static Request<Bitmap> createImageRequest(String str, RequestMethod requestMethod) {
        return createImageRequest(str, requestMethod, 1000, 1000, Bitmap.Config.ARGB_8888, ImageView.ScaleType.CENTER_INSIDE);
    }

    public static Request<Bitmap> createImageRequest(String str, RequestMethod requestMethod, int i, int i2, Bitmap.Config config, ImageView.ScaleType scaleType) {
        return new ImageRequest(str, requestMethod, i, i2, config, scaleType);
    }

    public static Request<JSONArray> createJsonArrayRequest(String str) {
        return new JsonArrayRequest(str);
    }

    public static Request<JSONArray> createJsonArrayRequest(String str, RequestMethod requestMethod) {
        return new JsonArrayRequest(str, requestMethod);
    }

    public static Request<JSONObject> createJsonObjectRequest(String str) {
        return new JsonObjectRequest(str);
    }

    public static Request<JSONObject> createJsonObjectRequest(String str, RequestMethod requestMethod) {
        return new JsonObjectRequest(str, requestMethod);
    }

    public static Request<String> createStringRequest(String str) {
        return new StringRequest(str);
    }

    public static Request<String> createStringRequest(String str, RequestMethod requestMethod) {
        return new StringRequest(str, requestMethod);
    }

    public static Context getContext() {
        testInitialize();
        return sInitializeConfig.getContext();
    }

    public static DownloadQueue getDownloadQueueInstance() {
        if (sDownloadQueueInstance == null) {
            synchronized (NoHttp.class) {
                try {
                    if (sDownloadQueueInstance == null) {
                        sDownloadQueueInstance = newDownloadQueue();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return sDownloadQueueInstance;
    }

    public static InitializationConfig getInitializeConfig() {
        testInitialize();
        return sInitializeConfig;
    }

    public static RequestQueue getRequestQueueInstance() {
        if (sRequestQueueInstance == null) {
            synchronized (NoHttp.class) {
                try {
                    if (sRequestQueueInstance == null) {
                        sRequestQueueInstance = newRequestQueue();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return sRequestQueueInstance;
    }

    public static void initialize(Context context) {
        initialize(InitializationConfig.newBuilder(context).build());
    }

    public static void initialize(InitializationConfig initializationConfig) {
        sInitializeConfig = initializationConfig;
    }

    public static DownloadQueue newDownloadQueue() {
        return newDownloadQueue(3);
    }

    public static DownloadQueue newDownloadQueue(int i) {
        DownloadQueue downloadQueue = new DownloadQueue(i);
        downloadQueue.start();
        return downloadQueue;
    }

    public static RequestQueue newRequestQueue() {
        return newRequestQueue(3);
    }

    public static RequestQueue newRequestQueue(int i) {
        RequestQueue requestQueue = new RequestQueue(i);
        requestQueue.start();
        return requestQueue;
    }

    public static <T> Response<T> startRequestSync(Request<T> request) {
        return SyncRequestExecutor.INSTANCE.execute(request);
    }

    private static void testInitialize() {
        if (sInitializeConfig != null) {
            return;
        }
        throw new ExceptionInInitializerError("Please invoke NoHttp.initialize(Application) on Application#onCreate()");
    }
}
