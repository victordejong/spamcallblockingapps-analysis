package com.taiwanmobile.p055pt.adp.view.webview;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Vibrator;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import androidx.media2.exoplayer.external.util.MimeTypes;
import com.aotter.net.trek.model.AdFetch;
import com.aotter.net.trek.model.CatWalkWebPayload;
import com.criteo.sync.sdk.customtabs.CustomTabsHelper;
import com.mopub.common.FullAdType;
import com.taiwanmobile.p055pt.adp.view.TWMAd;
import com.taiwanmobile.p055pt.adp.view.TWMAdActivity;
import com.taiwanmobile.p055pt.adp.view.TWMAdSize;
import com.taiwanmobile.p055pt.adp.view.TWMAdViewListener;
import com.taiwanmobile.p055pt.adp.view.p056a.C4117a;
import com.taiwanmobile.p055pt.adp.view.p056a.p058b.C4127a;
import com.taiwanmobile.p055pt.adp.view.p059b.C4154a;
import com.taiwanmobile.p055pt.adp.view.p059b.C4160c;
import com.taiwanmobile.p055pt.adp.view.p059b.C4164d;
import com.taiwanmobile.p055pt.adp.view.webview.client.WebChromeClientBase;
import com.taiwanmobile.p055pt.adp.view.webview.client.WebViewClientBase;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidJS;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject;
import java.lang.ref.WeakReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;
import p081h.p447o.p448a.p449a.C10830b;
import p081h.p447o.p448a.p449a.C10831c;
import p081h.p447o.p448a.p449a.C10832d;
@SuppressLint({"SetJavaScriptEnabled"})
/* renamed from: com.taiwanmobile.pt.adp.view.webview.JSWebView */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/webview/JSWebView.class */
public class JSWebView extends WebView {

    /* renamed from: a */
    public String f10061a;

    /* renamed from: b */
    public C4160c f10062b;

    /* renamed from: c */
    public C4154a f10063c;

    /* renamed from: d */
    public C4164d f10064d;

    /* renamed from: e */
    public WeakReference<Context> f10065e;

    /* renamed from: f */
    public String f10066f;

    /* renamed from: g */
    public String f10067g;

    /* renamed from: h */
    public IRBehavior f10068h;

    /* renamed from: i */
    public WeakReference<Activity> f10069i;

    /* renamed from: j */
    public WeakReference<MutableContextWrapper> f10070j;

    /* renamed from: com.taiwanmobile.pt.adp.view.webview.JSWebView$a */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/webview/JSWebView$a.class */
    public class C4195a implements IJSExecutor {

        /* renamed from: b */
        public int f10073b;

        public C4195a() {
            this.f10073b = 0;
        }

        /* renamed from: a */
        private void m29362a() {
            if (C4117a.m29671b().m29673a(JSWebView.this.getTxId()) != null) {
                JSWebView.this.post(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.webview.JSWebView.a.3
                    @Override // java.lang.Runnable
                    public void run() {
                        C4195a.this.extraClickAd("main");
                    }
                });
            }
        }

