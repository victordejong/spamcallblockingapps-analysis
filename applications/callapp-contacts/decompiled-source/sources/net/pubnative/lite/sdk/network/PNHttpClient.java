package net.pubnative.lite.sdk.network;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayDeque;
import java.util.Locale;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/network/PNHttpClient.class */
public class PNHttpClient {
    private static final int CONNECT_TIMEOUT = 10000;
    private static final int READ_TIMEOUT = 10000;
    private static final ExecutorService sExecutor = Executors.newCachedThreadPool();
    private static final Handler sUiHandler = new Handler(Looper.getMainLooper());
    private static final Queue<PendingRequest> sPendingRequests = new ArrayDeque();
    private static final Queue<PendingRequest> sCurrentRequests = new ArrayDeque();

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/network/PNHttpClient$Listener.class */
    public interface Listener {
        void onFailure(Throwable th);

        void onSuccess(String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/network/PNHttpClient$Response.class */
    public static class Response {
        private Exception exception;
        private String response;
        private int responseCode;

        private Response() {
        }

        public Exception getException() {
            return this.exception;
        }

        public String getResponse() {
            return this.response;
        }

        public int getResponseCode() {
            return this.responseCode;
        }
    }

    private static NetworkInfo getActiveNetworkInfo(Context context) {
        if (context == null) {
            return null;
        }
        return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
    }

    private static String getStringFromStream(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(4096);
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return byteArrayOutputStream.toString("UTF-8");
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    private static boolean isHttpSuccess(int i) {
        return i / 100 == 2;
    }

    public static void makePendingRequest(Context context, final String str, final Map<String, String> map, final String str2) {
        NetworkInfo activeNetworkInfo = getActiveNetworkInfo(context);
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            if (activeNetworkInfo.getType() == 1 || activeNetworkInfo.getType() == 0) {
                sExecutor.submit(new Runnable() { // from class: net.pubnative.lite.sdk.network.PNHttpClient.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (PNHttpClient.sendRequest(str, map, str2).exception != null && !TextUtils.isEmpty(str)) {
                            PNHttpClient.sPendingRequests.add(new PendingRequest(str, str2, map));
                        }
                    }
                });
            }
        }
    }

    public static void makeRequest(Context context, String str, Map<String, String> map, String str2, Listener listener) {
        makeRequest(context, str, map, str2, true, listener);
    }

    public static void makeRequest(Context context, String str, Map<String, String> map, String str2, boolean z, Listener listener) {
        makeRequest(context, str, map, str2, z, false, listener);
    }

    public static void makeRequest(final Context context, final String str, final Map<String, String> map, final String str2, final boolean z, final boolean z2, final Listener listener) {
        NetworkInfo activeNetworkInfo = getActiveNetworkInfo(context);
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected() && (activeNetworkInfo.getType() == 1 || activeNetworkInfo.getType() == 0)) {
            sExecutor.submit(new Runnable() { // from class: net.pubnative.lite.sdk.network.PNHttpClient.1
                @Override // java.lang.Runnable
                public final void run() {
                    final Response sendRequest = PNHttpClient.sendRequest(str, map, str2);
                    if (sendRequest.exception != null) {
                        if (z2 && !TextUtils.isEmpty(str)) {
                            PNHttpClient.sPendingRequests.add(new PendingRequest(str, str2, map));
                        }
                        if (z) {
                            PNHttpClient.sUiHandler.post(new Runnable() { // from class: net.pubnative.lite.sdk.network.PNHttpClient.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (listener != null) {
                                        listener.onFailure(sendRequest.exception);
                                    }
                                }
                            });
                        } else {
                            Listener listener2 = listener;
                            if (listener2 != null) {
                                listener2.onFailure(sendRequest.exception);
                            }
                        }
                    } else if (z) {
                        PNHttpClient.sUiHandler.post(new Runnable() { // from class: net.pubnative.lite.sdk.network.PNHttpClient.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                if (listener != null) {
                                    listener.onSuccess(sendRequest.response);
                                }
                            }
                        });
                    } else {
                        Listener listener3 = listener;
                        if (listener3 != null) {
                            listener3.onSuccess(sendRequest.response);
                        }
                    }
                    PNHttpClient.performPendingRequests(context);
                }
            });
        } else if (listener != null) {
            listener.onFailure(new Exception("{\"status\": \"error\", \"error_message\": \"Unable to connect to URL. No network connection.\"}"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void performPendingRequests(Context context) {
        Queue<PendingRequest> queue = sCurrentRequests;
        if (queue.isEmpty()) {
            Queue<PendingRequest> queue2 = sPendingRequests;
            if (!queue2.isEmpty()) {
                queue.addAll(queue2);
                queue2.clear();
            }
        }
        if (!queue.isEmpty()) {
            for (PendingRequest pendingRequest : queue) {
                makePendingRequest(context, pendingRequest.getUrl(), pendingRequest.getHeaders(), pendingRequest.getPostBody());
            }
            sCurrentRequests.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Response sendRequest(String str, Map<String, String> map, String str2) {
        Throwable th;
        Exception e;
        HttpURLConnection httpURLConnection = null;
        HttpURLConnection httpURLConnection2 = null;
        Response response = new Response();
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setInstanceFollowRedirects(true);
            httpURLConnection.setRequestMethod("GET");
            if (map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    httpURLConnection.addRequestProperty(entry.getKey(), entry.getValue());
                }
            }
            if (!TextUtils.isEmpty(str2)) {
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setRequestMethod("POST");
                DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                dataOutputStream.writeBytes(str2);
                dataOutputStream.flush();
                dataOutputStream.close();
            }
            int responseCode = httpURLConnection.getResponseCode();
            response.responseCode = responseCode;
            if (isHttpSuccess(responseCode)) {
                InputStream inputStream = httpURLConnection.getInputStream();
                response.response = getStringFromStream(inputStream);
                inputStream.close();
            } else {
                response.exception = new Exception(String.format(Locale.ENGLISH, "Network request failed with code: %s", Integer.valueOf(responseCode)));
            }
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
        } catch (Exception e3) {
            e = e3;
            httpURLConnection2 = httpURLConnection;
            response.exception = e;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            return response;
        } catch (Throwable th3) {
            th = th3;
            httpURLConnection2 = httpURLConnection;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            throw th;
        }
        return response;
    }
}
