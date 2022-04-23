package net.pubnative.lite.sdk.api;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.WebView;
import net.pubnative.lite.sdk.models.Ad;
import net.pubnative.lite.sdk.models.AdRequest;
import net.pubnative.lite.sdk.models.AdResponse;
import net.pubnative.lite.sdk.network.PNHttpClient;
import net.pubnative.lite.sdk.utils.AdRequestRegistry;
import net.pubnative.lite.sdk.utils.PNApiUrlComposer;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/api/PNApiClient.class */
public class PNApiClient {
    private String mApiUrl = "https://api.pubnative.net/";
    private final Context mContext;

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/api/PNApiClient$AdRequestListener.class */
    public interface AdRequestListener {
        void onFailure(Throwable th);

        void onSuccess(Ad ad);
    }

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/api/PNApiClient$TrackJSListener.class */
    public interface TrackJSListener {
        void onFailure(Throwable th);

        void onSuccess();
    }

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/api/PNApiClient$TrackUrlListener.class */
    public interface TrackUrlListener {
        void onFailure(Throwable th);

        void onSuccess();
    }

    public PNApiClient(Context context) {
        this.mContext = context;
    }

    private String processJS(String str) {
        return str.replace("<script>", "").replace("</script>", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerAdRequest(String str, String str2, long j) {
        AdRequestRegistry.getInstance().setLastAdRequest(str, str2, System.currentTimeMillis() - j);
    }

    private void sendTrackingRequest(String str, final TrackUrlListener trackUrlListener) {
        PNHttpClient.makeRequest(this.mContext, str, null, null, false, true, new PNHttpClient.Listener() { // from class: net.pubnative.lite.sdk.api.PNApiClient.2
            @Override // net.pubnative.lite.sdk.network.PNHttpClient.Listener
            public void onFailure(Throwable th) {
                TrackUrlListener trackUrlListener2 = trackUrlListener;
                if (trackUrlListener2 != null) {
                    trackUrlListener2.onFailure(th);
                }
            }

            @Override // net.pubnative.lite.sdk.network.PNHttpClient.Listener
            public void onSuccess(String str2) {
                TrackUrlListener trackUrlListener2 = trackUrlListener;
                if (trackUrlListener2 != null) {
                    trackUrlListener2.onSuccess();
                }
            }
        });
    }

    public void getAd(AdRequest adRequest, final AdRequestListener adRequestListener) {
        final String adRequestURL = getAdRequestURL(adRequest);
        if (adRequestURL != null) {
            final long currentTimeMillis = System.currentTimeMillis();
            PNHttpClient.makeRequest(this.mContext, adRequestURL, null, null, new PNHttpClient.Listener() { // from class: net.pubnative.lite.sdk.api.PNApiClient.1
                @Override // net.pubnative.lite.sdk.network.PNHttpClient.Listener
                public void onFailure(Throwable th) {
                    PNApiClient.this.registerAdRequest(adRequestURL, th.getMessage(), currentTimeMillis);
                    AdRequestListener adRequestListener2 = adRequestListener;
                    if (adRequestListener2 != null) {
                        adRequestListener2.onFailure(th);
                    }
                }

                @Override // net.pubnative.lite.sdk.network.PNHttpClient.Listener
                public void onSuccess(String str) {
                    PNApiClient.this.registerAdRequest(adRequestURL, str, currentTimeMillis);
                    PNApiClient.this.processStream(str, adRequestListener);
                }
            });
        } else if (adRequestListener != null) {
            adRequestListener.onFailure(new Exception("PNApiClient - Error: invalid request URL"));
        }
    }

    protected String getAdRequestURL(AdRequest adRequest) {
        return PNApiUrlComposer.buildUrl(this.mApiUrl, adRequest);
    }

    String getApiUrl() {
        return this.mApiUrl;
    }

    public Context getContext() {
        return this.mContext;
    }

    protected void processStream(String str, AdRequestListener adRequestListener) {
        AdResponse adResponse;
        Exception e = null;
        try {
            adResponse = new AdResponse(new JSONObject(str));
        } catch (Error e2) {
            e = new Exception("Response cannot be parsed", e2);
            adResponse = null;
        } catch (Exception e3) {
            e = e3;
            adResponse = null;
        }
        if (e != null) {
            adRequestListener.onFailure(e);
        } else if (adResponse == null) {
            adRequestListener.onFailure(new Exception("PNApiClient - Parse error"));
        } else if (!"ok".equals(adResponse.status)) {
            adRequestListener.onFailure(new Exception("HyBid - Server error: " + adResponse.error_message));
        } else if (adResponse.ads == null || adResponse.ads.isEmpty()) {
            adRequestListener.onFailure(new Exception("HyBid - No fill"));
        } else {
            adRequestListener.onSuccess(adResponse.ads.get(0));
        }
    }

    void setApiUrl(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.mApiUrl = str;
        }
    }

    public void trackJS(String str, TrackJSListener trackJSListener) {
        if (!TextUtils.isEmpty(str)) {
            WebView webView = new WebView(this.mContext);
            webView.getSettings().setJavaScriptEnabled(true);
            String processJS = processJS(str);
            if (Build.VERSION.SDK_INT < 19) {
                webView.loadUrl("javascript:".concat(String.valueOf(processJS)));
            } else {
                webView.evaluateJavascript(processJS, null);
            }
            if (trackJSListener != null) {
                trackJSListener.onSuccess();
            }
        } else if (trackJSListener != null) {
            trackJSListener.onFailure(new Exception("Empty JS tracking beacon"));
        }
    }

    public void trackUrl(String str, TrackUrlListener trackUrlListener) {
        sendTrackingRequest(str, trackUrlListener);
    }
}
