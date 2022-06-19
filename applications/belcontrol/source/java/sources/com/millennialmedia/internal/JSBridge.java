package com.millennialmedia.internal;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.location.Location;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.webkit.JavascriptInterface;
import com.millennialmedia.MMLog;
import com.millennialmedia.NativeAd;
import com.millennialmedia.internal.SizableStateManager;
import com.millennialmedia.internal.utils.CalendarUtils;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.millennialmedia.internal.utils.HttpUtils;
import com.millennialmedia.internal.utils.IOUtils;
import com.millennialmedia.internal.utils.JSONUtils;
import com.millennialmedia.internal.utils.MediaUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.Utils;
import com.millennialmedia.internal.utils.ViewUtils;
import com.millennialmedia.internal.video.InlineWebVideoView;
import com.millennialmedia.internal.video.VASTVideoView;
import com.mopub.common.AdType;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/JSBridge.class */
public class JSBridge {
    private static final String AD_NOT_CLICKED_MESSAGE = "Ad has not been clicked";
    private static final String CALLBACK_ID_KEY = "callbackId";
    private static final String CANNOT_EXPAND_INTERSTITIAL_MESSAGE = "Cannot expand interstitial";
    private static final String CANNOT_EXPAND_STATE_MESSAGE = "Cannot expand in current state<%s>";
    private static final String CANNOT_RESIZE_INTERSTITIAL_MESSAGE = "Cannot resize interstitial";
    private static final String CANNOT_RESIZE_STATE_MESSAGE = "Cannot resize in current state<%s>";
    private static final String CREATE_CALENDAR_EVENT_MRAID_OP = "createCalendarEvent";
    private static final String EXPAND_FAILED_MESSAGE = "Unable to expand";
    private static final String EXPAND_MRAID_OP = "expand";
    private static final String HEIGHT_KEY = "height";
    private static final int HTTP_GET_TIMEOUT = 15000;
    private static final String INVALID_ORIENTATION_MESSAGE = "Invalid orientation specified <%s>";
    private static final String JS_MRAID_NAMESPACE = "MmJsBridge.mraid";
    private static final String JS_SET_PLACEMENT_TYPE = "MmJsBridge.mraid.setPlacementType";
    private static final String JS_SET_POSITIONS = "MmJsBridge.mraid.setPositions";
    private static final String JS_SET_STATE = "MmJsBridge.mraid.setState";
    private static final String JS_SET_SUPPORTS = "MmJsBridge.mraid.setSupports";
    private static final String JS_SET_VIEWABLE = "MmJsBridge.mraid.setViewable";
    private static final String JS_THROW_MRAID_ERROR = "MmJsBridge.mraid.throwMraidError";
    private static final String MM_JS_BRIDGE_CALL_CALLBACK = "MmJsBridge.callbackManager.callCallback";
    private static final String MM_JS_BRIDGE_SET_LOG_LEVEL = "MmJsBridge.logging.setLogLevel";
    private static final String NOT_SUPPORTED_MESSAGE = "Not supported";
    private static final String NO_PICTURE_PATH_MESSAGE = "No path specified for picture";
    private static final String NO_VIDEO_PATH_MESSAGE = "No path specified for video";
    private static final String PARAMETERS_NOT_PROVIDED_MESSAGE = "No parameters provided";
    private static final String PLAY_VIDEO_MRAID_OP = "playVideo";
    private static final String RESIZE_FAILED_MESSAGE = "Unable to resize";
    private static final String RESIZE_MRAID_OP = "resize";
    private static final int SCROLL_IDLE_TIMEOUT = 450;
    private static final int SCROLL_UPDATE_INTERVAL = 100;
    private static final String STATE_DEFAULT = "default";
    private static final String STATE_EXPANDED = "expanded";
    private static final String STATE_HIDDEN = "hidden";
    private static final String STATE_LOADING = "loading";
    private static final String STATE_RESIZED = "resized";
    private static final String SUPPORTS_CALENDAR = "calendar";
    private static final String SUPPORTS_INLINE_VIDEO = "inlineVideo";
    private static final String SUPPORTS_SMS = "sms";
    private static final String SUPPORTS_STORE_PICTURE = "storePicture";
    private static final String SUPPORTS_TEL = "tel";
    private static final String TAG = "JSBridge";
    private static final String URL_KEY = "url";
    private static final String URL_OPEN_FAILED_MESSAGE = "Unable to open url <%s>";
    private static final String VIDEO_ID_KEY = "videoId";
    private static final String WEBVIEW_NOT_VALID_MESSAGE = "Webview is no longer valid";
    private static final String WIDTH_KEY = "width";
    public static final String bodyStyling = "<style>body {margin:0;padding:0;}</style>";
    public static final String secureContentMeta = "<meta http-equiv=\"Content-Security-Policy\" content=\"upgrade-insecure-requests\">";
    public static final boolean useActionsQueue;
    private volatile JSONArray actionsQueue;
    public final boolean isInterstitial;
    private volatile JSBridgeListener jsBridgeListener;
    private volatile WeakReference<MMWebView> mmWebViewRef;
    private volatile long scrollIdleTimeout;
    private static final Pattern htmlStartPattern = Pattern.compile("<html[^>]*>", 2);
    private static final Pattern headStartPattern = Pattern.compile("<head[^>]*>", 2);
    private static final Pattern bodyStartPattern = Pattern.compile("<body[^>]*>", 2);
    private static final Pattern nonMetaPattern = Pattern.compile("<(?!meta)[^>]*>", 2);
    private static final Pattern mraidJsReplacePattern = Pattern.compile("<script\\s+[^>]*\\bsrc\\s*=\\s*([\\\"\\'])mraid\\.js\\1[^>]*>\\s*</script\\s*>", 2);
    public static final Map<String, String> scriptFilesCache = new HashMap();
    private volatile AtomicBoolean scrollThrottling = new AtomicBoolean(false);
    private volatile boolean apiCallsEnabled = false;
    public List<String> scriptsAwaitingLoad = new LinkedList();
    public String currentState = STATE_LOADING;
    public boolean isTwoPartExpand = false;
    public boolean isResizing = true;
    public boolean ready = false;
    public boolean jsInjected = false;
    public boolean isViewable = false;
    public boolean hasSize = false;
    public boolean useCustomClose = false;
    public int lastOrientation = EnvironmentUtils.getCurrentConfigOrientation();
    public int requestedOrientation = -1;

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/JSBridge$JSBridgeCommon.class */
    public class JSBridgeCommon {
        public JSBridgeCommon() {
            JSBridge.this = r4;
        }

