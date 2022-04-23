package net.pubnative.lite.sdk.utils;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.explorestack.iab.vast.VastError;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/UrlDriller.class */
public class UrlDriller {
    private static final String TAG = "UrlDriller";
    protected Handler mHandler;
    protected Listener mListener;
    private String mUserAgent = null;
    private int mDrillSize = 0;

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/UrlDriller$Listener.class */
    public interface Listener {
        void onURLDrillerFail(String str, Exception exc);

        void onURLDrillerFinish(String str);

        void onURLDrillerRedirect(String str);

        void onURLDrillerStart(String str);
    }

    protected void doDrill(String str) {
        doDrill(str, 0);
    }

    protected void doDrill(String str, int i) {
        Exception e;
        Error e2;
        HttpURLConnection httpURLConnection = null;
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                try {
                    URL url = new URL(str);
                    httpURLConnection = (HttpURLConnection) url.openConnection();
                    try {
                        String str2 = this.mUserAgent;
                        if (str2 != null) {
                            httpURLConnection.setRequestProperty("User-Agent", str2);
                        }
                        httpURLConnection.setInstanceFollowRedirects(false);
                        httpURLConnection.connect();
                        httpURLConnection.setReadTimeout(5000);
                        int responseCode = httpURLConnection.getResponseCode();
                        if (responseCode != 200) {
                            switch (responseCode) {
                                case VastError.ERROR_CODE_BAD_URI /* 301 */:
                                case VastError.ERROR_CODE_EXCEEDED_WRAPPER_LIMIT /* 302 */:
                                case VastError.ERROR_CODE_WRAPPER_RESPONSE_NO_AD /* 303 */:
                                    String headerField = httpURLConnection.getHeaderField("Location");
                                    String str3 = headerField;
                                    if (headerField.startsWith("/")) {
                                        String protocol = url.getProtocol();
                                        String host = url.getHost();
                                        StringBuilder sb = new StringBuilder();
                                        sb.append(protocol);
                                        sb.append("://");
                                        sb.append(host);
                                        sb.append(headerField);
                                        str3 = sb.toString();
                                    }
                                    invokeRedirect(str3);
                                    int i2 = this.mDrillSize;
                                    if (i2 != 0) {
                                        if (i2 > 0 && i < i2) {
                                            doDrill(str3, i + 1);
                                            break;
                                        } else {
                                            invokeFinish(str);
                                            break;
                                        }
                                    } else {
                                        doDrill(str3);
                                        break;
                                    }
                                    break;
                                default:
                                    Exception exc = new Exception("Drilling error: Invalid URL, Status: ".concat(String.valueOf(responseCode)));
                                    Log.e(TAG, exc.toString());
                                    invokeFail(str, exc);
                                    break;
                            }
                        } else {
                            invokeFinish(str);
                        }
                        httpURLConnection.getInputStream().close();
                        httpURLConnection2 = httpURLConnection;
                        httpURLConnection.getOutputStream().close();
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                    } catch (Error e3) {
                        e2 = e3;
                        String str4 = TAG;
                        StringBuilder sb2 = new StringBuilder("Drilling error: with URL = [");
                        sb2.append(str);
                        sb2.append("]");
                        Log.e(str4, sb2.toString(), e2);
                        invokeFinish(null);
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                    } catch (Exception e4) {
                        e = e4;
                        Log.e(TAG, "Drilling error: ".concat(String.valueOf(e)));
                        httpURLConnection2 = httpURLConnection;
                        invokeFail(str, e);
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    throw th;
                }
            } catch (Error e5) {
                e2 = e5;
                httpURLConnection = null;
            } catch (Exception e6) {
                e = e6;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void drill(final String str) {
        if (TextUtils.isEmpty(str)) {
            invokeFail(str, new IllegalArgumentException("URLDrill error: url is null or empty"));
            return;
        }
        this.mHandler = new Handler(Looper.getMainLooper());
        new Thread(new Runnable() { // from class: net.pubnative.lite.sdk.utils.UrlDriller.1
            @Override // java.lang.Runnable
            public void run() {
                UrlDriller.this.invokeStart(str);
                UrlDriller.this.doDrill(str);
            }
        }).start();
    }

    protected void invokeFail(final String str, final Exception exc) {
        new StringBuilder("invokeFail: ").append(exc);
        this.mHandler.post(new Runnable() { // from class: net.pubnative.lite.sdk.utils.UrlDriller.5
            @Override // java.lang.Runnable
            public void run() {
                if (UrlDriller.this.mListener != null) {
                    Listener listener = UrlDriller.this.mListener;
                    String str2 = str;
                    String str3 = str2;
                    if (str2 == null) {
                        str3 = "";
                    }
                    listener.onURLDrillerFail(str3, exc);
                }
                UrlDriller.this.mListener = null;
            }
        });
    }

    protected void invokeFinish(final String str) {
        this.mHandler.post(new Runnable() { // from class: net.pubnative.lite.sdk.utils.UrlDriller.4
            @Override // java.lang.Runnable
            public void run() {
                if (UrlDriller.this.mListener != null) {
                    UrlDriller.this.mListener.onURLDrillerFinish(str);
                }
                UrlDriller.this.mListener = null;
            }
        });
    }

    protected void invokeRedirect(final String str) {
        this.mHandler.post(new Runnable() { // from class: net.pubnative.lite.sdk.utils.UrlDriller.3
            @Override // java.lang.Runnable
            public void run() {
                if (UrlDriller.this.mListener != null) {
                    UrlDriller.this.mListener.onURLDrillerRedirect(str);
                }
            }
        });
    }

    protected void invokeStart(final String str) {
        this.mHandler.post(new Runnable() { // from class: net.pubnative.lite.sdk.utils.UrlDriller.2
            @Override // java.lang.Runnable
            public void run() {
                if (UrlDriller.this.mListener != null) {
                    UrlDriller.this.mListener.onURLDrillerStart(str);
                }
            }
        });
    }

    public void setDrillSize(int i) {
        this.mDrillSize = i;
    }

    public void setListener(Listener listener) {
        this.mListener = listener;
    }

    public void setUserAgent(String str) {
        this.mUserAgent = str;
    }
}