        /* renamed from: a */
        private void m29361a(String str) {
            if (JSWebView.this.f10069i != null && JSWebView.this.f10069i.get() != null) {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setDataAndType(Uri.parse(str), "video/*");
                    ((Activity) JSWebView.this.f10069i.get()).startActivity(intent);
                } catch (Exception e) {
                    C10831c.m10520b("JSWebViewExecutor", "cpatureThumbnail error: " + e.getMessage());
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0106  */
        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @android.webkit.JavascriptInterface
        @android.annotation.TargetApi(14)
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void addCalendarEvent(java.lang.String r6, java.lang.String r7, java.lang.String r8, java.lang.String r9, java.lang.String r10) {
            /*
                Method dump skipped, instructions count: 556
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.taiwanmobile.p055pt.adp.view.webview.JSWebView.C4195a.addCalendarEvent(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String):void");
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        public void audioSwitch(int i) {
            AudioManager audioManager = (AudioManager) ((Context) JSWebView.this.f10065e.get()).getSystemService(MimeTypes.BASE_TYPE_AUDIO);
            C10831c.m10518c("JSWebViewExecutor", "audioSwitch(" + i + ")");
            if (i == 0) {
                C10831c.m10518c("JSWebViewExecutor", "currentVol(AUDIO_SOUND) :" + this.f10073b);
                audioManager.setStreamMute(3, false);
            } else if (i == 1) {
                this.f10073b = audioManager.getStreamVolume(3);
                C10831c.m10518c("JSWebViewExecutor", "currentVol(AUDIO_MUTE) :" + this.f10073b);
                audioManager.setStreamMute(3, true);
            }
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        @Deprecated
        public void captureThumbnail() {
            captureThumbnail("capturePhoto");
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        public void captureThumbnail(String str) {
            C10831c.m10518c("JSWebViewExecutor", "captureThumbnail(" + str + ")");
            try {
                Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
                intent.putExtra("elementId", str);
                Activity activity = (Activity) JSWebView.this.f10069i.get();
                if (intent.resolveActivity(activity.getPackageManager()) != null) {
                    activity.startActivityForResult(intent, TWMAdActivity.CAMERA_REQUEST_THUMBNAIL);
                }
            } catch (Exception e) {
                C10831c.m10520b("JSWebViewExecutor", "cpatureThumbnail error: " + e.getMessage());
            }
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        public void clickAd() {
            C10831c.m10518c("JSWebViewExecutor", "clickAd() invoked!!");
            String targetUrl = JSWebView.this.getTargetUrl();
            m29362a();
            if (C4117a.m29671b().m29673a(JSWebView.this.getTxId()) != null) {
                C4117a.AbstractC4119b bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(JSWebView.this.getTxId());
                boolean z = true;
                if (bVar == null || bVar.m29659a(AdFetch.AD_ADTYPE_KEY) == null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("adType is null ? ");
                    if (bVar.m29659a(AdFetch.AD_ADTYPE_KEY) != null) {
                        z = false;
                    }
                    sb.append(z);
                    C10831c.m10518c("JSWebViewExecutor", sb.toString());
                    return;
                }
                int intValue = ((Integer) bVar.m29659a(AdFetch.AD_ADTYPE_KEY)).intValue();
                C10831c.m10518c("JSWebViewExecutor", "adType : " + intValue);
                if (!(intValue == 1 || intValue == 2 || intValue == 4)) {
                    if (intValue != 8) {
                        if (!(intValue == 16 || intValue == 128 || intValue == 256)) {
                            return;
                        }
                    } else if (bVar.m29659a("kie") != null) {
                        openUrl(targetUrl);
                        return;
                    } else {
                        TWMAdActivity.launchAdActivity(JSWebView.this.getTxId());
                        return;
                    }
                }
                openUrl(targetUrl);
            }
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        public void clickInterstitial() {
            clickAd();
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        public void closeWebView() {
            C10831c.m10518c("JSWebViewExecutor", "closeWebView invoked!!)");
            JSWebView.this.releaseResource();
            if (JSWebView.this.getTxId() != null && JSWebView.this.f10068h != null) {
                JSWebView.this.f10068h.closeWebView(JSWebView.this.f10066f);
            }
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        public void countProximityWithinTime(float f) {
            C10831c.m10518c("JSWebViewExecutor", "countProximityWithinTime(" + f + ") invoke !!!");
            if (JSWebView.this.f10064d == null) {
                JSWebView jSWebView = JSWebView.this;
                jSWebView.f10064d = new C4164d((Context) jSWebView.f10065e.get(), JSWebView.this);
            }
            JSWebView.this.f10064d.m29485a(f);
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        public void disableCloseButton() {
            C10831c.m10518c("JSWebViewExecutor", "disableCloseButton invoked!!)");
            if (JSWebView.this.f10068h != null) {
                JSWebView.this.f10068h.disableCloseButton();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x006d, code lost:
            if ("".equals(r7) != false) goto L_0x0070;
         */
        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @android.webkit.JavascriptInterface
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void extraClickAd(java.lang.String r7) {
            /*
                Method dump skipped, instructions count: 243
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.taiwanmobile.p055pt.adp.view.webview.JSWebView.C4195a.extraClickAd(java.lang.String):void");
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        public void flashEffect(float f, int i) {
            C10831c.m10518c("JSWebViewExecutor", "flashEffect invoked");
            if (JSWebView.this.f10063c == null) {
                JSWebView jSWebView = JSWebView.this;
                jSWebView.f10063c = new C4154a((Context) jSWebView.f10065e.get(), JSWebView.this);
            }
            if (JSWebView.this.f10063c.m29504a()) {
                JSWebView.this.f10063c.m29503a(f, i);
            }
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        public void flashSwitch(int i) {
            C10831c.m10518c("JSWebViewExecutor", "flashSwitch invoked");
            if (i == 0 || i == 1) {
                if (JSWebView.this.f10063c == null) {
                    JSWebView jSWebView = JSWebView.this;
                    jSWebView.f10063c = new C4154a((Context) jSWebView.f10065e.get(), JSWebView.this);
                }
                if (JSWebView.this.f10063c.m29504a()) {
                    JSWebView.this.f10063c.m29502a(i);
                    return;
                }
                return;
            }
            C10831c.m10518c("JSWebViewExecutor", "bad input");
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        public void floatDisplay(int i) {
            C10831c.m10518c("JSWebViewExecutor", "floatDisplay invoked");
            if (JSWebView.this.f10065e != null && JSWebView.this.f10065e.get() != null) {
                if (i == 0 || i == 1 || i == 2) {
                    Intent intent = new Intent("com.taiwanmobile.pt.adp.view.TWMFloatAdView");
                    intent.putExtra("data", i);
                    ((Context) JSWebView.this.f10065e.get()).sendBroadcast(intent);
                }
            }
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        @Deprecated
        public String getAdFormat() {
            C10831c.m10518c("JSWebViewExecutor", "getAdFormat invoked!!");
            return JSWebView.this.f10066f != null ? ((TWMAdSize) ((C4117a.AbstractC4119b) C4117a.m29671b().m29673a(JSWebView.this.f10066f)).m29659a("adSize")).getTWMAdSizeConstantString() : FavoriteGroupRealmObject.PARENDID_DELETED;
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        public String getAdTargetUrl() {
            return JSWebView.this.getTargetUrl();
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        @Deprecated
        public String getAdType() {
            C10831c.m10518c("JSWebViewExecutor", "getAdType invoked!!");
            return JSWebView.this.f10066f != null ? String.valueOf(((Integer) ((C4117a.AbstractC4119b) C4117a.m29671b().m29673a(JSWebView.this.f10066f)).m29659a(AdFetch.AD_ADTYPE_KEY)).intValue()) : FavoriteGroupRealmObject.PARENDID_DELETED;
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        public String getFloatInfo() {
            C10831c.m10518c("JSWebViewExecutor", "getFloatInfo invoked");
            String str = "";
            String valueOf = JSWebView.this.f10068h != null ? String.valueOf(JSWebView.this.f10068h.checkFloatAdPosition()) : "";
            if (C4117a.m29671b().m29673a(JSWebView.this.f10066f) != null) {
                str = "\"" + ((String) ((C4117a.AbstractC4119b) C4117a.m29671b().m29673a(JSWebView.this.f10066f)).m29659a("floatType")) + "\"";
            }
            int a = (JSWebView.this.f10069i == null || JSWebView.this.f10069i.get() == null) ? -1 : C10832d.m10514a((Activity) JSWebView.this.f10069i.get());
            String valueOf2 = a != -1 ? String.valueOf(a) : "0";
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(CssParser.BLOCK_START);
            stringBuffer.append("\"floatPosition\"");
            stringBuffer.append(":");
            stringBuffer.append(valueOf);
            stringBuffer.append(",");
            stringBuffer.append("\"floatType\"");
            stringBuffer.append(":");
            stringBuffer.append(str);
            stringBuffer.append(",");
            stringBuffer.append("\"direction\"");
            stringBuffer.append(":");
            stringBuffer.append(valueOf2);
            stringBuffer.append(CssParser.BLOCK_END);
            C10831c.m10520b("JSWebViewExecutor", stringBuffer.toString());
            return stringBuffer.toString();
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        public String getOMInformation() {
            try {
                return ((JSONObject) ((C4117a.AbstractC4119b) C4117a.m29671b().m29673a(JSWebView.this.f10066f)).m29659a("OMSDK")).toString();
            } catch (Exception e) {
                C10831c.m10520b("JSWebViewExecutor", "getOMInformation error: " + e.getMessage());
                return "";
            }
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        public String getSdkVersion() {
            C10831c.m10518c("JSWebViewExecutor", "getSdkVersion");
            return C10830b.f24779a;
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        public void isOverDecibel(float f, int i) {
            C10831c.m10518c("JSWebViewExecutor", "isOverDecibel invoked");
            if (f <= 0.0f) {
                C10831c.m10520b("JSWebViewExecutor", "isOverDecibel error: parameter 'duration' is not bigger than zero.");
            } else if (i <= 0) {
                C10831c.m10520b("JSWebViewExecutor", "isOverDecibel error: parameter 'threshold' is not bigger than zero.");
            } else {
                if (JSWebView.this.f10062b == null) {
                    JSWebView jSWebView = JSWebView.this;
                    jSWebView.f10062b = new C4160c((Context) jSWebView.f10065e.get(), JSWebView.this);
                }
                JSWebView.this.f10062b.m29494a(f, i);
            }
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        public void maxDecibel(float f) {
            C10831c.m10518c("JSWebViewExecutor", "maxDecibel invoked");
            if (f > 0.0f) {
                if (JSWebView.this.f10062b == null) {
                    JSWebView jSWebView = JSWebView.this;
                    jSWebView.f10062b = new C4160c((Context) jSWebView.f10065e.get(), JSWebView.this);
                }
                JSWebView.this.f10062b.m29494a(f, 0);
                return;
            }
            C10831c.m10520b("JSWebViewExecutor", "maxDecibel error: parameter 'duration' is not bigger than zero.");
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        public void microphoneSwitch(int i) {
            C10831c.m10518c("JSWebViewExecutor", "microphoneSwitch invoked");
            if (i == 0) {
                if (JSWebView.this.f10062b == null) {
                    JSWebView jSWebView = JSWebView.this;
                    jSWebView.f10062b = new C4160c((Context) jSWebView.f10065e.get(), JSWebView.this);
                }
                JSWebView.this.f10062b.m29495a();
            }
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        @Deprecated
        public void noticePlay() {
            C10831c.m10518c("JSWebViewExecutor", "noticePlay invoked!!");
            if (JSWebView.this.f10069i == null || JSWebView.this.f10069i.get() == null) {
                JSWebView.this.loadUrl("javascript:try{autoplay('video');}catch(e){}");
            } else {
                ((Activity) JSWebView.this.f10069i.get()).runOnUiThread(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.webview.JSWebView.a.2
                    @Override // java.lang.Runnable
                    public void run() {
                        JSWebView.this.loadUrl("javascript:try{autoplay('video');}catch(e){}");
                    }
                });
            }
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        @Deprecated
        public void noticePlay(String str) {
            noticePlay(MimeTypes.BASE_TYPE_VIDEO, str);
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        public void noticePlay(String str, String str2) {
            C10831c.m10518c("JSWebViewExecutor", "noticePlay(" + str + "|" + str2 + ") invoked!!");
            JSWebView.this.f10067g = str;
            if (C4117a.m29671b().m29673a(JSWebView.this.getTxId()) != null) {
                C4117a.AbstractC4119b bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(JSWebView.this.getTxId());
                Boolean bool = (Boolean) bVar.m29659a("kbnpm");
                if (bool != null) {
                    if (!bool.booleanValue()) {
                        bVar.m29658a("kbnpm", true);
                    } else {
                        return;
                    }
                }
            }
            if (Build.VERSION.SDK_INT < 17) {
                m29361a(str2);
                return;
            }
            final String str3 = "javascript:try{autoplay('" + str + "');}catch(e){}";
            C10831c.m10518c("JSWebViewExecutor", "urlStr : " + str3);
            if (JSWebView.this.f10069i == null || JSWebView.this.f10069i.get() == null) {
                JSWebView.this.loadUrl(str3);
            } else {
                ((Activity) JSWebView.this.f10069i.get()).runOnUiThread(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.webview.JSWebView.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        JSWebView.this.loadUrl(str3);
                    }
                });
            }
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        public void openUrl(String str) {
            C10831c.m10518c("JSWebViewExecutor", "openUrl(" + str + ") invoked!!)");
            JSWebView.this.handleAdListenerCallback();
            if (C4117a.m29671b().m29673a(JSWebView.this.getTxId()) != null) {
                C4117a.AbstractC4119b bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(JSWebView.this.getTxId());
                if (bVar == null || bVar.m29659a("isOpenChrome") == null) {
                    JSWebView.this.m29371a(str, false);
                    return;
                }
                JSWebView.this.m29371a(str, ((Boolean) bVar.m29659a("isOpenChrome")).booleanValue());
            }
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        public void passElementOffset(String str) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (JSWebView.this.f10068h != null && (JSWebView.this.f10068h instanceof InReadIRBehavior)) {
                    ((InReadIRBehavior) JSWebView.this.f10068h).passElementOffset(jSONObject.getDouble(TtmlNode.LEFT), jSONObject.getDouble("top"), jSONObject.getDouble(TtmlNode.RIGHT), jSONObject.getDouble("bottom"));
                }
            } catch (Exception e) {
                C10831c.m10520b("JSWebViewExecutor", "passElementOffset parse error." + e.getMessage());
            }
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        public void reportVideoProgress(String str, String str2) {
            String str3;
            C10831c.m10518c("JSWebViewExecutor", "reportVideoProgress(" + str + "/" + str2 + ") invoked!!");
            if (str != null && str2 != null) {
                if ("0".equals(str) || "1".equals(str) || "2".equals(str)) {
                    try {
                        int parseInt = Integer.parseInt(str2) * 1000;
                        C10831c.m10518c("JSWebViewExecutor", "reportVideoProgress(" + str + "/" + parseInt + ") invoked!!");
                        C4117a.AbstractC4119b bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(JSWebView.this.getTxId());
                        if (bVar == null || ((str3 = (String) bVar.m29659a("videoReportUrl")) == null && !"".equals(str3))) {
                            C10831c.m10518c("JSWebViewExecutor", "reportVideoProgress with default api.");
                            C4127a.m29649a((Context) JSWebView.this.f10065e.get(), JSWebView.this.getTxId(), "I", str, parseInt);
                            return;
                        }
                        C10831c.m10518c("JSWebViewExecutor", "reportVideoProgress with agent api.");
                        C4127a.m29641a(str3, (Context) JSWebView.this.f10065e.get(), JSWebView.this.getTxId(), "I", str, parseInt);
                    } catch (Exception e) {
                        C10831c.m10520b("JSWebViewExecutor", "reportVideoProgress Exception: " + e.getMessage());
                    }
                }
            }
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        public void requestProximityWithTimeAndTouches(float f, int i) {
            C10831c.m10518c("JSWebViewExecutor", "requestProximityWithTimeAndTouches(" + f + UserProfile.CARD_CATE_SEPARATOR + i + ") invoke !!!");
            if (JSWebView.this.f10064d == null) {
                JSWebView jSWebView = JSWebView.this;
                jSWebView.f10064d = new C4164d((Context) jSWebView.f10065e.get(), JSWebView.this);
            }
            JSWebView.this.f10064d.m29484a(f, i);
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        public void setRequestedOrientation(int i) {
            C10831c.m10518c("JSWebViewExecutor", "setRequestedOrientation(" + i + ")");
            if (JSWebView.this.f10069i == null || JSWebView.this.f10069i.get() == null) {
                C10831c.m10520b("JSWebViewExecutor", "setRequestedOrientation failed. Reference of activity is null");
            } else {
                ((Activity) JSWebView.this.f10069i.get()).setRequestedOrientation(i);
            }
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        @Deprecated
        public void vibrate(long j) {
            C10831c.m10518c("JSWebViewExecutor", "vibration -- " + j + " invoked!!");
            if (JSWebView.this.f10065e != null && JSWebView.this.f10065e.get() != null) {
                try {
                    if (((Context) JSWebView.this.f10065e.get()).checkCallingOrSelfPermission("android.permission.VIBRATE") != 0) {
                        C10831c.m10518c("JSWebViewExecutor", "no vibration permission granted!!");
                    } else {
                        ((Vibrator) ((Context) JSWebView.this.f10065e.get()).getSystemService("vibrator")).vibrate(j);
                    }
                } catch (Exception e) {
                    C10831c.m10520b("JSWebViewExecutor", "vibrate Exception: " + e.getMessage());
                }
            }
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor
        @JavascriptInterface
        public void vibrate2(long[] jArr) {
            C10831c.m10518c("JSWebViewExecutor", "vibration2 -- invoked!!");
            if (JSWebView.this.f10065e != null && JSWebView.this.f10065e.get() != null) {
                try {
                    if (((Context) JSWebView.this.f10065e.get()).checkCallingOrSelfPermission("android.permission.VIBRATE") != 0) {
                        C10831c.m10518c("JSWebViewExecutor", "no vibration permission granted!!");
                    } else {
                        ((Vibrator) ((Context) JSWebView.this.f10065e.get()).getSystemService("vibrator")).vibrate(jArr, -1);
                    }
                } catch (Exception e) {
                    C10831c.m10520b("JSWebViewExecutor", "vibrate2 Exception: " + e.getMessage());
                }
            }
        }
    }

    public JSWebView(Activity activity) {
        super(activity);
        this.f10061a = null;
        this.f10062b = null;
        this.f10063c = null;
        this.f10064d = null;
        this.f10065e = null;
        this.f10066f = null;
        this.f10067g = null;
        this.f10068h = null;
        this.f10069i = null;
        this.f10070j = null;
        this.f10065e = new WeakReference<>(activity);
        this.f10069i = new WeakReference<>(activity);
        m29380a();
    }

    public JSWebView(Context context) {
        super(context);
        this.f10061a = null;
        this.f10062b = null;
        this.f10063c = null;
        this.f10064d = null;
        this.f10065e = null;
        this.f10066f = null;
        this.f10067g = null;
        this.f10068h = null;
        this.f10069i = null;
        this.f10070j = null;
        this.f10065e = new WeakReference<>(context);
        m29380a();
    }

    public JSWebView(MutableContextWrapper mutableContextWrapper) {
        super(mutableContextWrapper);
        this.f10061a = null;
        this.f10062b = null;
        this.f10063c = null;
        this.f10064d = null;
        this.f10065e = null;
        this.f10066f = null;
        this.f10067g = null;
        this.f10068h = null;
        this.f10069i = null;
        this.f10070j = null;
        this.f10065e = new WeakReference<>(mutableContextWrapper.getBaseContext());
        this.f10069i = new WeakReference<>((Activity) mutableContextWrapper.getBaseContext());
        this.f10070j = new WeakReference<>(mutableContextWrapper);
        m29380a();
    }

    @SuppressLint({"NewApi"})
    /* renamed from: a */
    private void m29380a() {
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setCacheMode(2);
        if (Build.VERSION.SDK_INT >= 17) {
            settings.setMediaPlaybackRequiresUserGesture(false);
        }
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        setLongClickable(false);
        try {
            getClass().getMethod("addJavascriptInterface", Object.class, String.class).invoke(this, new C4195a(), IJSExecutor.JS_FUNCTION_GROUP);
        } catch (Exception e) {
            C10831c.m10520b("JSWebView", "addJavascriptInterface error: " + e.getMessage());
        }
        setWebChromeClient(new WebChromeClientBase(this.f10065e.get()));
        setWebViewClient(new WebViewClientBase(getTxId()));
        setBackgroundColor(0);
        setVisibility(8);
    }

    @SuppressLint({"NewApi"})
    /* renamed from: a */
    private void m29379a(WebView webView, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            C10831c.m10518c("JSWebView", "SDK Call: " + str);
            webView.evaluateJavascript(str, new ValueCallback<String>() { // from class: com.taiwanmobile.pt.adp.view.webview.JSWebView.1
                /* renamed from: a */
                public void onReceiveValue(String str2) {
                }
            });
            return;
        }
        C10831c.m10518c("JSWebView", "Loading url: " + str);
        webView.loadUrl("javascript:" + str);
    }

    /* renamed from: a */
    private void m29372a(String str, String str2) {
        this.f10061a = str;
        this.f10066f = str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29371a(String str, boolean z) {
        Intent intent = new Intent();
        intent.setFlags(268435456);
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        if (z) {
            intent.setPackage(CustomTabsHelper.STABLE_PACKAGE);
        }
        try {
            this.f10065e.get().startActivity(intent);
        } catch (ActivityNotFoundException e) {
            C10831c.m10520b("JSWebView", "openTargetUrl ActivityNotFoundException: Device has no Chrome or not Http !!");
            intent.setPackage(null);
            this.f10065e.get().startActivity(intent);
        } catch (Exception e2) {
            C10831c.m10520b("JSWebView", "openTargetUrl Exception: " + e2.getMessage());
            intent.setPackage(null);
            this.f10065e.get().startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getTargetUrl() {
        return this.f10061a;
    }

    public void clearWebView() {
        C10831c.m10518c("JSWebView", "clearWebView invoke");
        stopLoading();
        getSettings().setJavaScriptEnabled(false);
        clearHistory();
        clearCache(true);
        setWebViewClient(null);
        onPause();
        removeAllViews();
        destroyDrawingCache();
        try {
            ViewParent parent = getParent();
            if (parent != null) {
                ((ViewGroup) parent).removeView(this);
            }
            destroy();
        } catch (Exception e) {
            C10831c.m10520b("JSWebView", "clearWebView " + e.getMessage());
        }
    }

    public String getTxId() {
        return this.f10066f;
    }

    public void handleAdListenerCallback() {
        TWMAd tWMAd;
        if (getTxId() != null && C4117a.m29671b().m29673a(getTxId()) != null) {
            C4117a.AbstractC4119b bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(getTxId());
            TWMAdViewListener tWMAdViewListener = null;
            if (bVar.m29659a("adListener") == null || bVar.m29659a(CatWalkWebPayload.CATWALK_AD_KEY) == null) {
                tWMAd = null;
            } else {
                tWMAdViewListener = (TWMAdViewListener) bVar.m29659a("adListener");
                tWMAd = (TWMAd) bVar.m29659a(CatWalkWebPayload.CATWALK_AD_KEY);
            }
            if (bVar.m29659a("kie") != null || (bVar instanceof C4117a.C4122e)) {
                if (tWMAdViewListener != null && tWMAd != null) {
                    tWMAdViewListener.onLeaveApplication(tWMAd);
                }
            } else if (tWMAdViewListener != null && tWMAd != null) {
                tWMAdViewListener.onPresentScreen(tWMAd);
                tWMAdViewListener.onLeaveApplication(tWMAd);
                bVar.m29658a("lam", Boolean.TRUE);
                C4117a.m29671b().m29672a(getTxId(), bVar);
            }
        }
    }

    public void handleNarrow(int i) {
        WeakReference<Context> weakReference = this.f10065e;
        if (weakReference != null && weakReference.get() != null) {
            loadUrl("javascript:try{handleNarrow(" + i + ");}catch(e){}");
        }
    }

    @SuppressLint({"NewApi"})
    public void injectJavaScript(String str) {
        m29379a((WebView) this, str);
    }

    public void loadContent(String str, String str2, String str3) {
        C10831c.m10518c("JSWebView", "loadContent(" + str + "|" + str2 + "|" + str3 + ") invoked!!");
        setVisibility(0);
        m29372a(str2, str3);
        loadUrl(str);
    }

    public void loadHTMLWithBaseUrl(String str, String str2, String str3, String str4) {
        C10831c.m10518c("JSWebView", "loadHTML(" + str2 + "|" + str3 + "|" + str4 + ") invoked!!");
        setVisibility(0);
        m29372a(str3, str4);
        String str5 = str2;
        if (str2 != null) {
            String str6 = MraidJS.MRAID_JS;
            str5 = str2;
            if (str2.contains(MraidJS.MRAID_JS)) {
                C4117a.AbstractC4119b bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(str4);
                str6 = str6;
                if (bVar != null) {
                    String str7 = (String) bVar.m29659a("mraidUrl");
                    if (str7 != null) {
                        str6 = str7;
                    }
                    bVar.m29658a("isMraid", true);
                }
                Matcher matcher = Pattern.compile("<script\\s+[^>]*\\bsrc\\s*=\\s*([\\\\\"\\\\'])mraid\\.js\\1[^>]*>\\s*</script>\\n*").matcher(str2);
                str5 = matcher.replaceAll("<script type='text/javascript' charset='utf-8' src='" + str6 + "'></script>");
            }
        }
        loadDataWithBaseURL(str, str5, "text/html", "UTF-8", null);
    }

    public void passInReadInfo(String str) {
        C4117a.C4121d dVar;
        if (str != null && (dVar = (C4117a.C4121d) C4117a.m29671b().m29673a(str)) != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("impUrl", dVar.m29659a("impUrl"));
                jSONObject.put("trackingUrl", dVar.m29659a("trackingUrl"));
                JSONObject jSONObject2 = (JSONObject) dVar.m29659a(FullAdType.VAST);
                if (jSONObject2 != null) {
                    JSONObject jSONObject3 = (JSONObject) jSONObject2.get("adParameters");
                    jSONObject3.put("duration", jSONObject2.get("duration"));
                    jSONObject2.put("adParameters", jSONObject3);
                    jSONObject.put(FullAdType.VAST, dVar.m29659a(FullAdType.VAST));
                }
                C10831c.m10518c("JSWebView", jSONObject.toString());
                injectJavaScript("setInReadInfo(" + jSONObject.toString() + ");");
            } catch (Exception e) {
                C10831c.m10520b("JSWebView", "passInReadInfo error: " + e.getMessage());
            }
        }
    }

    public void pauseVideo() {
        String str;
        if (this.f10067g != null) {
            str = "javascript:try{stopVideo('" + this.f10067g + "');}catch(e){}";
        } else {
            str = "javascript:try{stopVideo('video');}catch(e){}";
        }
        C10831c.m10518c("JSWebView", "pauseVideo" + str);
        loadUrl(str);
    }

    public void releaseResource() {
        C4160c cVar = this.f10062b;
        if (cVar != null) {
            cVar.m29495a();
        }
        C4154a aVar = this.f10063c;
        if (aVar != null) {
            aVar.m29501b();
        }
        C4164d dVar = this.f10064d;
        if (dVar != null) {
            dVar.m29486a();
        }
    }

    public void setActivity(Activity activity) {
        this.f10069i = new WeakReference<>(activity);
        this.f10065e = new WeakReference<>(activity);
        WeakReference<MutableContextWrapper> weakReference = this.f10070j;
        if (weakReference != null) {
            weakReference.get().setBaseContext(activity);
        }
    }

    public void setIRBehavior(IRBehavior iRBehavior) {
        this.f10068h = iRBehavior;
    }
}
