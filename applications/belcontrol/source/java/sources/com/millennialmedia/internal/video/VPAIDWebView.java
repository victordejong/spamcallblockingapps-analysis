package com.millennialmedia.internal.video;

import android.annotation.SuppressLint;
import android.content.Context;
import android.webkit.JavascriptInterface;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.MMWebView;
import com.millennialmedia.internal.adcontrollers.VASTVideoController;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.millennialmedia.internal.utils.JSONUtils;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VPAIDWebView.class */
public class VPAIDWebView extends MMWebView implements VASTVideoController.VideoViewActions {
    private static final int DEFAULT_BITRATE = 800;
    private static final int LTE_BITRATE = 800;
    private static final String MM_JS_BRIDGE_VPAID_INIT = "MmJsBridge.vpaid.init";
    private static final String TAG = VPAIDWebView.class.getSimpleName();
    private static final String VPAID_SCRIPT = "vpaid.js";
    private static final int WIFI_BITRATE = 1200;
    private List vastDocuments;
    private boolean isSkippable = false;
    private long backButtonEnableTime = Long.MAX_VALUE;

    public VPAIDWebView(Context context, boolean z, MMWebView.MMWebViewListener mMWebViewListener) {
        super(context, new MMWebView.MMWebViewOptions(true, z, false, false), mMWebViewListener);
        setTag("VPAIDWebView");
        setBackgroundColor(-16777216);
    }

    private static int getDesiredBitrate() {
        String networkConnectionType = EnvironmentUtils.getNetworkConnectionType();
        int i = 800;
        if ("wifi".equalsIgnoreCase(networkConnectionType)) {
            i = WIFI_BITRATE;
        } else {
            "lte".equalsIgnoreCase(networkConnectionType);
        }
        return i;
    }

    @JavascriptInterface
    public void adLoadFailed(String str) {
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, "Received adLoadFailed notification from VPAID");
        }
        MMWebView.MMWebViewListener mMWebViewListener = this.webViewListener;
        if (mMWebViewListener != null) {
            mMWebViewListener.onFailed();
        }
    }

    @JavascriptInterface
    public void adLoadSucceeded(String str) {
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, "Received adLoadSucceeded notification from VPAID");
        }
        MMWebView.MMWebViewListener mMWebViewListener = this.webViewListener;
        if (mMWebViewListener != null) {
            mMWebViewListener.onLoaded();
        }
        this.backButtonEnableTime = System.currentTimeMillis() + Handshake.getVPAIDMaxBackButtonDelay();
    }

    @JavascriptInterface
    public void adSkippable(String str) {
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, "Received adSkippable notification from VPAID");
        }
        this.isSkippable = true;
    }

    @Override // com.millennialmedia.internal.MMWebView
    public String getExtraScriptToInject() {
        return VPAID_SCRIPT;
    }

    @Override // com.millennialmedia.internal.MMWebView
    @SuppressLint({"AddJavascriptInterface"})
    public void injectExtraAPIs() {
        addJavascriptInterface(this, "MmInjectedFunctionsVpaid");
    }

    @Override // com.millennialmedia.internal.adcontrollers.VASTVideoController.VideoViewActions
    public boolean onBackPressed() {
        if (!this.isSkippable && System.currentTimeMillis() >= this.backButtonEnableTime) {
            this.isSkippable = true;
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(TAG, "Back button enabled due to delay timeout");
            }
        }
        return this.isSkippable;
    }

    @Override // com.millennialmedia.internal.MMWebView
    public void onLoaded() {
        if (this.vastDocuments == null) {
            MMWebView.MMWebViewListener mMWebViewListener = this.webViewListener;
            if (mMWebViewListener == null) {
                return;
            }
            mMWebViewListener.onFailed();
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("vastDocs", JSONUtils.buildFromList(this.vastDocuments));
            jSONObject.put("minSkipOffset", Handshake.getVASTVideoSkipOffsetMin());
            jSONObject.put("maxSkipOffset", Handshake.getVASTVideoSkipOffsetMax());
            jSONObject.put("desiredBitrate", getDesiredBitrate());
            jSONObject.put("startAdTimeout", Handshake.getVPAIDStartAdTimeout());
            jSONObject.put("skipAdTimeout", Handshake.getVPAIDSkipAdTimeout());
            jSONObject.put("adUnitTimeout", Handshake.getVPAIDAdUnitTimeout());
            jSONObject.put("htmlEndCardTimeout", Handshake.getVPAIDHTMLEndCardTimeout());
            callJavascript(MM_JS_BRIDGE_VPAID_INIT, jSONObject);
        } catch (JSONException e) {
            MMLog.m4067e(TAG, "Unable to create JSON arguments for vpaid init", e);
            MMWebView.MMWebViewListener mMWebViewListener2 = this.webViewListener;
            if (mMWebViewListener2 != null) {
                mMWebViewListener2.onFailed();
            }
        }
        this.vastDocuments = null;
    }

    @Override // com.millennialmedia.internal.MMWebView, com.millennialmedia.internal.adcontrollers.VASTVideoController.VideoViewActions
    public void release() {
        super.release();
    }

    public void setVastDocuments(List list) {
        this.vastDocuments = list;
        super.setContent("<HTML><HEAD><meta name='viewport' content='width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no' /></HEAD><BODY></BODY></HTML>");
    }

    @Override // com.millennialmedia.internal.adcontrollers.VASTVideoController.VideoViewActions
    public void updateLayout() {
    }
}