        @JavascriptInterface
        public void fileLoaded(String str) {
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "fileLoaded: " + str);
            }
            JSBridge.this.scriptsAwaitingLoad.remove(new JSONObject(str).getString("filename"));
            if (JSBridge.this.scriptsAwaitingLoad.size() == 0) {
                if (JSBridge.this.jsBridgeListener != null) {
                    JSBridge.this.jsBridgeListener.onInjectedScriptsLoaded();
                }
                JSBridge.this.setReadyState();
            }
        }

        @JavascriptInterface
        public String getActionsQueue() {
            synchronized (JSBridge.this) {
                if (JSBridge.this.actionsQueue != null) {
                    String jSONArray = JSBridge.this.actionsQueue.toString();
                    JSBridge.this.actionsQueue = null;
                    return jSONArray;
                }
                return null;
            }
        }

        @JavascriptInterface
        public Boolean useActionsQueue() {
            return Boolean.valueOf(JSBridge.useActionsQueue);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/JSBridge$JSBridgeInlineVideo.class */
    public class JSBridgeInlineVideo {
        private FiredEvents firedEvents = new FiredEvents();
        private Map<Object, InlineWebVideoView> inlineWebVideoViews = new HashMap();

        public JSBridgeInlineVideo() {
            JSBridge.this = r5;
        }

        public int toPixels(DisplayMetrics displayMetrics, float f) {
            return (int) TypedValue.applyDimension(1, f, displayMetrics);
        }

        @JavascriptInterface
        public void expandToFullScreen(String str) {
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "InlineVideo: expandToFullScreen(" + str + ")");
            }
            final String string = new JSONObject(str).getString(JSBridge.VIDEO_ID_KEY);
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeInlineVideo.5
                @Override // java.lang.Runnable
                public void run() {
                    InlineWebVideoView inlineWebVideoView;
                    MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
                    if (mMWebView == null || (inlineWebVideoView = (InlineWebVideoView) mMWebView.findViewWithTag(string)) == null) {
                        return;
                    }
                    inlineWebVideoView.expandToFullScreen();
                }
            });
        }

        @JavascriptInterface
        public void insert(String str) {
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "InlineVideo: insert(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            final String string = jSONObject.getString("url");
            final int i = jSONObject.getInt("width");
            final int i2 = jSONObject.getInt("height");
            final int i3 = jSONObject.getInt("x");
            final int i4 = jSONObject.getInt("y");
            final boolean optBoolean = jSONObject.optBoolean("autoPlay", false);
            final boolean optBoolean2 = jSONObject.optBoolean("showMediaControls", false);
            final boolean optBoolean3 = jSONObject.optBoolean("showExpandControls", false);
            final String optString = jSONObject.optString("placeholder", null);
            final boolean optBoolean4 = jSONObject.optBoolean("muted", false);
            final int optInt = jSONObject.optInt("timeUpdateInterval", -1);
            final String optString2 = jSONObject.optString(JSBridge.CALLBACK_ID_KEY);
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeInlineVideo.1
                @Override // java.lang.Runnable
                public void run() {
                    final MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
                    if (mMWebView != null) {
                        InlineWebVideoView inlineWebVideoView = new InlineWebVideoView(mMWebView.getContext(), optBoolean, optBoolean4, optBoolean2, optBoolean3, optInt, optString2, new InlineWebVideoView.InlineWebVideoViewListener() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeInlineVideo.1.1
                            @Override // com.millennialmedia.internal.video.InlineWebVideoView.InlineWebVideoViewListener
                            public void onClicked() {
                                mMWebView.onNotifyClicked();
                            }
                        });
                        JSBridgeInlineVideo.this.inlineWebVideoViews.put(inlineWebVideoView.getTag(), inlineWebVideoView);
                        DisplayMetrics displayMetrics = mMWebView.getContext().getResources().getDisplayMetrics();
                        inlineWebVideoView.setAnchorView(mMWebView, JSBridgeInlineVideo.this.toPixels(displayMetrics, i3), JSBridgeInlineVideo.this.toPixels(displayMetrics, i4), JSBridgeInlineVideo.this.toPixels(displayMetrics, i), JSBridgeInlineVideo.this.toPixels(displayMetrics, i2), new InlineWebVideoView.InlineWebVideoViewAttachListener() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeInlineVideo.1.2
                            @Override // com.millennialmedia.internal.video.InlineWebVideoView.InlineWebVideoViewAttachListener
                            public void attachFailed(InlineWebVideoView inlineWebVideoView2) {
                                JSBridgeInlineVideo.this.inlineWebVideoViews.remove(inlineWebVideoView2.getTag());
                            }

                            @Override // com.millennialmedia.internal.video.InlineWebVideoView.InlineWebVideoViewAttachListener
                            public void attachSucceeded(InlineWebVideoView inlineWebVideoView2) {
                                JSBridgeInlineVideo.this.inlineWebVideoViews.remove(inlineWebVideoView2.getTag());
                            }
                        });
                        String str3 = optString;
                        if (str3 != null) {
                            inlineWebVideoView.setPlaceholder(Uri.parse(str3));
                        }
                        inlineWebVideoView.setVideoURI(Uri.parse(string), JSBridgeInlineVideo.this.firedEvents);
                    }
                }
            });
        }

        @JavascriptInterface
        public void pause(String str) {
            InlineWebVideoView inlineWebVideoView;
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "InlineVideo: pause(" + str + ")");
            }
            MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
            if (mMWebView == null || (inlineWebVideoView = (InlineWebVideoView) mMWebView.findViewWithTag(new JSONObject(str).getString(JSBridge.VIDEO_ID_KEY))) == null) {
                return;
            }
            inlineWebVideoView.pause();
        }

        @JavascriptInterface
        public void play(String str) {
            InlineWebVideoView inlineWebVideoView;
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "InlineVideo: play(" + str + ")");
            }
            MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
            if (mMWebView == null || (inlineWebVideoView = (InlineWebVideoView) mMWebView.findViewWithTag(new JSONObject(str).getString(JSBridge.VIDEO_ID_KEY))) == null) {
                return;
            }
            inlineWebVideoView.start();
        }

        @JavascriptInterface
        public void remove(String str) {
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "InlineVideo: remove(" + str + ")");
            }
            final String string = new JSONObject(str).getString(JSBridge.VIDEO_ID_KEY);
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeInlineVideo.4
                @Override // java.lang.Runnable
                public void run() {
                    InlineWebVideoView inlineWebVideoView;
                    MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
                    if (mMWebView == null || (inlineWebVideoView = (InlineWebVideoView) mMWebView.findViewWithTag(string)) == null) {
                        return;
                    }
                    inlineWebVideoView.remove();
                }
            });
        }

        @JavascriptInterface
        public void reposition(String str) {
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "InlineVideo: reposition(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            final String string = jSONObject.getString(JSBridge.VIDEO_ID_KEY);
            final int i = jSONObject.getInt("width");
            final int i2 = jSONObject.getInt("height");
            final int i3 = jSONObject.getInt("x");
            final int i4 = jSONObject.getInt("y");
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeInlineVideo.3
                @Override // java.lang.Runnable
                public void run() {
                    MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
                    if (mMWebView != null) {
                        DisplayMetrics displayMetrics = mMWebView.getContext().getResources().getDisplayMetrics();
                        InlineWebVideoView inlineWebVideoView = (InlineWebVideoView) mMWebView.findViewWithTag(string);
                        if (inlineWebVideoView == null) {
                            return;
                        }
                        inlineWebVideoView.reposition(JSBridgeInlineVideo.this.toPixels(displayMetrics, i3), JSBridgeInlineVideo.this.toPixels(displayMetrics, i4), JSBridgeInlineVideo.this.toPixels(displayMetrics, i), JSBridgeInlineVideo.this.toPixels(displayMetrics, i2));
                    }
                }
            });
        }

        @JavascriptInterface
        public void seek(String str) {
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "InlineVideo: seek(" + str + ")");
            }
            MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
            if (mMWebView != null) {
                JSONObject jSONObject = new JSONObject(str);
                InlineWebVideoView inlineWebVideoView = (InlineWebVideoView) mMWebView.findViewWithTag(jSONObject.getString(JSBridge.VIDEO_ID_KEY));
                if (inlineWebVideoView == null) {
                    return;
                }
                inlineWebVideoView.seekTo(jSONObject.getInt("time"));
            }
        }

        @JavascriptInterface
        public void setMuted(String str) {
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "InlineVideo: setMuted(" + str + ")");
            }
            MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
            if (mMWebView != null) {
                JSONObject jSONObject = new JSONObject(str);
                InlineWebVideoView inlineWebVideoView = (InlineWebVideoView) mMWebView.findViewWithTag(jSONObject.getString(JSBridge.VIDEO_ID_KEY));
                if (inlineWebVideoView == null) {
                    return;
                }
                if (jSONObject.getBoolean("mute")) {
                    inlineWebVideoView.mute();
                } else {
                    inlineWebVideoView.unmute();
                }
            }
        }

        @JavascriptInterface
        public void stop(String str) {
            InlineWebVideoView inlineWebVideoView;
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "InlineVideo: stop(" + str + ")");
            }
            MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
            if (mMWebView == null || (inlineWebVideoView = (InlineWebVideoView) mMWebView.findViewWithTag(new JSONObject(str).getString(JSBridge.VIDEO_ID_KEY))) == null) {
                return;
            }
            inlineWebVideoView.stop();
        }

        @JavascriptInterface
        public void triggerTimeUpdate(String str) {
            InlineWebVideoView inlineWebVideoView;
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "InlineVideo: triggerTimeUpdate(" + str + ")");
            }
            MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
            if (mMWebView == null || (inlineWebVideoView = (InlineWebVideoView) mMWebView.findViewWithTag(new JSONObject(str).getString(JSBridge.VIDEO_ID_KEY))) == null) {
                return;
            }
            inlineWebVideoView.triggerTimeUpdate();
        }

        @JavascriptInterface
        public void updateVideoURL(String str) {
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "InlineVideo: updateVideoURL(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            final String string = jSONObject.getString(JSBridge.VIDEO_ID_KEY);
            final String string2 = jSONObject.getString("url");
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeInlineVideo.2
                @Override // java.lang.Runnable
                public void run() {
                    InlineWebVideoView inlineWebVideoView;
                    MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
                    if (mMWebView == null || (inlineWebVideoView = (InlineWebVideoView) mMWebView.findViewWithTag(string)) == null) {
                        return;
                    }
                    inlineWebVideoView.setVideoURI(Uri.parse(string2), JSBridgeInlineVideo.this.firedEvents);
                }
            });
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/JSBridge$JSBridgeListener.class */
    public interface JSBridgeListener {
        void close();

        boolean expand(SizableStateManager.ExpandParams expandParams);

        void onAdLeftApplication();

        void onInjectedScriptsLoaded();

        void onJSBridgeReady();

        boolean resize(SizableStateManager.ResizeParams resizeParams);

        void setOrientation(int i);

        void showCloseIndicator(boolean z);
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/JSBridge$JSBridgeMMJS.class */
    public class JSBridgeMMJS {
        public JSBridgeMMJS() {
            JSBridge.this = r4;
        }

        @JavascriptInterface
        public void addCalendarEvent(String str) {
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "MMJS: addCalendarEvent(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            final String optString = jSONObject.optString(JSBridge.CALLBACK_ID_KEY, null);
            if (!JSBridge.this.apiCallsEnabled) {
                MMLog.m4068e(JSBridge.TAG, JSBridge.AD_NOT_CLICKED_MESSAGE);
                JSBridge.this.invokeCallback(optString, Boolean.FALSE);
                return;
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("options");
            if (optJSONObject == null) {
                MMLog.m4068e(JSBridge.TAG, "No options provided");
                JSBridge.this.invokeCallback(optString, Boolean.FALSE);
                return;
            }
            MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
            if (mMWebView != null) {
                CalendarUtils.addEvent(mMWebView.getContext(), optJSONObject, new CalendarUtils.CalendarListener() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeMMJS.1
                    @Override // com.millennialmedia.internal.utils.CalendarUtils.CalendarListener
                    public void onError(String str3) {
                        MMLog.m4068e(JSBridge.TAG, str3);
                        JSBridge.this.invokeCallback(optString, Boolean.FALSE);
                    }

                    @Override // com.millennialmedia.internal.utils.CalendarUtils.CalendarListener
                    public void onUIDisplayed() {
                        if (MMLog.isDebugEnabled()) {
                            MMLog.m4070d(JSBridge.TAG, "Calendar activity started");
                        }
                        JSBridge.this.jsBridgeListener.onAdLeftApplication();
                        JSBridge.this.invokeCallback(optString, Boolean.TRUE);
                    }
                });
                return;
            }
            MMLog.m4068e(JSBridge.TAG, JSBridge.WEBVIEW_NOT_VALID_MESSAGE);
            JSBridge.this.invokeCallback(optString, Boolean.FALSE);
        }

        @JavascriptInterface
        public void call(String str) {
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "MMJS: call(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString(JSBridge.CALLBACK_ID_KEY, null);
            if (!JSBridge.this.apiCallsEnabled) {
                MMLog.m4068e(JSBridge.TAG, JSBridge.AD_NOT_CLICKED_MESSAGE);
                JSBridge.this.invokeCallback(optString, Boolean.FALSE);
                return;
            }
            String optString2 = jSONObject.optString("number", null);
            if (optString2 == null) {
                MMLog.m4068e(JSBridge.TAG, "No number provided");
                JSBridge.this.invokeCallback(optString, Boolean.FALSE);
                return;
            }
            boolean startActivity = Utils.startActivity(EnvironmentUtils.getApplicationContext(), new Intent("android.intent.action.VIEW", Uri.parse("tel:" + optString2)));
            if (startActivity) {
                JSBridge.this.jsBridgeListener.onAdLeftApplication();
            }
            JSBridge.this.invokeCallback(optString, Boolean.valueOf(startActivity));
        }

        @JavascriptInterface
        public void email(String str) {
            JSONArray jSONArray;
            JSONArray jSONArray2;
            JSONArray jSONArray3;
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(JSBridge.TAG, "MMJS: email(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString(JSBridge.CALLBACK_ID_KEY, null);
            if (!JSBridge.this.apiCallsEnabled) {
                MMLog.m4068e(JSBridge.TAG, JSBridge.AD_NOT_CLICKED_MESSAGE);
                JSBridge.this.invokeCallback(optString, Boolean.FALSE);
                return;
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("recipients");
            if (optJSONObject != null) {
                jSONArray3 = optJSONObject.optJSONArray("to");
                jSONArray = optJSONObject.optJSONArray("cc");
                jSONArray2 = optJSONObject.optJSONArray("bcc");
            } else {
                jSONArray2 = null;
                jSONArray3 = null;
                jSONArray = null;
            }
            String optString2 = jSONObject.optString("subject", null);
            if (optString2 == null) {
                MMLog.m4068e(JSBridge.TAG, "No subject provided");
                JSBridge.this.invokeCallback(optString, Boolean.FALSE);
                return;
            }
            String optString3 = jSONObject.optString("message", null);
            if (optString3 == null) {
                MMLog.m4068e(JSBridge.TAG, "No message provided");
                JSBridge.this.invokeCallback(optString, Boolean.FALSE);
                return;
            }
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType(jSONObject.optString("type", "text/plain"));
            if (jSONArray3 != null) {
                intent.putExtra("android.intent.extra.EMAIL", JSONUtils.convertToStringArray(jSONArray3));
            }
            if (jSONArray != null) {
                intent.putExtra("android.intent.extra.CC", JSONUtils.convertToStringArray(jSONArray));
            }
            if (jSONArray2 != null) {
                intent.putExtra("android.intent.extra.BCC", JSONUtils.convertToStringArray(jSONArray2));
            }
            intent.putExtra("android.intent.extra.SUBJECT", optString2);
            intent.putExtra("android.intent.extra.TEXT", optString3);
            boolean startActivity = Utils.startActivity(EnvironmentUtils.getApplicationContext(), intent);
            if (startActivity) {
                JSBridge.this.jsBridgeListener.onAdLeftApplication();
            }
            JSBridge.this.invokeCallback(optString, Boolean.valueOf(startActivity));
        }

        @JavascriptInterface
        public void getAvailableSourceTypes(String str) {
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "MMJS: getAvailableSourceTypes(" + str + ")");
            }
            String optString = new JSONObject(str).optString(JSBridge.CALLBACK_ID_KEY, null);
            JSONArray jSONArray = new JSONArray();
            EnvironmentUtils.AvailableCameras availableCameras = EnvironmentUtils.getAvailableCameras();
            if (availableCameras.backCamera) {
                jSONArray.put("Rear Camera");
            }
            if (availableCameras.frontCamera) {
                jSONArray.put("Front Camera");
            }
            if (availableCameras.frontCamera || availableCameras.backCamera) {
                jSONArray.put("Camera");
            }
            if (MediaUtils.isPictureChooserAvailable()) {
                jSONArray.put("Photo Library");
            }
            JSBridge.this.invokeCallback(optString, jSONArray);
        }

        @JavascriptInterface
        public void getPictureFromPhotoLibrary(String str) {
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "MMJS: getPictureFromPhotoLibrary(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            final String optString = jSONObject.optString(JSBridge.CALLBACK_ID_KEY, null);
            if (!EnvironmentUtils.isExternalStorageReadable()) {
                MMLog.m4068e(JSBridge.TAG, "Cannot read external storage");
                JSBridge.this.invokeCallback(optString, null);
            } else if (!JSBridge.this.apiCallsEnabled) {
                MMLog.m4068e(JSBridge.TAG, JSBridge.AD_NOT_CLICKED_MESSAGE);
                JSBridge.this.invokeCallback(optString, null);
            } else {
                JSONObject optJSONObject = jSONObject.optJSONObject("size");
                if (optJSONObject == null) {
                    MMLog.m4068e(JSBridge.TAG, "No size parameters provided");
                    JSBridge.this.invokeCallback(optString, null);
                    return;
                }
                DisplayMetrics displayMetrics = EnvironmentUtils.getApplicationContext().getResources().getDisplayMetrics();
                final int applyDimension = (int) TypedValue.applyDimension(1, optJSONObject.optInt("maxWidth", 0), displayMetrics);
                final int applyDimension2 = (int) TypedValue.applyDimension(1, optJSONObject.optInt("maxHeight", 0), displayMetrics);
                final boolean optBoolean = optJSONObject.optBoolean("maintainAspectRatio", true);
                if (applyDimension <= 0 || applyDimension2 <= 0) {
                    MMLog.m4068e(JSBridge.TAG, "maxWidth and maxHeight must be > 0");
                    JSBridge.this.invokeCallback(optString, null);
                    return;
                }
                final MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
                if (mMWebView != null) {
                    MediaUtils.getPhotoFromGallery(mMWebView.getContext(), new MediaUtils.PhotoListener() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeMMJS.2
                        @Override // com.millennialmedia.internal.utils.MediaUtils.PhotoListener
                        public void onError(String str3) {
                            MMLog.m4068e(JSBridge.TAG, str3);
                            JSBridge.this.invokeCallback(optString, null);
                        }

                        @Override // com.millennialmedia.internal.utils.MediaUtils.PhotoListener
                        public void onPhoto(Uri uri) {
                            String str3;
                            String mimeTypeFromUri = MediaUtils.getMimeTypeFromUri(mMWebView.getContext(), uri);
                            Bitmap scaledBitmapFromUri = MediaUtils.getScaledBitmapFromUri(mMWebView.getContext(), uri, applyDimension, applyDimension2, optBoolean, true);
                            if (scaledBitmapFromUri != null) {
                                str3 = MediaUtils.base64EncodeBitmap(scaledBitmapFromUri, mimeTypeFromUri);
                                scaledBitmapFromUri.recycle();
                            } else {
                                str3 = null;
                            }
                            JSBridge.this.invokeCallback(optString, str3);
                        }
                    });
                    return;
                }
                MMLog.m4068e(JSBridge.TAG, JSBridge.WEBVIEW_NOT_VALID_MESSAGE);
                JSBridge.this.invokeCallback(optString, null);
            }
        }

        @JavascriptInterface
        public void httpGet(String str) {
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "MMJS: httpGet(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            final String optString = jSONObject.optString(JSBridge.CALLBACK_ID_KEY, null);
            final String optString2 = jSONObject.optString("url", null);
            if (TextUtils.isEmpty(optString2)) {
                MMLog.m4068e(JSBridge.TAG, "url was not provided");
                JSBridge.this.invokeCallback(optString, Boolean.FALSE);
                return;
            }
            final int optInt = jSONObject.optInt("timeout", 15000);
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeMMJS.6
                @Override // java.lang.Runnable
                public void run() {
                    HttpUtils.Response contentFromGetRequest = HttpUtils.getContentFromGetRequest(optString2, optInt);
                    if (contentFromGetRequest.code == 200) {
                        JSBridge.this.invokeCallback(optString, contentFromGetRequest.content);
                        return;
                    }
                    JSBridge jSBridge = JSBridge.this;
                    String str3 = optString;
                    Boolean bool = Boolean.FALSE;
                    jSBridge.invokeCallback(str3, bool, "http request failed with response code: " + contentFromGetRequest.code);
                }
            });
        }

        @JavascriptInterface
        public void isPackageAvailable(String str) {
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "MMJS: isPackageAvailable(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString(JSBridge.CALLBACK_ID_KEY, null);
            String optString2 = jSONObject.optString("name", null);
            if (optString2 == null) {
                MMLog.m4068e(JSBridge.TAG, "name was not provided");
                JSBridge.this.invokeCallback(optString, Boolean.FALSE);
                return;
            }
            JSBridge.this.invokeCallback(optString, Boolean.valueOf(Utils.isPackageAvailable(optString2)));
        }

        @JavascriptInterface
        public void isSchemeAvailable(String str) {
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "MMJS: isSchemeAvailable(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString(JSBridge.CALLBACK_ID_KEY, null);
            String optString2 = jSONObject.optString("name", null);
            if (optString2 == null) {
                MMLog.m4068e(JSBridge.TAG, "name was not provided");
                JSBridge.this.invokeCallback(optString, Boolean.FALSE);
                return;
            }
            JSBridge.this.invokeCallback(optString, Boolean.valueOf(Utils.isSchemeAvailable(optString2)));
        }

        @JavascriptInterface
        public void isSourceTypeAvailable(String str) {
            boolean z;
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(JSBridge.TAG, "MMJS: isSourceTypeAvailable(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString(JSBridge.CALLBACK_ID_KEY, null);
            String optString2 = jSONObject.optString("sourceType", null);
            if (optString2 == null) {
                MMLog.m4068e(JSBridge.TAG, "sourceType was not provided");
                JSBridge.this.invokeCallback(optString, Boolean.FALSE);
                return;
            }
            if ("Photo Library".equals(optString2)) {
                z = MediaUtils.isPictureChooserAvailable();
            } else {
                EnvironmentUtils.AvailableCameras availableCameras = EnvironmentUtils.getAvailableCameras();
                if ("Camera".equals(optString2)) {
                    if (availableCameras.frontCamera || availableCameras.backCamera) {
                        z = true;
                    }
                    z = false;
                } else if ("Rear Camera".equals(optString2)) {
                    z = availableCameras.backCamera;
                } else {
                    if ("Front Camera".equals(optString2)) {
                        z = availableCameras.frontCamera;
                    }
                    z = false;
                }
            }
            JSBridge.this.invokeCallback(optString, Boolean.valueOf(z));
        }

        @JavascriptInterface
        public void location(String str) {
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "MMJS: location(" + str + ")");
            }
            String optString = new JSONObject(str).optString(JSBridge.CALLBACK_ID_KEY, null);
            Location location = EnvironmentUtils.getLocation();
            if (location == null) {
                JSBridge.this.invokeCallback(optString, null);
                return;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("latitude", location.getLatitude());
            jSONObject.put("longitude", location.getLongitude());
            jSONObject.put("altitude", location.getAltitude());
            jSONObject.put("accuracy", location.getAccuracy());
            jSONObject.put("altitudeAccuracy", 0.0d);
            jSONObject.put("heading", location.getBearing());
            jSONObject.put("speed", location.getSpeed());
            JSBridge.this.invokeCallback(optString, jSONObject);
        }

        @JavascriptInterface
        public void openAppStore(String str) {
            String str2;
            StringBuilder sb;
            if (MMLog.isDebugEnabled()) {
                String str3 = JSBridge.TAG;
                MMLog.m4070d(str3, "MMJS: openAppStore(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString(JSBridge.CALLBACK_ID_KEY, null);
            if (!JSBridge.this.apiCallsEnabled) {
                MMLog.m4068e(JSBridge.TAG, JSBridge.AD_NOT_CLICKED_MESSAGE);
                JSBridge.this.invokeCallback(optString, Boolean.FALSE, JSBridge.AD_NOT_CLICKED_MESSAGE);
                return;
            }
            String optString2 = jSONObject.optString("appId", null);
            if (optString2 == null) {
                JSBridge.this.invokeCallback(optString, Boolean.FALSE, "appId was not provided");
                return;
            }
            if (Build.MANUFACTURER.equals("Amazon")) {
                sb = new StringBuilder();
                str2 = "amzn://apps/android?p=";
            } else {
                sb = new StringBuilder();
                str2 = "market://details?id=";
            }
            sb.append(str2);
            sb.append(optString2);
            if (!Utils.startActivityFromUrl(sb.toString())) {
                JSBridge.this.invokeCallback(optString, Boolean.FALSE, "Unable to open app store");
                return;
            }
            JSBridge.this.jsBridgeListener.onAdLeftApplication();
            JSBridge.this.invokeCallback(optString, Boolean.TRUE);
        }

        @JavascriptInterface
        public void openCamera(String str) {
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "MMJS: openCamera(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            final String optString = jSONObject.optString(JSBridge.CALLBACK_ID_KEY, null);
            if (!JSBridge.this.apiCallsEnabled) {
                MMLog.m4068e(JSBridge.TAG, JSBridge.AD_NOT_CLICKED_MESSAGE);
                JSBridge.this.invokeCallback(optString, null);
                return;
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("size");
            if (optJSONObject == null) {
                MMLog.m4068e(JSBridge.TAG, "No size parameters provided");
                JSBridge.this.invokeCallback(optString, null);
                return;
            }
            DisplayMetrics displayMetrics = EnvironmentUtils.getApplicationContext().getResources().getDisplayMetrics();
            final int applyDimension = (int) TypedValue.applyDimension(1, optJSONObject.optInt("maxWidth", 0), displayMetrics);
            final int applyDimension2 = (int) TypedValue.applyDimension(1, optJSONObject.optInt("maxHeight", 0), displayMetrics);
            final boolean optBoolean = optJSONObject.optBoolean("maintainAspectRatio", true);
            if (applyDimension <= 0 || applyDimension2 <= 0) {
                MMLog.m4068e(JSBridge.TAG, "maxWidth and maxHeight must be > 0");
                JSBridge.this.invokeCallback(optString, null);
                return;
            }
            final MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
            if (mMWebView != null) {
                MediaUtils.getPhotoFromCamera(mMWebView.getContext(), new MediaUtils.PhotoListener() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeMMJS.3
                    @Override // com.millennialmedia.internal.utils.MediaUtils.PhotoListener
                    public void onError(String str3) {
                        MMLog.m4068e(JSBridge.TAG, str3);
                        JSBridge.this.invokeCallback(optString, null);
                    }

                    @Override // com.millennialmedia.internal.utils.MediaUtils.PhotoListener
                    public void onPhoto(Uri uri) {
                        String str3;
                        String mimeTypeFromUri = MediaUtils.getMimeTypeFromUri(mMWebView.getContext(), uri);
                        Bitmap scaledBitmapFromUri = MediaUtils.getScaledBitmapFromUri(mMWebView.getContext(), uri, applyDimension, applyDimension2, optBoolean, true);
                        if (scaledBitmapFromUri != null) {
                            str3 = MediaUtils.base64EncodeBitmap(scaledBitmapFromUri, mimeTypeFromUri);
                            scaledBitmapFromUri.recycle();
                        } else {
                            str3 = null;
                        }
                        JSBridge.this.invokeCallback(optString, str3);
                    }
                });
                return;
            }
            MMLog.m4068e(JSBridge.TAG, JSBridge.WEBVIEW_NOT_VALID_MESSAGE);
            JSBridge.this.invokeCallback(optString, null);
        }

        @JavascriptInterface
        public void openInBrowser(String str) {
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "MMJS: openInBrowser(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString(JSBridge.CALLBACK_ID_KEY, null);
            if (!JSBridge.this.apiCallsEnabled) {
                MMLog.m4068e(JSBridge.TAG, JSBridge.AD_NOT_CLICKED_MESSAGE);
                JSBridge.this.invokeCallback(optString, Boolean.FALSE);
                return;
            }
            boolean startActivityFromUrl = Utils.startActivityFromUrl(jSONObject.optString("url", null));
            if (startActivityFromUrl) {
                JSBridge.this.jsBridgeListener.onAdLeftApplication();
            }
            JSBridge.this.invokeCallback(optString, Boolean.valueOf(startActivityFromUrl));
        }

        @JavascriptInterface
        @SuppressLint({"DefaultLocale"})
        public void openMap(String str) {
            String str2;
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(JSBridge.TAG, "MMJS: openMap(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString(JSBridge.CALLBACK_ID_KEY, null);
            if (!JSBridge.this.apiCallsEnabled) {
                MMLog.m4068e(JSBridge.TAG, JSBridge.AD_NOT_CLICKED_MESSAGE);
                JSBridge.this.invokeCallback(optString, Boolean.FALSE);
                return;
            }
            if (jSONObject.has("address")) {
                String optString2 = jSONObject.optString("address");
                try {
                    str2 = "geo:0,0?q=" + URLEncoder.encode(optString2, "utf-8");
                } catch (UnsupportedEncodingException e) {
                    JSBridge.this.invokeCallback(optString, Boolean.FALSE, "Unable to encode address");
                    return;
                }
            } else if (!jSONObject.has("longitude") || !jSONObject.has("latitude")) {
                JSBridge.this.invokeCallback(optString, Boolean.FALSE, "address or latitude and longitude must be specified");
                return;
            } else {
                Double valueOf = Double.valueOf(jSONObject.optDouble("latitude"));
                Double valueOf2 = Double.valueOf(jSONObject.optDouble("longitude"));
                str2 = String.format("geo:%f,%f?q=%f,%f", valueOf, valueOf2, valueOf, valueOf2);
            }
            if (!Utils.startActivityFromUrl(str2)) {
                JSBridge.this.invokeCallback(optString, Boolean.FALSE, "Unable to open map");
                return;
            }
            JSBridge.this.jsBridgeListener.onAdLeftApplication();
            JSBridge.this.invokeCallback(optString, Boolean.TRUE);
        }

        @JavascriptInterface
        public void savePictureToPhotoLibrary(String str) {
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "MMJS: savePictureToPhotoLibrary(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            final String optString = jSONObject.optString(JSBridge.CALLBACK_ID_KEY, null);
            if (!JSBridge.this.apiCallsEnabled) {
                MMLog.m4068e(JSBridge.TAG, JSBridge.AD_NOT_CLICKED_MESSAGE);
                JSBridge.this.invokeCallback(optString, Boolean.FALSE);
                return;
            }
            String optString2 = jSONObject.optString("name", null);
            String optString3 = jSONObject.optString("url", null);
            if (TextUtils.isEmpty(optString3)) {
                MMLog.m4068e(JSBridge.TAG, "No path specified for photo");
                JSBridge.this.invokeCallback(optString, Boolean.FALSE);
                return;
            }
            final MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
            if (mMWebView != null) {
                MediaUtils.savePicture(mMWebView.getContext(), optString3, optString2, new MediaUtils.SavePictureListener() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeMMJS.4
                    @Override // com.millennialmedia.internal.utils.MediaUtils.SavePictureListener
                    public void onError(String str3) {
                        MMLog.m4068e(JSBridge.TAG, str3);
                        JSBridge.this.invokeCallback(optString, Boolean.FALSE);
                    }

                    @Override // com.millennialmedia.internal.utils.MediaUtils.SavePictureListener
                    public void onPictureSaved(File file) {
                        Context context = mMWebView.getContext();
                        Utils.showToast(context, file.getName() + " stored in gallery");
                        JSBridge.this.invokeCallback(optString, Boolean.TRUE);
                    }
                });
                return;
            }
            MMLog.m4068e(JSBridge.TAG, JSBridge.WEBVIEW_NOT_VALID_MESSAGE);
            JSBridge.this.invokeCallback(optString, Boolean.FALSE);
        }

        @JavascriptInterface
        public void sms(String str) {
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "MMJS: sms(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString(JSBridge.CALLBACK_ID_KEY, null);
            if (!JSBridge.this.apiCallsEnabled) {
                MMLog.m4068e(JSBridge.TAG, JSBridge.AD_NOT_CLICKED_MESSAGE);
                JSBridge.this.invokeCallback(optString, Boolean.FALSE);
                return;
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("recipients");
            if (optJSONArray == null || optJSONArray.length() == 0) {
                MMLog.m4068e(JSBridge.TAG, "No recipients provided");
                JSBridge.this.invokeCallback(optString, Boolean.FALSE);
                return;
            }
            String optString2 = jSONObject.optString("message", null);
            if (optString2 == null) {
                MMLog.m4068e(JSBridge.TAG, "No message provided");
                JSBridge.this.invokeCallback(optString, Boolean.FALSE);
                return;
            }
            String join = TextUtils.join(",", JSONUtils.convertToStringArray(optJSONArray));
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("sms:" + join));
            intent.putExtra("sms_body", optString2);
            boolean startActivity = Utils.startActivity(EnvironmentUtils.getApplicationContext(), intent);
            if (startActivity) {
                JSBridge.this.jsBridgeListener.onAdLeftApplication();
            }
            JSBridge.this.invokeCallback(optString, Boolean.valueOf(startActivity));
        }

        @JavascriptInterface
        public void vibrate(String str) {
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(JSBridge.TAG, "MMJS: vibrate(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            final String optString = jSONObject.optString("onStartCallbackId", null);
            final String optString2 = jSONObject.optString("onFinishCallbackId", null);
            JSONArray optJSONArray = jSONObject.optJSONArray("pattern");
            int i = 0;
            if (optJSONArray == null) {
                MMLog.m4068e(JSBridge.TAG, "No pattern provided");
                JSBridge.this.invokeCallback(optString2, Boolean.FALSE);
                return;
            }
            long[] jArr = new long[optJSONArray.length() + 1];
            jArr[0] = 0;
            while (i < optJSONArray.length()) {
                int i2 = i + 1;
                jArr[i2] = optJSONArray.getLong(i);
                i = i2;
            }
            Utils.vibrate(jArr, -1, new Utils.VibrateListener() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeMMJS.5
                @Override // com.millennialmedia.internal.utils.Utils.VibrateListener
                public void onError() {
                    JSBridge.this.invokeCallback(optString2, Boolean.FALSE);
                }

                @Override // com.millennialmedia.internal.utils.Utils.VibrateListener
                public void onFinished() {
                    JSBridge.this.invokeCallback(optString2, Boolean.TRUE);
                }

                @Override // com.millennialmedia.internal.utils.Utils.VibrateListener
                public void onStarted() {
                    JSBridge.this.invokeCallback(optString, new Object[0]);
                }
            });
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/JSBridge$JSBridgeMRAID.class */
    public class JSBridgeMRAID {
        public JSBridgeMRAID() {
            JSBridge.this = r4;
        }

        @JavascriptInterface
        public void close(String str) {
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "MRAID: close(" + str + ")");
            }
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeMRAID.1
                @Override // java.lang.Runnable
                public void run() {
                    JSBridge.this.jsBridgeListener.close();
                }
            });
        }

        @JavascriptInterface
        public void createCalendarEvent(String str) {
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "MRAID: createCalendarEvent(" + str + ")");
            }
            if (!JSBridge.this.apiCallsEnabled) {
                JSBridge.this.throwMraidError(JSBridge.AD_NOT_CLICKED_MESSAGE, JSBridge.CREATE_CALENDAR_EVENT_MRAID_OP);
                return;
            }
            JSONObject jSONObject = new JSONObject(str).getJSONObject("parameters");
            if (jSONObject == null) {
                JSBridge.this.throwMraidError(JSBridge.PARAMETERS_NOT_PROVIDED_MESSAGE, JSBridge.CREATE_CALENDAR_EVENT_MRAID_OP);
                return;
            }
            MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
            if (mMWebView == null) {
                JSBridge.this.throwMraidError(JSBridge.WEBVIEW_NOT_VALID_MESSAGE, JSBridge.CREATE_CALENDAR_EVENT_MRAID_OP);
            } else {
                CalendarUtils.addEvent(mMWebView.getContext(), jSONObject, new CalendarUtils.CalendarListener() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeMRAID.7
                    @Override // com.millennialmedia.internal.utils.CalendarUtils.CalendarListener
                    public void onError(String str3) {
                        JSBridge.this.throwMraidError(str3, JSBridge.CREATE_CALENDAR_EVENT_MRAID_OP);
                    }

                    @Override // com.millennialmedia.internal.utils.CalendarUtils.CalendarListener
                    public void onUIDisplayed() {
                        if (MMLog.isDebugEnabled()) {
                            MMLog.m4070d(JSBridge.TAG, "Calendar activity started");
                        }
                    }
                });
            }
        }

        @JavascriptInterface
        public void expand(String str) {
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "MRAID: expand(" + str + ")");
            }
            if (!JSBridge.this.apiCallsEnabled) {
                JSBridge.this.throwMraidError(JSBridge.AD_NOT_CLICKED_MESSAGE, JSBridge.EXPAND_MRAID_OP);
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            JSBridge jSBridge = JSBridge.this;
            if (jSBridge.isInterstitial) {
                jSBridge.throwMraidError(JSBridge.CANNOT_EXPAND_INTERSTITIAL_MESSAGE, JSBridge.EXPAND_MRAID_OP);
                return;
            }
            DisplayMetrics displayMetrics = EnvironmentUtils.getApplicationContext().getResources().getDisplayMetrics();
            final SizableStateManager.ExpandParams expandParams = new SizableStateManager.ExpandParams();
            if (jSONObject.has("width")) {
                expandParams.width = Math.min((int) TypedValue.applyDimension(1, jSONObject.getInt("width"), displayMetrics), EnvironmentUtils.getDisplayWidth());
            } else {
                expandParams.width = -1;
            }
            if (jSONObject.has("height")) {
                expandParams.height = Math.min((int) TypedValue.applyDimension(1, jSONObject.getInt("height"), displayMetrics), EnvironmentUtils.getDisplayHeight());
            } else {
                expandParams.height = -1;
            }
            expandParams.showCloseIndicator = !jSONObject.optBoolean("useCustomClose", JSBridge.this.useCustomClose);
            expandParams.orientation = JSBridge.this.requestedOrientation;
            expandParams.url = jSONObject.optString("url", null);
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeMRAID.2
                @Override // java.lang.Runnable
                public void run() {
                    if (TextUtils.equals(JSBridge.this.currentState, JSBridge.STATE_EXPANDED) || TextUtils.equals(JSBridge.this.currentState, JSBridge.STATE_HIDDEN) || TextUtils.equals(JSBridge.this.currentState, JSBridge.STATE_LOADING)) {
                        JSBridge jSBridge2 = JSBridge.this;
                        jSBridge2.throwMraidError(String.format(JSBridge.CANNOT_EXPAND_STATE_MESSAGE, jSBridge2.currentState), JSBridge.EXPAND_MRAID_OP);
                    } else if (JSBridge.this.jsBridgeListener.expand(expandParams)) {
                    } else {
                        JSBridge.this.throwMraidError(JSBridge.EXPAND_FAILED_MESSAGE, JSBridge.EXPAND_MRAID_OP);
                    }
                }
            });
        }

        @JavascriptInterface
        public void open(String str) {
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "MRAID: open(" + str + ")");
            }
            if (!JSBridge.this.apiCallsEnabled) {
                JSBridge.this.throwMraidError(JSBridge.AD_NOT_CLICKED_MESSAGE, "open");
                return;
            }
            String string = new JSONObject(str).getString("url");
            if (Utils.startActivityFromUrl(string)) {
                JSBridge.this.jsBridgeListener.onAdLeftApplication();
            } else {
                JSBridge.this.throwMraidError(String.format(JSBridge.URL_OPEN_FAILED_MESSAGE, string), "open");
            }
        }

        @JavascriptInterface
        public void playVideo(String str) {
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "MRAID: playVideo(" + str + ")");
            }
            if (!JSBridge.this.apiCallsEnabled) {
                JSBridge.this.throwMraidError(JSBridge.AD_NOT_CLICKED_MESSAGE, JSBridge.PLAY_VIDEO_MRAID_OP);
                return;
            }
            String optString = new JSONObject(str).optString("url", null);
            if (TextUtils.isEmpty(optString)) {
                JSBridge.this.throwMraidError(JSBridge.NO_VIDEO_PATH_MESSAGE, JSBridge.PLAY_VIDEO_MRAID_OP);
                return;
            }
            MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
            if (mMWebView == null) {
                JSBridge.this.throwMraidError(JSBridge.WEBVIEW_NOT_VALID_MESSAGE, JSBridge.PLAY_VIDEO_MRAID_OP);
            } else {
                MediaUtils.startVideoPlayer(mMWebView.getContext(), optString, new MediaUtils.PlayVideoListener() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeMRAID.8
                    @Override // com.millennialmedia.internal.utils.MediaUtils.PlayVideoListener
                    public void onError(String str3) {
                        JSBridge.this.throwMraidError(str3, JSBridge.PLAY_VIDEO_MRAID_OP);
                    }

                    @Override // com.millennialmedia.internal.utils.MediaUtils.PlayVideoListener
                    public void onVideoStarted(Uri uri) {
                        if (MMLog.isDebugEnabled()) {
                            String str3 = JSBridge.TAG;
                            MMLog.m4070d(str3, "Video activity started for <" + uri.toString() + ">");
                        }
                    }
                });
            }
        }

        @JavascriptInterface
        public void resize(String str) {
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "MRAID: resize(" + str + ")");
            }
            if (!JSBridge.this.apiCallsEnabled) {
                JSBridge.this.throwMraidError(JSBridge.AD_NOT_CLICKED_MESSAGE, JSBridge.RESIZE_MRAID_OP);
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            JSBridge jSBridge = JSBridge.this;
            if (jSBridge.isInterstitial) {
                jSBridge.throwMraidError(JSBridge.CANNOT_RESIZE_INTERSTITIAL_MESSAGE, JSBridge.RESIZE_MRAID_OP);
                return;
            }
            DisplayMetrics displayMetrics = EnvironmentUtils.getApplicationContext().getResources().getDisplayMetrics();
            final SizableStateManager.ResizeParams resizeParams = new SizableStateManager.ResizeParams();
            resizeParams.width = (int) TypedValue.applyDimension(1, jSONObject.getInt("width"), displayMetrics);
            resizeParams.height = (int) TypedValue.applyDimension(1, jSONObject.getInt("height"), displayMetrics);
            resizeParams.offsetX = (int) TypedValue.applyDimension(1, jSONObject.optInt("offsetX", 0), displayMetrics);
            resizeParams.offsetY = (int) TypedValue.applyDimension(1, jSONObject.optInt("offsetY", 0), displayMetrics);
            resizeParams.customClosePosition = jSONObject.optString("customClosePosition", "top-right");
            resizeParams.allowOffScreen = jSONObject.optBoolean("allowOffscreen", true);
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeMRAID.3
                @Override // java.lang.Runnable
                public void run() {
                    if (TextUtils.equals(JSBridge.this.currentState, JSBridge.STATE_EXPANDED) || TextUtils.equals(JSBridge.this.currentState, JSBridge.STATE_HIDDEN) || TextUtils.equals(JSBridge.this.currentState, JSBridge.STATE_LOADING)) {
                        JSBridge jSBridge2 = JSBridge.this;
                        jSBridge2.throwMraidError(String.format(JSBridge.CANNOT_RESIZE_STATE_MESSAGE, jSBridge2.currentState), JSBridge.RESIZE_MRAID_OP);
                    } else if (JSBridge.this.jsBridgeListener.resize(resizeParams)) {
                    } else {
                        JSBridge.this.throwMraidError(JSBridge.RESIZE_FAILED_MESSAGE, JSBridge.RESIZE_MRAID_OP);
                    }
                }
            });
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x006b, code lost:
            if (com.millennialmedia.internal.utils.EnvironmentUtils.getCurrentConfigOrientation() == 2) goto L17;
         */
        @android.webkit.JavascriptInterface
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void setOrientationProperties(java.lang.String r8) {
            /*
                r7 = this;
                boolean r0 = com.millennialmedia.MMLog.isDebugEnabled()
                if (r0 == 0) goto L2f
                java.lang.String r0 = com.millennialmedia.internal.JSBridge.access$000()
                r9 = r0
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r1.<init>()
                r10 = r0
                r0 = r10
                java.lang.String r1 = "MRAID: setOrientationProperties("
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r10
                r1 = r8
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r10
                java.lang.String r1 = ")"
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                r1 = r10
                java.lang.String r1 = r1.toString()
                com.millennialmedia.MMLog.m4070d(r0, r1)
            L2f:
                org.json.JSONObject r0 = new org.json.JSONObject
                r1 = r0
                r2 = r8
                r1.<init>(r2)
                r8 = r0
                r0 = r8
                java.lang.String r1 = "allowOrientationChange"
                r2 = 1
                boolean r0 = r0.optBoolean(r1, r2)
                r11 = r0
                r0 = r8
                java.lang.String r1 = "forceOrientation"
                java.lang.String r2 = "none"
                java.lang.String r0 = r0.optString(r1, r2)
                r8 = r0
                java.lang.String r0 = "none"
                r1 = r8
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L71
                r0 = r11
                if (r0 == 0) goto L67
                r0 = r7
                com.millennialmedia.internal.JSBridge r0 = com.millennialmedia.internal.JSBridge.this
                r1 = -1
                r0.requestedOrientation = r1
                goto L9a
            L67:
                int r0 = com.millennialmedia.internal.utils.EnvironmentUtils.getCurrentConfigOrientation()
                r1 = 2
                if (r0 != r1) goto L7b
                goto L91
            L71:
                java.lang.String r0 = "portrait"
                r1 = r8
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L87
            L7b:
                r0 = r7
                com.millennialmedia.internal.JSBridge r0 = com.millennialmedia.internal.JSBridge.this
                r1 = 7
                r0.requestedOrientation = r1
                goto L9a
            L87:
                java.lang.String r0 = "landscape"
                r1 = r8
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto La6
            L91:
                r0 = r7
                com.millennialmedia.internal.JSBridge r0 = com.millennialmedia.internal.JSBridge.this
                r1 = 6
                r0.requestedOrientation = r1
            L9a:
                com.millennialmedia.internal.JSBridge$JSBridgeMRAID$5 r0 = new com.millennialmedia.internal.JSBridge$JSBridgeMRAID$5
                r1 = r0
                r2 = r7
                r1.<init>()
                com.millennialmedia.internal.utils.ThreadUtils.postOnUiThread(r0)
                return
            La6:
                r0 = r7
                com.millennialmedia.internal.JSBridge r0 = com.millennialmedia.internal.JSBridge.this
                java.lang.String r1 = "Invalid orientation specified <%s>"
                r2 = 1
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                r5 = r8
                r3[r4] = r5
                java.lang.String r1 = java.lang.String.format(r1, r2)
                java.lang.String r2 = "setOrientationProperties"
                r0.throwMraidError(r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.internal.JSBridge.JSBridgeMRAID.setOrientationProperties(java.lang.String):void");
        }

        @JavascriptInterface
        public void storePicture(String str) {
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "MRAID: storePicture(" + str + ")");
            }
            if (!JSBridge.this.apiCallsEnabled) {
                JSBridge.this.throwMraidError(JSBridge.AD_NOT_CLICKED_MESSAGE, JSBridge.SUPPORTS_STORE_PICTURE);
            } else if (!EnvironmentUtils.isExternalStorageSupported()) {
                JSBridge.this.throwMraidError(JSBridge.NOT_SUPPORTED_MESSAGE, JSBridge.SUPPORTS_STORE_PICTURE);
            } else {
                String optString = new JSONObject(str).optString("url", null);
                if (TextUtils.isEmpty(optString)) {
                    JSBridge.this.throwMraidError(JSBridge.NO_PICTURE_PATH_MESSAGE, JSBridge.SUPPORTS_STORE_PICTURE);
                    return;
                }
                final MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
                if (mMWebView == null) {
                    JSBridge.this.throwMraidError(JSBridge.WEBVIEW_NOT_VALID_MESSAGE, JSBridge.SUPPORTS_STORE_PICTURE);
                } else {
                    MediaUtils.savePicture(mMWebView.getContext(), optString, null, new MediaUtils.SavePictureListener() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeMRAID.6
                        @Override // com.millennialmedia.internal.utils.MediaUtils.SavePictureListener
                        public void onError(String str3) {
                            JSBridge.this.throwMraidError(str3, JSBridge.SUPPORTS_STORE_PICTURE);
                        }

                        @Override // com.millennialmedia.internal.utils.MediaUtils.SavePictureListener
                        public void onPictureSaved(File file) {
                            Context context = mMWebView.getContext();
                            Utils.showToast(context, file.getName() + " stored in gallery");
                        }
                    });
                }
            }
        }

        @JavascriptInterface
        public void useCustomClose(String str) {
            if (MMLog.isDebugEnabled()) {
                String str2 = JSBridge.TAG;
                MMLog.m4070d(str2, "MRAID: useCustomClose(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            JSBridge jSBridge = JSBridge.this;
            jSBridge.useCustomClose = jSONObject.optBoolean("useCustomClose", jSBridge.useCustomClose);
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeMRAID.4
                @Override // java.lang.Runnable
                public void run() {
                    JSBridge.this.jsBridgeListener.showCloseIndicator(!JSBridge.this.useCustomClose);
                }
            });
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/JSBridge$JSBridgeVastVideo.class */
    public class JSBridgeVastVideo {
        public JSBridgeVastVideo() {
            JSBridge.this = r4;
        }

        @JavascriptInterface
        public void close(String str) {
            MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
            if (mMWebView instanceof VASTVideoView.VASTVideoWebView) {
                ((VASTVideoView.VASTVideoWebView) mMWebView).close();
            } else {
                MMLog.m4068e(JSBridge.TAG, "Close cannot be called on a WebView that is not part of a VAST Video creative.");
            }
        }

        @JavascriptInterface
        public void pause(String str) {
            MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
            if (mMWebView instanceof VASTVideoView.VASTVideoWebView) {
                ((VASTVideoView.VASTVideoWebView) mMWebView).pause();
            } else {
                MMLog.m4068e(JSBridge.TAG, "Pause cannot be called on a WebView that is not part of a VAST Video creative.");
            }
        }

        @JavascriptInterface
        public void play(String str) {
            MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
            if (mMWebView instanceof VASTVideoView.VASTVideoWebView) {
                ((VASTVideoView.VASTVideoWebView) mMWebView).play();
            } else {
                MMLog.m4068e(JSBridge.TAG, "Play cannot be called on a WebView that is not part of a VAST Video creative.");
            }
        }

        @JavascriptInterface
        public void restart(String str) {
            MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
            if (mMWebView instanceof VASTVideoView.VASTVideoWebView) {
                ((VASTVideoView.VASTVideoWebView) mMWebView).restart();
            } else {
                MMLog.m4068e(JSBridge.TAG, "Restart cannot be called on a WebView that is not part of a VAST Video creative.");
            }
        }

        @JavascriptInterface
        public void seek(String str) {
            MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
            if (!(mMWebView instanceof VASTVideoView.VASTVideoWebView)) {
                MMLog.m4068e(JSBridge.TAG, "Seek cannot be called on a WebView that is not part of a VAST Video creative.");
                return;
            }
            ((VASTVideoView.VASTVideoWebView) mMWebView).seek(new JSONObject(str).getInt("seekTime"));
        }

        @JavascriptInterface
        public void setTimeInterval(String str) {
            MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
            if (!(mMWebView instanceof VASTVideoView.VASTVideoWebView)) {
                MMLog.m4068e(JSBridge.TAG, "SetTimeInterval can't be called on a WebView that is not part of a VAST Video creative.");
                return;
            }
            ((VASTVideoView.VASTVideoWebView) mMWebView).setTimeInterval(new JSONObject(str).optInt("timeInterval", -1));
        }

        @JavascriptInterface
        public void skip(String str) {
            MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
            if (mMWebView instanceof VASTVideoView.VASTVideoWebView) {
                ((VASTVideoView.VASTVideoWebView) mMWebView).skip();
            }
        }

        @JavascriptInterface
        public void triggerTimeUpdate(String str) {
            MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
            if (mMWebView instanceof VASTVideoView.VASTVideoWebView) {
                ((VASTVideoView.VASTVideoWebView) mMWebView).triggerTimeUpdate();
            } else {
                MMLog.m4068e(JSBridge.TAG, "TriggerTimeUpdate can't be called on a WebView that is not part of a VAST Video creative.");
            }
        }
    }

    static {
        useActionsQueue = Build.VERSION.SDK_INT < 19;
    }

    public JSBridge(MMWebView mMWebView, boolean z, JSBridgeListener jSBridgeListener) {
        this.mmWebViewRef = new WeakReference<>(mMWebView);
        this.jsBridgeListener = jSBridgeListener;
        this.isInterstitial = z;
        if (mMWebView != null) {
            mMWebView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.millennialmedia.internal.JSBridge.1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    int currentConfigOrientation;
                    if (!(view instanceof MMWebView) || JSBridge.this.lastOrientation == (currentConfigOrientation = EnvironmentUtils.getCurrentConfigOrientation())) {
                        return;
                    }
                    if (MMLog.isDebugEnabled()) {
                        String str = JSBridge.TAG;
                        MMLog.m4070d(str, "Detected change in orientation to " + EnvironmentUtils.getCurrentConfigOrientationString());
                    }
                    JSBridge jSBridge = JSBridge.this;
                    jSBridge.lastOrientation = currentConfigOrientation;
                    jSBridge.sendPositions((MMWebView) view);
                }
            });
        }
    }

    public static String buildScriptStatements(List<String> list) {
        StringBuilder sb = new StringBuilder();
        sb.append("<script>window.mmSdkVersion=\"6.7.0-c5b3e1a\";</script>");
        for (String str : list) {
            sb.append("<script>");
            sb.append(getAssetContents(str));
            sb.append("</script>");
        }
        return sb.toString();
    }

    private static String getAssetContents(String str) {
        Map<String, String> map = scriptFilesCache;
        if (!map.containsKey(str)) {
            map.put(str, IOUtils.readAssetContents("mmadsdk/" + str));
        }
        return map.get(str);
    }

    public static JSONObject getSupportedFeatures() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(SUPPORTS_SMS, EnvironmentUtils.isSmsSupported());
            jSONObject.put(SUPPORTS_TEL, EnvironmentUtils.isTelSupported());
            jSONObject.put(SUPPORTS_CALENDAR, true);
            jSONObject.put(SUPPORTS_STORE_PICTURE, EnvironmentUtils.isExternalStorageSupported());
            jSONObject.put(SUPPORTS_INLINE_VIDEO, true);
        } catch (JSONException e) {
            MMLog.m4067e(TAG, "Error creating supports dictionary", e);
        }
        return jSONObject;
    }

    private boolean isJavascriptReady() {
        return this.jsInjected && this.scriptsAwaitingLoad.size() == 0;
    }

    public boolean areApiCallsEnabled() {
        return this.apiCallsEnabled;
    }

    @TargetApi(19)
    public void callJavascript(String str, Object... objArr) {
        JSONArray jSONArray = new JSONArray((Collection) Arrays.asList(objArr));
        try {
            if (!isJavascriptReady()) {
                if (!MMLog.isDebugEnabled()) {
                    return;
                }
                MMLog.m4070d(TAG, "jsBridge scripts are not loaded: " + str + "(" + jSONArray.join(",") + ")");
            } else if (!useActionsQueue) {
                final String str2 = str + "(" + jSONArray.join(",") + ")";
                ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.JSBridge.2
                    @Override // java.lang.Runnable
                    public void run() {
                        MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
                        if (mMWebView != null) {
                            if (MMLog.isDebugEnabled()) {
                                String str3 = JSBridge.TAG;
                                MMLog.m4070d(str3, "Calling js: " + str2);
                            }
                            mMWebView.evaluateJavascript(str2, null);
                        }
                    }
                });
            } else {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("functionName", str);
                jSONObject.put("args", jSONArray);
                synchronized (this) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.m4070d(TAG, "Queuing js: " + str + " args: " + jSONArray.toString());
                    }
                    if (this.actionsQueue == null) {
                        this.actionsQueue = new JSONArray();
                    }
                    this.actionsQueue.put(jSONObject);
                }
            }
        } catch (JSONException e) {
            MMLog.m4067e(TAG, "Unable to execute javascript function", e);
        }
    }

    public List<String> createScriptsAwaitingLoadList(String str) {
        LinkedList linkedList = new LinkedList();
        if (useActionsQueue) {
            linkedList.add("actionsQueue.js");
        }
        linkedList.add("mm.js");
        linkedList.add("mraid.js");
        if (!Utils.isEmpty(str)) {
            linkedList.add(str);
        }
        return linkedList;
    }

    public void enableApiCalls() {
        this.apiCallsEnabled = true;
    }

    public JSONObject getJsonCurrentPosition(MMWebView mMWebView) {
        Rect viewDimensionsRelativeToContent = ViewUtils.getViewDimensionsRelativeToContent(mMWebView, null);
        if (viewDimensionsRelativeToContent == null) {
            return null;
        }
        ViewUtils.convertPixelsToDips(viewDimensionsRelativeToContent);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", viewDimensionsRelativeToContent.left);
            jSONObject.put("y", viewDimensionsRelativeToContent.top);
            jSONObject.put("width", viewDimensionsRelativeToContent.width());
            jSONObject.put("height", viewDimensionsRelativeToContent.height());
        } catch (JSONException e) {
            MMLog.m4068e(TAG, "Error creating json object");
        }
        return jSONObject;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x01ea  */
    @android.annotation.SuppressLint({"AddJavascriptInterface"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String injectJSBridge(java.lang.String r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 510
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.internal.JSBridge.injectJSBridge(java.lang.String, boolean):java.lang.String");
    }

    public void invokeCallback(String str, Object... objArr) {
        if (str == null) {
            if (!MMLog.isDebugEnabled()) {
                return;
            }
            MMLog.m4070d(TAG, "No callbackId provided");
            return;
        }
        Object[] objArr2 = objArr;
        if (objArr == null) {
            objArr2 = new Object[1];
        }
        Object[] objArr3 = new Object[objArr2.length + 1];
        int i = 0;
        objArr3[0] = str;
        while (i < objArr2.length) {
            int i2 = i + 1;
            objArr3[i2] = objArr2[i];
            i = i2;
        }
        callJavascript(MM_JS_BRIDGE_CALL_CALLBACK, objArr3);
    }

    public boolean isReady() {
        return this.ready;
    }

    public void sendPositions(MMWebView mMWebView) {
        if (!this.ready) {
            return;
        }
        float displayDensity = EnvironmentUtils.getDisplayDensity();
        int displayWidth = (int) (EnvironmentUtils.getDisplayWidth() / displayDensity);
        int displayHeight = (int) (EnvironmentUtils.getDisplayHeight() / displayDensity);
        Rect contentDimensions = ViewUtils.getContentDimensions(mMWebView, null);
        try {
            JSONObject jsonCurrentPosition = getJsonCurrentPosition(mMWebView);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("width", displayWidth);
            jSONObject.put("height", displayHeight);
            JSONObject jSONObject2 = new JSONObject();
            if (contentDimensions != null) {
                ViewUtils.convertPixelsToDips(contentDimensions);
                jSONObject2.put("width", contentDimensions.width());
                jSONObject2.put("height", contentDimensions.height());
            }
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("currentPosition", jsonCurrentPosition);
            jSONObject3.put("screenSize", jSONObject);
            jSONObject3.put("maxSize", jSONObject2);
            callJavascript(JS_SET_POSITIONS, jSONObject3);
        } catch (JSONException e) {
            MMLog.m4068e(TAG, "Error creating json object in setCurrentPosition");
        }
    }

    public void setCurrentPosition(final MMWebView mMWebView) {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.JSBridge.5
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jsonCurrentPosition = JSBridge.this.getJsonCurrentPosition(mMWebView);
                if (jsonCurrentPosition == null) {
                    return;
                }
                JSBridge jSBridge = JSBridge.this;
                if (jSBridge.ready) {
                    if (jSBridge.isResizing) {
                        return;
                    }
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("currentPosition", jsonCurrentPosition);
                        JSBridge.this.callJavascript(JSBridge.JS_SET_POSITIONS, jSONObject);
                        return;
                    } catch (JSONException e) {
                        MMLog.m4068e(JSBridge.TAG, "Error creating json object in setCurrentPosition");
                        return;
                    }
                }
                int optInt = jsonCurrentPosition.optInt("width", 0);
                int optInt2 = jsonCurrentPosition.optInt("height", 0);
                if (optInt <= 0 || optInt2 <= 0) {
                    return;
                }
                JSBridge jSBridge2 = JSBridge.this;
                jSBridge2.hasSize = true;
                jSBridge2.setReadyState();
            }
        });
    }

    public void setLogLevel(int i) {
        callJavascript(MM_JS_BRIDGE_SET_LOG_LEVEL, i >= 6 ? "ERROR" : i >= 4 ? "INFO" : "DEBUG");
    }

    public void setReadyState() {
        if (!this.ready && this.hasSize && this.isViewable && isJavascriptReady()) {
            this.ready = true;
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.JSBridge.6
                @Override // java.lang.Runnable
                public void run() {
                    MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
                    if (mMWebView == null) {
                        return;
                    }
                    JSBridge jSBridge = JSBridge.this;
                    jSBridge.callJavascript(JSBridge.JS_SET_PLACEMENT_TYPE, jSBridge.isInterstitial ? AdType.INTERSTITIAL : NativeAd.NATIVE_TYPE_INLINE);
                    JSBridge.this.callJavascript(JSBridge.JS_SET_SUPPORTS, JSBridge.getSupportedFeatures());
                    JSBridge.this.sendPositions(mMWebView);
                    JSBridge jSBridge2 = JSBridge.this;
                    jSBridge2.callJavascript(JSBridge.JS_SET_VIEWABLE, Boolean.valueOf(jSBridge2.isViewable));
                    JSBridge jSBridge3 = JSBridge.this;
                    jSBridge3.setState(jSBridge3.isTwoPartExpand ? JSBridge.STATE_EXPANDED : "default");
                    if (JSBridge.this.jsBridgeListener == null) {
                        return;
                    }
                    JSBridge.this.jsBridgeListener.onJSBridgeReady();
                }
            });
        }
    }

    public void setScrolledPosition(MMWebView mMWebView) {
        this.scrollIdleTimeout = System.currentTimeMillis() + 450;
        if (this.scrollThrottling.compareAndSet(false, true)) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.JSBridge.4
                /* JADX WARN: Type inference failed for: r0v21, types: [long] */
                @Override // java.lang.Runnable
                public void run() {
                    char c = 0;
                    do {
                        try {
                            Thread.sleep(100L);
                            MMWebView mMWebView2 = (MMWebView) JSBridge.this.mmWebViewRef.get();
                            if (mMWebView2 == null) {
                                break;
                            }
                            char c2 = c;
                            if (JSBridge.this.scrollIdleTimeout > c) {
                                c2 = JSBridge.this.scrollIdleTimeout;
                                JSBridge.this.setCurrentPosition(mMWebView2);
                            }
                            c = c2;
                        } catch (InterruptedException e) {
                        }
                    } while (System.currentTimeMillis() < JSBridge.this.scrollIdleTimeout);
                    JSBridge.this.scrollThrottling.set(false);
                }
            });
        }
    }

    public void setState(final String str) {
        if (!this.ready) {
            return;
        }
        this.isResizing = false;
        if (TextUtils.equals(str, this.currentState) && !TextUtils.equals(str, STATE_RESIZED)) {
            return;
        }
        this.currentState = str;
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.JSBridge.3
            @Override // java.lang.Runnable
            public void run() {
                MMWebView mMWebView = (MMWebView) JSBridge.this.mmWebViewRef.get();
                if (mMWebView == null) {
                    return;
                }
                JSBridge.this.callJavascript(JSBridge.JS_SET_STATE, str, JSBridge.this.getJsonCurrentPosition(mMWebView));
            }
        });
    }

    public void setStateCollapsed() {
        setState(this.isInterstitial ? STATE_HIDDEN : "default");
    }

    public void setStateExpanded() {
        setState(this.isInterstitial ? "default" : STATE_EXPANDED);
    }

    public void setStateResized() {
        setState(STATE_RESIZED);
    }

    public void setStateResizing() {
        this.isResizing = true;
    }

    public void setStateUnresized() {
        setState("default");
    }

    public void setTwoPartExpand() {
        this.isTwoPartExpand = true;
    }

    public void setViewable(boolean z) {
        if (z != this.isViewable) {
            this.isViewable = z;
            if (this.ready) {
                callJavascript(JS_SET_VIEWABLE, Boolean.valueOf(z));
            } else {
                setReadyState();
            }
        }
    }

    public void throwMraidError(String str, String str2) {
        String str3 = TAG;
        MMLog.m4068e(str3, "MRAID error - action: " + str2 + " message: " + str);
        callJavascript(JS_THROW_MRAID_ERROR, str, str2);
    }
}
