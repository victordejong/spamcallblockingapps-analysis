package com.inmobi.rendering;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.URLUtil;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.AbsoluteLayout;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.android.volley.Request;
import com.google.common.collect.RegularImmutableMap;
import com.inmobi.ads.AbstractC8213cb;
import com.inmobi.ads.AdContainer;
import com.inmobi.ads.C8078ad;
import com.inmobi.ads.C8148bd;
import com.inmobi.ads.C8152be;
import com.inmobi.ads.C8185br;
import com.inmobi.ads.C8186bs;
import com.inmobi.ads.C8197c;
import com.inmobi.ads.C8215cc;
import com.inmobi.ads.C8297o;
import com.inmobi.ads.C8310v;
import com.inmobi.ads.NativeTracker;
import com.inmobi.ads.NativeVideoWrapper;
import com.inmobi.ads.p500a.AbstractC8065g;
import com.inmobi.ads.p500a.C8051b;
import com.inmobi.commons.core.network.C8383c;
import com.inmobi.commons.core.network.C8384d;
import com.inmobi.commons.core.network.C8385e;
import com.inmobi.commons.core.p513e.C8366b;
import com.inmobi.commons.core.utilities.C8396b;
import com.inmobi.commons.core.utilities.C8407d;
import com.inmobi.commons.core.utilities.Logger;
import com.inmobi.commons.core.utilities.p516b.C8399c;
import com.inmobi.commons.p508a.C8326a;
import com.inmobi.p497a.C8002n;
import com.inmobi.rendering.mraid.C8482a;
import com.inmobi.rendering.mraid.C8483b;
import com.inmobi.rendering.mraid.C8484c;
import com.inmobi.rendering.mraid.C8485d;
import com.inmobi.rendering.mraid.C8487e;
import com.inmobi.rendering.mraid.C8489f;
import com.inmobi.rendering.mraid.C8490g;
import com.inmobi.rendering.mraid.C8491h;
import com.inmobi.rendering.mraid.MediaRenderView;
import com.inmobi.rendering.mraid.MraidMediaProcessor;
import com.integralads.avid.library.mopub.video.AvidVideoPlaybackListenerImpl;
import com.mopub.common.AdType;
import com.mopub.mobileads.resource.DrawableConstants;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.net.URISyntaxException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p372f.p373a.p374a.p375a.p381m.AbstractC6427a;
/* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/RenderView.class */
public final class RenderView extends WebView implements AdContainer, AbstractC8462b {

    /* renamed from: a */
    public static final AbstractC8440a f32746a = new AbstractC8440a() { // from class: com.inmobi.rendering.RenderView.1
        @Override // com.inmobi.rendering.RenderView.AbstractC8440a
        /* renamed from: E */
        public final void mo5551E() {
        }

        @Override // com.inmobi.rendering.RenderView.AbstractC8440a
        /* renamed from: a */
        public final void mo5550a(RenderView renderView) {
        }

        @Override // com.inmobi.rendering.RenderView.AbstractC8440a
        /* renamed from: a */
        public final void mo5549a(HashMap<Object, Object> hashMap) {
        }

        @Override // com.inmobi.rendering.RenderView.AbstractC8440a
        /* renamed from: b */
        public final void mo5548b(RenderView renderView) {
        }

        @Override // com.inmobi.rendering.RenderView.AbstractC8440a
        /* renamed from: b */
        public final void mo5547b(String str, Map<String, Object> map) {
        }

        @Override // com.inmobi.rendering.RenderView.AbstractC8440a
        /* renamed from: b */
        public final void mo5546b(HashMap<Object, Object> hashMap) {
        }

        @Override // com.inmobi.rendering.RenderView.AbstractC8440a
        /* renamed from: c */
        public final void mo5545c(RenderView renderView) {
        }

        @Override // com.inmobi.rendering.RenderView.AbstractC8440a
        /* renamed from: d */
        public final void mo5544d(RenderView renderView) {
        }

        @Override // com.inmobi.rendering.RenderView.AbstractC8440a
        /* renamed from: u */
        public final void mo5543u() {
        }

        @Override // com.inmobi.rendering.RenderView.AbstractC8440a
        /* renamed from: w */
        public final void mo5542w() {
        }

        @Override // com.inmobi.rendering.RenderView.AbstractC8440a
        /* renamed from: y */
        public final void mo5541y() {
        }

        @Override // com.inmobi.rendering.RenderView.AbstractC8440a
        /* renamed from: z */
        public final void mo5540z() {
        }
    };

    /* renamed from: w */
    public static final String f32747w = RenderView.class.getSimpleName();

    /* renamed from: A */
    public WeakReference<ViewGroup> f32748A;

    /* renamed from: B */
    public C8491h f32749B;

    /* renamed from: C */
    public C8463c f32750C;

    /* renamed from: D */
    public C8197c f32751D;

    /* renamed from: F */
    public boolean f32753F;

    /* renamed from: G */
    public C8482a f32754G;

    /* renamed from: H */
    public C8490g f32755H;

    /* renamed from: I */
    public C8489f f32756I;

    /* renamed from: J */
    public JSONObject f32757J;

    /* renamed from: K */
    public JSONObject f32758K;

    /* renamed from: Q */
    public View f32764Q;

    /* renamed from: R */
    public WebChromeClient.CustomViewCallback f32765R;

    /* renamed from: V */
    public String f32769V;

    /* renamed from: W */
    public String f32770W;

    /* renamed from: aa */
    public AdContainer f32771aa;

    /* renamed from: ab */
    public C8297o f32772ab;

    /* renamed from: ad */
    public boolean f32774ad;

    /* renamed from: ae */
    public Set<C8185br> f32775ae;

    /* renamed from: af */
    public AbstractC8213cb f32776af;

    /* renamed from: b */
    public WeakReference<Activity> f32780b;

    /* renamed from: c */
    public AbstractC8440a f32781c;

    /* renamed from: e */
    public AdContainer.RenderingProperties f32783e;

    /* renamed from: f */
    public C8483b f32784f;

    /* renamed from: g */
    public C8487e f32785g;

    /* renamed from: h */
    public MraidMediaProcessor f32786h;

    /* renamed from: i */
    public boolean f32787i;

    /* renamed from: s */
    public boolean f32797s;

    /* renamed from: t */
    public AbstractC8441a f32798t;

    /* renamed from: u */
    public boolean f32799u;

    /* renamed from: x */
    public RenderView f32801x;

    /* renamed from: y */
    public WeakReference<Activity> f32802y;

    /* renamed from: z */
    public boolean f32803z = false;

    /* renamed from: d */
    public String f32782d = "Default";

    /* renamed from: E */
    public List<String> f32752E = new ArrayList();

    /* renamed from: j */
    public boolean f32788j = true;

    /* renamed from: k */
    public boolean f32789k = true;

    /* renamed from: l */
    public boolean f32790l = false;

    /* renamed from: L */
    public boolean f32759L = true;

    /* renamed from: m */
    public boolean f32791m = false;

    /* renamed from: n */
    public boolean f32792n = false;

    /* renamed from: o */
    public boolean f32793o = false;

    /* renamed from: p */
    public boolean f32794p = false;

    /* renamed from: q */
    public String f32795q = null;

    /* renamed from: M */
    public boolean f32760M = false;

    /* renamed from: r */
    public AtomicBoolean f32796r = new AtomicBoolean(false);

    /* renamed from: N */
    public final Object f32761N = new Object();

    /* renamed from: O */
    public final Object f32762O = new Object();

    /* renamed from: P */
    public boolean f32763P = true;

    /* renamed from: S */
    public int f32766S = -1;

    /* renamed from: T */
    public boolean f32767T = false;

    /* renamed from: U */
    public long f32768U = Long.MIN_VALUE;

    /* renamed from: ac */
    public boolean f32773ac = false;

    /* renamed from: ag */
    public final AdContainer.AbstractC8007a f32777ag = new AdContainer.AbstractC8007a() { // from class: com.inmobi.rendering.RenderView.3
        @Override // com.inmobi.ads.AdContainer.AbstractC8007a
        /* renamed from: a */
        public final void mo5558a() {
            String unused = RenderView.f32747w;
            if (RenderView.this.f32781c != null) {
                RenderView.this.f32781c.mo5541y();
            }
        }

        @Override // com.inmobi.ads.AdContainer.AbstractC8007a
        /* renamed from: a */
        public final void mo5557a(Object obj) {
            String unused = RenderView.f32747w;
            if (AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE == RenderView.this.f32783e.f31277a) {
                if (RenderView.this.f32801x != null) {
                    RenderView.this.f32801x.setAndUpdateViewState("Expanded");
                } else {
                    RenderView.this.setAndUpdateViewState("Expanded");
                }
                RenderView.this.f32797s = false;
            }
            if (RenderView.this.f32781c != null) {
                RenderView.this.f32781c.mo5545c(RenderView.this);
            }
        }

        @Override // com.inmobi.ads.AdContainer.AbstractC8007a
        /* renamed from: b */
        public final void mo5556b(Object obj) {
            String unused = RenderView.f32747w;
            if (AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE == RenderView.this.f32783e.f31277a) {
                RenderView.this.setAndUpdateViewState("Default");
                if (RenderView.this.f32801x != null) {
                    RenderView.this.f32801x.setAndUpdateViewState("Default");
                }
            } else if ("Default".equals(RenderView.this.f32782d)) {
                RenderView.this.setAndUpdateViewState("Hidden");
            }
            if (RenderView.this.f32781c != null) {
                RenderView.this.f32781c.mo5544d(RenderView.this);
            }
        }
    };

    /* renamed from: ah */
    public final WebViewClient f32778ah = new WebViewClient() { // from class: com.inmobi.rendering.RenderView.4
        @Override // android.webkit.WebViewClient
        public final void onLoadResource(WebView webView, String str) {
            String unused = RenderView.f32747w;
            String url = RenderView.this.getUrl();
            if (str != null && url != null && str.contains("/mraid.js") && !url.equals("about:blank") && !url.startsWith("file:")) {
                if (!RenderView.this.f32752E.contains(url)) {
                    RenderView.this.f32752E.add(url);
                }
                if (!RenderView.this.f32760M) {
                    RenderView.this.f32760M = true;
                    String unused2 = RenderView.f32747w;
                    RenderView renderView = RenderView.this;
                    renderView.m5578d(renderView.getMraidJsString());
                }
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            String unused = RenderView.f32747w;
            if (RenderView.this.f32752E.contains(str) && !RenderView.this.f32760M) {
                RenderView.this.f32760M = true;
                String unused2 = RenderView.f32747w;
                RenderView renderView = RenderView.this;
                renderView.m5578d(renderView.getMraidJsString());
            }
            if ("Loading".equals(RenderView.this.f32782d)) {
                RenderView.this.f32781c.mo5550a(RenderView.this);
                RenderView.m5562k(RenderView.this);
                if (RenderView.this.f32801x != null) {
                    RenderView.this.setAndUpdateViewState("Expanded");
                } else {
                    RenderView.this.setAndUpdateViewState("Default");
                }
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            String unused = RenderView.f32747w;
            RenderView.this.f32760M = false;
            RenderView.this.setAndUpdateViewState("Loading");
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            String unused = RenderView.f32747w;
            StringBuilder sb = new StringBuilder("Loading error. Error code:");
            sb.append(i);
            sb.append(" Error msg:");
            sb.append(str);
            sb.append(" Failing url:");
            sb.append(str2);
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            String unused = RenderView.f32747w;
            StringBuilder sb = new StringBuilder("Loading error. Error code:");
            sb.append(webResourceError.getErrorCode());
            sb.append(" Error msg:");
            sb.append((Object) webResourceError.getDescription());
            sb.append(" Failing url:");
            sb.append(webResourceRequest.getUrl());
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            String unused = RenderView.f32747w;
            if (Build.VERSION.SDK_INT < 21) {
                return false;
            }
            String uri = webResourceRequest.getUrl().toString();
            if (RenderView.this.f32787i) {
                webView.loadUrl(uri);
                return true;
            } else if (RenderView.this.m5576e() || RenderView.this.f32803z || "about:blank".equals(uri)) {
                String unused2 = RenderView.f32747w;
                StringBuilder sb = new StringBuilder("Placement type: ");
                sb.append(RenderView.this.f32783e.f31277a);
                sb.append(" url:");
                sb.append(uri);
                if (AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_FULLSCREEN != RenderView.this.f32783e.f31277a) {
                    String unused3 = RenderView.f32747w;
                    if (C8396b.m5698a(RenderView.this.getContainerContext(), uri, null) == null) {
                        return true;
                    }
                    RenderView.this.getListener().mo5540z();
                    return true;
                } else if (!RenderView.this.f32803z || !C8396b.m5696a(uri)) {
                    String unused4 = RenderView.f32747w;
                    if (C8396b.m5698a(RenderView.this.getContainerContext(), uri, null) == null) {
                        return true;
                    }
                    RenderView.this.getListener().mo5540z();
                    return true;
                } else {
                    String unused5 = RenderView.f32747w;
                    return false;
                }
            } else {
                RenderView.this.m5583c("redirect");
                return true;
            }
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            String unused = RenderView.f32747w;
            if (RenderView.this.f32787i) {
                webView.loadUrl(str);
                return true;
            } else if (RenderView.this.m5576e() || RenderView.this.f32803z || "about:blank".equals(str)) {
                String unused2 = RenderView.f32747w;
                StringBuilder sb = new StringBuilder("Placement type: ");
                sb.append(RenderView.this.f32783e.f31277a);
                sb.append(" url:");
                sb.append(str);
                if (AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_FULLSCREEN != RenderView.this.f32783e.f31277a) {
                    String unused3 = RenderView.f32747w;
                    if (C8396b.m5698a(RenderView.this.getContainerContext(), str, null) == null) {
                        return true;
                    }
                    RenderView.this.getListener().mo5540z();
                    return true;
                } else if (!RenderView.this.f32803z || !C8396b.m5696a(str)) {
                    String unused4 = RenderView.f32747w;
                    if (C8396b.m5698a(RenderView.this.getContainerContext(), str, null) == null) {
                        return true;
                    }
                    RenderView.this.getListener().mo5540z();
                    return true;
                } else {
                    String unused5 = RenderView.f32747w;
                    return false;
                }
            } else {
                RenderView.this.m5583c("redirect");
                return true;
            }
        }
    };

    /* renamed from: ai */
    public final WebChromeClient f32779ai = new WebChromeClient() { // from class: com.inmobi.rendering.RenderView.5
        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public void m5555a() {
            if (RenderView.this.f32764Q != null) {
                if (RenderView.this.f32765R != null) {
                    RenderView.this.f32765R.onCustomViewHidden();
                    RenderView.this.f32765R = null;
                }
                if (RenderView.this.f32764Q != null && RenderView.this.f32764Q.getParent() != null) {
                    ((ViewGroup) RenderView.this.f32764Q.getParent()).removeView(RenderView.this.f32764Q);
                    RenderView.this.f32764Q = null;
                }
            }
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            StringBuilder sb = new StringBuilder();
            sb.append(consoleMessage.message());
            sb.append(" -- From line ");
            sb.append(consoleMessage.lineNumber());
            sb.append(" of ");
            sb.append(consoleMessage.sourceId());
            String unused = RenderView.f32747w;
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public final void onGeolocationPermissionsShowPrompt(final String str, final GeolocationPermissions.Callback callback) {
            if (!(RenderView.this.f32780b == null || RenderView.this.f32780b.get() == null)) {
                new AlertDialog.Builder((Context) RenderView.this.f32780b.get()).setTitle("Location Permission").setMessage("Allow location access").setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.inmobi.rendering.RenderView.5.7
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        callback.invoke(str, true, false);
                    }
                }).setNegativeButton(17039360, new DialogInterface.OnClickListener() { // from class: com.inmobi.rendering.RenderView.5.6
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        callback.invoke(str, false, false);
                    }
                }).create().show();
            }
            super.onGeolocationPermissionsShowPrompt(str, callback);
        }

        @Override // android.webkit.WebChromeClient
        public final void onHideCustomView() {
            m5555a();
            super.onHideCustomView();
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onJsAlert(WebView webView, String str, String str2, final JsResult jsResult) {
            String unused = RenderView.f32747w;
            StringBuilder sb = new StringBuilder("jsAlert called with: ");
            sb.append(str2);
            sb.append(str);
            if (!RenderView.m5602a(RenderView.this, jsResult)) {
                return true;
            }
            Activity fullScreenActivity = RenderView.this.getFullScreenActivity();
            if (fullScreenActivity != null) {
                new AlertDialog.Builder(fullScreenActivity).setMessage(str2).setTitle(str).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.inmobi.rendering.RenderView.5.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        jsResult.confirm();
                    }
                }).setCancelable(false).create().show();
                return true;
            }
            jsResult.cancel();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onJsConfirm(WebView webView, String str, String str2, final JsResult jsResult) {
            String unused = RenderView.f32747w;
            StringBuilder sb = new StringBuilder("jsConfirm called with: ");
            sb.append(str2);
            sb.append(str);
            if (!RenderView.m5602a(RenderView.this, jsResult)) {
                return true;
            }
            Activity fullScreenActivity = RenderView.this.getFullScreenActivity();
            if (fullScreenActivity != null) {
                new AlertDialog.Builder(fullScreenActivity).setMessage(str2).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.inmobi.rendering.RenderView.5.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        jsResult.confirm();
                    }
                }).setNegativeButton(17039360, new DialogInterface.OnClickListener() { // from class: com.inmobi.rendering.RenderView.5.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        jsResult.cancel();
                    }
                }).create().show();
                return true;
            }
            jsResult.cancel();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            String unused = RenderView.f32747w;
            StringBuilder sb = new StringBuilder("jsPrompt called with: ");
            sb.append(str2);
            sb.append(str);
            if (!RenderView.m5602a(RenderView.this, jsPromptResult)) {
                return true;
            }
            if (RenderView.this.getFullScreenActivity() != null) {
                return false;
            }
            jsPromptResult.cancel();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            if (RenderView.this.f32780b != null && RenderView.this.f32780b.get() != null) {
                RenderView.this.f32764Q = view;
                RenderView.this.f32765R = customViewCallback;
                RenderView.this.f32764Q.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.rendering.RenderView.5.4
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view2, MotionEvent motionEvent) {
                        return true;
                    }
                });
                FrameLayout frameLayout = (FrameLayout) ((Activity) RenderView.this.f32780b.get()).findViewById(16908290);
                RenderView.this.f32764Q.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
                frameLayout.addView(RenderView.this.f32764Q, new AbsoluteLayout.LayoutParams(-1, -1, 0, 0));
                RenderView.this.f32764Q.requestFocus();
                View view2 = RenderView.this.f32764Q;
                view2.setOnKeyListener(new View.OnKeyListener() { // from class: com.inmobi.rendering.RenderView.5.5
                    @Override // android.view.View.OnKeyListener
                    public final boolean onKey(View view3, int i, KeyEvent keyEvent) {
                        if (4 != keyEvent.getKeyCode() || keyEvent.getAction() != 0) {
                            return false;
                        }
                        String unused = RenderView.f32747w;
                        m5555a();
                        return true;
                    }
                });
                view2.setFocusable(true);
                view2.setFocusableInTouchMode(true);
                view2.requestFocus();
            }
        }
    };

    /* renamed from: v */
    public final AbstractC8065g f32800v = new AbstractC8065g() { // from class: com.inmobi.rendering.RenderView.6
        @Override // com.inmobi.ads.p500a.AbstractC8065g
        /* renamed from: a */
        public final void mo5553a(C8051b bVar) {
            if (bVar.f31515g != null && bVar.f31509a.size() > 0) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("url", bVar.f31509a.get(0).f31492d);
                    jSONObject.put("reason", bVar.f31509a.get(0).f31500l);
                } catch (JSONException e) {
                }
                String str = "sendSaveContentResult(\"saveContent_" + bVar.f31516h + "\", 'failed', \"" + jSONObject.toString().replace("\"", "\\\"") + "\");";
                String unused = RenderView.f32747w;
                RenderView.this.m5597a(bVar.f31515g, str);
            }
        }

        @Override // com.inmobi.ads.p500a.AbstractC8065g
        /* renamed from: b */
        public final void mo5552b(C8051b bVar) {
            if (bVar.f31515g != null && bVar.f31509a.size() > 0) {
                String unused = RenderView.f32747w;
                RenderView.this.m5597a(bVar.f31515g, "sendSaveContentResult(\"saveContent_" + bVar.f31516h + "\", 'success', \"" + bVar.f31509a.get(0).f31499k + "\");");
            }
        }
    };

    /* renamed from: com.inmobi.rendering.RenderView$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/RenderView$a.class */
    public interface AbstractC8440a {
        /* renamed from: E */
        void mo5551E();

        /* renamed from: a */
        void mo5550a(RenderView renderView);

        /* renamed from: a */
        void mo5549a(HashMap<Object, Object> hashMap);

        /* renamed from: b */
        void mo5548b(RenderView renderView);

        /* renamed from: b */
        void mo5547b(String str, Map<String, Object> map);

        /* renamed from: b */
        void mo5546b(HashMap<Object, Object> hashMap);

        /* renamed from: c */
        void mo5545c(RenderView renderView);

        /* renamed from: d */
        void mo5544d(RenderView renderView);

        /* renamed from: u */
        void mo5543u();

        /* renamed from: w */
        void mo5542w();

        /* renamed from: y */
        void mo5541y();

        /* renamed from: z */
        void mo5540z();
    }

    public RenderView(Context context, AdContainer.RenderingProperties renderingProperties, Set<C8185br> set, String str) {
        super(context.getApplicationContext());
        if (context instanceof Activity) {
            this.f32802y = new WeakReference<>((Activity) context);
        }
        this.f32801x = null;
        this.f32783e = renderingProperties;
        this.f32797s = false;
        this.f32775ae = set;
        this.f32770W = str;
        setReferenceContainer(this);
        this.f32771aa = this;
        this.f32772ab = new C8297o();
        this.f32774ad = false;
    }

    /* renamed from: a */
    private void m5595a(String str, String str2, String str3, String str4, boolean z) {
        while (true) {
            try {
                C8396b.m5695b(getContainerContext(), str3);
                HashMap hashMap = new HashMap();
                hashMap.put("command", "openExternal");
                hashMap.put("scheme", C8186bs.m6242a(str2));
                this.f32781c.mo5547b("CreativeInvokedAction", hashMap);
                getListener().mo5540z();
                m5597a(str2, "broadcastEvent('" + str + "Successful','" + str3 + "');");
                return;
            } catch (ActivityNotFoundException e) {
                if (z) {
                    m5588b("DeeplinkFallbackFailed", str3);
                } else {
                    m5588b("DeeplinkFailed", str3);
                }
                new StringBuilder("Error message in processing openExternal: ").append(e.getMessage());
                m5587b(str2, "Cannot resolve URI (" + m5571f(str3) + ")", str);
                if (str4 == null) {
                    return;
                }
            } catch (URISyntaxException e2) {
                if (z) {
                    m5588b("DeeplinkFallbackFailed", str3);
                } else {
                    m5588b("DeeplinkFailed", str3);
                }
                new StringBuilder("Error message in processing openExternal: ").append(e2.getMessage());
                m5587b(str2, "Cannot resolve URI (" + m5571f(str3) + ")", str);
                if (str4 == null) {
                    return;
                }
            } catch (Exception e3) {
                m5587b(str2, "Unexpected error", "openExternal");
                Logger.m5724a(Logger.InternalLogLevel.ERROR, "InMobi", "Could not open URL; SDK encountered an unexpected error");
                new StringBuilder("SDK encountered unexpected error in handling openExternal() request from creative; ").append(e3.getMessage());
                return;
            }
            str3 = str4;
            str4 = null;
            z = true;
        }
    }

    /* renamed from: a */
    public static /* synthetic */ boolean m5602a(RenderView renderView, JsResult jsResult) {
        C8197c.C8206i renderingConfig = renderView.getRenderingConfig();
        if (renderingConfig != null && renderingConfig.f32047l) {
            return true;
        }
        jsResult.cancel();
        renderView.m5578d("window.mraidview.popupBlocked('popupBlocked')");
        return false;
    }

    /* renamed from: b */
    private void m5588b(String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("url", str2);
        m5594a(str, hashMap);
    }

    /* renamed from: c */
    private void m5581c(boolean z) {
        if (this.f32792n != z) {
            if (Build.VERSION.SDK_INT <= 23 || getFullScreenActivity() == null || !getFullScreenActivity().isInMultiWindowMode()) {
                m5577d(z);
            }
        }
    }

    /* renamed from: d */
    public static void m5580d() {
    }

    /* renamed from: d */
    private void m5577d(boolean z) {
        if (!this.f32797s) {
            this.f32792n = z;
            if (!z) {
                this.f32749B.m5464a(getContainerContext());
            } else {
                this.f32781c.mo5548b(this);
            }
            boolean z2 = this.f32792n;
            m5578d("window.mraidview.broadcastEvent('viewableChange'," + z2 + ");");
        }
    }

    /* renamed from: f */
    public static String m5571f(String str) {
        try {
            str = URLEncoder.encode(str, Request.DEFAULT_PARAMS_ENCODING);
        } catch (UnsupportedEncodingException e) {
        }
        return str;
    }

    /* renamed from: f */
    public static void m5573f() {
    }

    /* renamed from: g */
    public static void m5570g() {
    }

    /* renamed from: i */
    private void m5566i() {
        InMobiAdActivity.m5611a((Object) this);
        Activity fullScreenActivity = getFullScreenActivity();
        if (fullScreenActivity != null) {
            ((InMobiAdActivity) fullScreenActivity).f32728a = true;
            fullScreenActivity.finish();
            int i = this.f32766S;
            if (i != -1) {
                fullScreenActivity.overridePendingTransition(0, i);
                return;
            }
            return;
        }
        if (AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE == this.f32783e.f31277a) {
            setAndUpdateViewState("Default");
            RenderView renderView = this.f32801x;
            if (renderView != null) {
                renderView.setAndUpdateViewState("Default");
            }
        } else if ("Default".equals(this.f32782d)) {
            setAndUpdateViewState("Hidden");
        }
        AbstractC8440a aVar = this.f32781c;
        if (aVar != null) {
            aVar.mo5544d(this);
        }
    }

    /* renamed from: j */
    private void m5564j() {
        setVisibility(0);
        requestLayout();
    }

    /* renamed from: k */
    public static /* synthetic */ void m5562k(RenderView renderView) {
        renderView.m5578d("window.imaiview.broadcastEvent('ready');");
        renderView.m5578d("window.mraidview.broadcastEvent('ready');");
    }

    @Override // com.inmobi.ads.AdContainer
    /* renamed from: a */
    public final void mo5607a() {
        this.f32763P = false;
        try {
            getClass().getMethod("setLayerType", Integer.TYPE, Paint.class).invoke(this, 1, null);
        } catch (IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException e) {
        }
    }

    @Override // com.inmobi.ads.AdContainer
    /* renamed from: a */
    public final void mo5606a(int i, Map<String, String> map) {
        if (i == 2) {
            m5578d("inmobi.recordEvent(120,null);");
        }
    }

    /* renamed from: a */
    public final void m5605a(AbstractC8440a aVar, C8197c cVar) {
        this.f32751D = cVar;
        this.f32781c = aVar;
        this.f32748A = new WeakReference<>((ViewGroup) getParent());
        if (getRenderingConfig() != null) {
            setBackgroundColor(getRenderingConfig().f32041f);
        }
        if (getMraidConfig() != null) {
            if ((System.currentTimeMillis() / 1000) - new C8484c().f32959a.m5798b("last_updated_ts", 0L) > getMraidConfig().f32029a) {
                final C8485d dVar = new C8485d(getMraidConfig().f32032d, getMraidConfig().f32030b, getMraidConfig().f32031c);
                if (dVar.f32961a != null) {
                    C8383c cVar2 = new C8383c("GET", dVar.f32961a);
                    dVar.f32962b = cVar2;
                    cVar2.f32621z = false;
                    HashMap hashMap = new HashMap();
                    hashMap.put("Accept-Encoding", "gzip");
                    dVar.f32962b.m5744a(hashMap);
                    new Thread(new Runnable() { // from class: com.inmobi.rendering.mraid.d.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            byte[] bArr;
                            int i = 0;
                            while (i <= C8485d.this.f32963d) {
                                String unused = C8485d.f32960c;
                                long elapsedRealtime = SystemClock.elapsedRealtime();
                                C8384d a = new C8385e(C8485d.this.f32962b).m5728a();
                                try {
                                    C8002n.m6748a().m6747a(C8485d.this.f32962b.m5734g());
                                    C8002n.m6748a().m6745b(a.m5729c());
                                    C8002n.m6748a().m6744c(SystemClock.elapsedRealtime() - elapsedRealtime);
                                } catch (Exception e) {
                                    String unused2 = C8485d.f32960c;
                                    new StringBuilder("Error in setting request-response data size. ").append(e.getMessage());
                                }
                                if (a.m5733a()) {
                                    String unused3 = C8485d.f32960c;
                                    i++;
                                    if (i <= C8485d.this.f32963d) {
                                        try {
                                            Thread.sleep(C8485d.this.f32964e * 1000);
                                        } catch (InterruptedException e2) {
                                            String unused4 = C8485d.f32960c;
                                        }
                                    } else {
                                        return;
                                    }
                                } else {
                                    C8484c cVar3 = new C8484c();
                                    List<String> list = a.f32626d.get("Content-Encoding");
                                    if (list == null || !list.get(0).equals("gzip")) {
                                        cVar3.m5475a(a.m5731b());
                                        String unused5 = C8485d.f32960c;
                                        try {
                                            HashMap hashMap2 = new HashMap();
                                            hashMap2.put("url", C8485d.this.f32961a);
                                            hashMap2.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
                                            hashMap2.put("payloadSize", Long.valueOf(C8485d.this.f32962b.m5734g() + a.m5729c()));
                                            C8366b.m5794a();
                                            C8366b.m5789a("ads", "MraidFetchLatency", hashMap2);
                                            return;
                                        } catch (Exception e3) {
                                            String unused6 = C8485d.f32960c;
                                            StringBuilder sb = new StringBuilder("Error in submitting telemetry event : (");
                                            sb.append(e3.getMessage());
                                            sb.append(")");
                                            return;
                                        }
                                    } else {
                                        String unused7 = C8485d.f32960c;
                                        byte[] bArr2 = a.f32623a;
                                        if (bArr2 == null || bArr2.length == 0) {
                                            bArr = new byte[0];
                                        } else {
                                            bArr = new byte[bArr2.length];
                                            System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
                                        }
                                        byte[] a2 = C8407d.m5643a(bArr);
                                        if (a2 != null) {
                                            try {
                                                cVar3.m5475a(new String(a2, Request.DEFAULT_PARAMS_ENCODING));
                                                String unused8 = C8485d.f32960c;
                                                try {
                                                    HashMap hashMap3 = new HashMap();
                                                    hashMap3.put("url", C8485d.this.f32961a);
                                                    hashMap3.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
                                                    hashMap3.put("payloadSize", Long.valueOf(C8485d.this.f32962b.m5734g() + a.m5729c()));
                                                    C8366b.m5794a();
                                                    C8366b.m5789a("ads", "MraidFetchLatency", hashMap3);
                                                    return;
                                                } catch (Exception e4) {
                                                    String unused9 = C8485d.f32960c;
                                                    StringBuilder sb2 = new StringBuilder("Error in submitting telemetry event : (");
                                                    sb2.append(e4.getMessage());
                                                    sb2.append(")");
                                                    return;
                                                }
                                            } catch (UnsupportedEncodingException e5) {
                                                String unused10 = C8485d.f32960c;
                                                String unused11 = C8485d.f32960c;
                                                e5.getMessage();
                                                return;
                                            }
                                        } else {
                                            return;
                                        }
                                    }
                                }
                            }
                        }
                    }).start();
                }
            }
        }
        if (Build.VERSION.SDK_INT >= 16) {
            setImportantForAccessibility(2);
        }
        setScrollable(false);
        if (Build.VERSION.SDK_INT >= 17) {
            getSettings().setMediaPlaybackRequiresUserGesture(false);
        }
        getSettings().setJavaScriptEnabled(true);
        getSettings().setGeolocationEnabled(true);
        setWebViewClient(this.f32778ah);
        setWebChromeClient(this.f32779ai);
        C8463c cVar3 = new C8463c(this, this.f32783e);
        this.f32750C = cVar3;
        addJavascriptInterface(cVar3, "sdkController");
        this.f32784f = new C8483b(this);
        this.f32785g = new C8487e(this);
        this.f32786h = new MraidMediaProcessor(this);
        this.f32749B = new C8491h(this);
        this.f32754G = new C8482a();
        this.f32755H = new C8490g();
        this.f32756I = new C8489f();
    }

    /* renamed from: a */
    public final void m5598a(String str) {
        this.f32797s = false;
        if (!this.f32796r.get()) {
            loadDataWithBaseURL("", str, "text/html", Request.DEFAULT_PARAMS_ENCODING, null);
        }
    }

    /* renamed from: a */
    public final void m5597a(String str, String str2) {
        m5578d(str + "." + str2);
    }

    @Override // com.inmobi.rendering.AbstractC8462b
    /* renamed from: a */
    public final void mo5503a(String str, String str2, String str3) {
        m5597a(str, str2 + "(" + str3 + ");");
    }

    /* renamed from: a */
    public final void m5596a(String str, String str2, String str3, String str4) {
        if (str3 != null) {
            m5595a(str, str2, str3, str4, false);
        } else if (str4 != null) {
            m5595a(str, str2, str4, null, true);
        } else {
            m5587b(str2, "Empty url and fallback url", "openExternal");
        }
    }

    /* renamed from: a */
    public final void m5594a(String str, Map<String, Object> map) {
        this.f32781c.mo5547b(str, map);
    }

    /* renamed from: a */
    public final void m5593a(boolean z) {
        CustomView customView;
        setCloseRegionDisabled(z);
        View rootView = getRootView();
        if (rootView != null && (customView = (CustomView) rootView.findViewById(65531)) != null) {
            customView.setVisibility(this.f32793o ? 8 : 0);
        }
    }

    @Override // com.inmobi.ads.AdContainer
    /* renamed from: b */
    public final void mo5592b() {
        MraidMediaProcessor mraidMediaProcessor = this.f32786h;
        MediaRenderView mediaRenderView = mraidMediaProcessor.f32932b;
        if (mediaRenderView != null) {
            mediaRenderView.m5495a();
            mraidMediaProcessor.f32932b = null;
        }
        if ("Expanded".equals(this.f32782d)) {
            if (!"Default".equals(this.f32782d)) {
                this.f32797s = true;
                C8483b bVar = this.f32784f;
                if (bVar.f32955a.getOriginalRenderView() == null) {
                    View findViewById = bVar.f32957c.getRootView().findViewById(RegularImmutableMap.SHORT_MASK);
                    ((ViewGroup) bVar.f32955a.getParent()).removeView(bVar.f32955a);
                    ((ViewGroup) findViewById.getParent()).removeView(findViewById);
                    bVar.f32957c.addView(bVar.f32955a, bVar.f32958d, new RelativeLayout.LayoutParams(bVar.f32957c.getWidth(), bVar.f32957c.getHeight()));
                    bVar.f32955a.m5564j();
                }
                m5566i();
                this.f32797s = false;
            }
            this.f32759L = false;
        } else if ("Resized".equals(this.f32782d)) {
            if (!"Default".equals(this.f32782d)) {
                this.f32797s = true;
                C8487e eVar = this.f32785g;
                ViewGroup viewGroup = (ViewGroup) eVar.f32967a.getParent();
                View findViewById2 = viewGroup.getRootView().findViewById(65534);
                View findViewById3 = eVar.f32968b.getRootView().findViewById(RegularImmutableMap.SHORT_MASK);
                ((ViewGroup) findViewById2.getParent()).removeView(findViewById2);
                if (!(findViewById3 == null || findViewById3.getParent() == null)) {
                    ((ViewGroup) findViewById3.getParent()).removeView(findViewById3);
                }
                viewGroup.removeView(eVar.f32967a);
                eVar.f32968b.addView(eVar.f32967a, eVar.f32969c, new RelativeLayout.LayoutParams(eVar.f32968b.getWidth(), eVar.f32968b.getHeight()));
                eVar.f32967a.m5564j();
                setAndUpdateViewState("Default");
                this.f32781c.mo5544d(this);
                this.f32797s = false;
            }
        } else if ("Default".equals(this.f32782d)) {
            setAndUpdateViewState("Hidden");
            if (AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_FULLSCREEN == this.f32783e.f31277a) {
                m5566i();
            } else {
                ((ViewGroup) getParent()).removeAllViews();
            }
        }
        this.f32752E.clear();
        this.f32791m = false;
    }

    /* renamed from: b */
    public final void m5589b(String str) {
        this.f32797s = false;
        if (!this.f32796r.get()) {
            loadUrl(str);
        }
    }

    /* renamed from: b */
    public final void m5587b(String str, String str2, String str3) {
        m5597a(str, "broadcastEvent('error',\"" + str2 + "\", \"" + str3 + "\")");
    }

    /* renamed from: b */
    public final void m5586b(boolean z) {
        CustomView customView;
        setUseCustomClose(z);
        if (getRootView() != null && (customView = (CustomView) getRootView().findViewById(65532)) != null) {
            customView.setVisibility(this.f32790l ? 8 : 0);
        }
    }

    /* renamed from: c */
    public final void m5583c(String str) {
        m5578d("window.mraidview.fireRedirectFraudBeacon('" + str + "')");
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("plId", Long.valueOf(this.f32768U));
            hashMap.put("creativeId", this.f32769V);
            hashMap.put("impId", this.f32770W);
            hashMap.put("trigger", str);
            C8366b.m5794a();
            C8366b.m5789a("ads", "BlockAutoRedirection", hashMap);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder("Error in submitting telemetey event : (");
            sb.append(e.getMessage());
            sb.append(")");
        }
    }

    /* renamed from: c */
    public final void m5582c(String str, String str2, String str3) {
        if (str3 == null || (str3.startsWith("http") && !URLUtil.isValidUrl(str3))) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(" called with invalid url (");
            sb.append(str3);
            sb.append(")");
            m5587b(str2, "Invalid URL", str);
        } else if (!str3.startsWith("http") || str3.contains("play.google.com") || str3.contains("market.android.com") || str3.contains("market%3A%2F%2F")) {
            m5596a(str, str2, str3, null);
        } else {
            InMobiAdActivity.m5612a(this);
            Intent intent = new Intent(getContainerContext(), InMobiAdActivity.class);
            intent.putExtra("com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE", 100);
            intent.putExtra("com.inmobi.rendering.InMobiAdActivity.IN_APP_BROWSER_URL", str3);
            C8326a.m5896a(getContainerContext(), intent);
            m5597a(str2, "broadcastEvent('" + str + "Successful','" + str3 + "');");
            HashMap hashMap = new HashMap();
            hashMap.put("command", "openEmbedded");
            hashMap.put("scheme", C8186bs.m6242a(str2));
            this.f32781c.mo5547b("CreativeInvokedAction", hashMap);
        }
    }

    @Override // com.inmobi.ads.AdContainer
    /* renamed from: c */
    public final boolean mo5585c() {
        return this.f32796r.get();
    }

    /* renamed from: d */
    public final void m5578d(final String str) {
        if (getContainerContext() != null) {
            new Handler(getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.rendering.RenderView.2
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        if (!RenderView.this.f32796r.get()) {
                            String str2 = "javascript:try{" + str + "}catch(e){}";
                            String unused = RenderView.f32747w;
                            if (Build.VERSION.SDK_INT < 19) {
                                RenderView.this.loadUrl(str2);
                            } else {
                                RenderView.this.evaluateJavascript(str2, null);
                            }
                        }
                    } catch (Exception e) {
                        String unused2 = RenderView.f32747w;
                        new StringBuilder("SDK encountered an unexpected error injecting JavaScript in the Ad container; ").append(e.getMessage());
                    }
                }
            });
        }
    }

    @Override // android.webkit.WebView, com.inmobi.ads.AdContainer
    public final void destroy() {
        if (!this.f32796r.get()) {
            if (!this.f32759L) {
                this.f32759L = true;
                return;
            }
            this.f32796r.set(true);
            this.f32797s = true;
            this.f32766S = -1;
            removeJavascriptInterface("sdkController");
            WeakReference<Activity> weakReference = this.f32780b;
            if (weakReference != null) {
                weakReference.clear();
            }
            WeakReference<ViewGroup> weakReference2 = this.f32748A;
            if (weakReference2 != null) {
                weakReference2.clear();
            }
            AbstractC8213cb cbVar = this.f32776af;
            if (cbVar != null) {
                cbVar.mo5934d();
                this.f32776af.mo5933e();
            }
            this.f32771aa = null;
            ViewParent parent = getParent();
            if (parent != null) {
                ((ViewGroup) parent).removeView(this);
                removeAllViews();
            }
            super.destroy();
        }
    }

    /* renamed from: e */
    public final boolean m5576e() {
        C8197c.C8206i renderingConfig = getRenderingConfig();
        if (renderingConfig == null) {
            return false;
        }
        return !renderingConfig.f32042g || this.f32773ac || this.f32774ad;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: e */
    public final boolean m5574e(String str) {
        char c;
        switch (str.hashCode()) {
            case -1886160473:
                if (str.equals("playVideo")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -1647691422:
                if (str.equals("inlineVideo")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1509574865:
                if (str.equals("html5video")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1642189884:
                if (str.equals("saveContent")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1772979069:
                if (str.equals("redirectFraudDetection")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c == 1 || c == 2) {
            return true;
        }
        return (c == 3 || c == 4) && this.f32753F && this.f32763P;
    }

    public final C8197c getAdConfig() {
        return this.f32751D;
    }

    public final boolean getAllowAutoRedirection() {
        return this.f32773ac;
    }

    @Override // com.inmobi.ads.AdContainer
    public final C8297o getApkDownloader() {
        return this.f32772ab;
    }

    public final Context getContainerContext() {
        WeakReference<Activity> weakReference = this.f32780b;
        return (weakReference == null || weakReference.get() == null) ? getContext() : this.f32780b.get();
    }

    public final String getCreativeId() {
        return this.f32769V;
    }

    public final String getCurrentPosition() {
        JSONObject jSONObject = this.f32758K;
        return jSONObject == null ? "" : jSONObject.toString();
    }

    public final Object getCurrentPositionMonitor() {
        return this.f32762O;
    }

    @Override // com.inmobi.ads.AdContainer
    public final Object getDataModel() {
        return null;
    }

    public final String getDefaultPosition() {
        JSONObject jSONObject = this.f32757J;
        return jSONObject == null ? "" : jSONObject.toString();
    }

    public final Object getDefaultPositionMonitor() {
        return this.f32761N;
    }

    public final int getDownloadProgress() {
        getReferenceContainer().getApkDownloader();
        return 0;
    }

    public final int getDownloadStatus() {
        getReferenceContainer().getApkDownloader();
        return -2;
    }

    public final C8482a getExpandProperties() {
        return this.f32754G;
    }

    public final Activity getFullScreenActivity() {
        WeakReference<Activity> weakReference = this.f32780b;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // com.inmobi.ads.AdContainer
    public final AdContainer.AbstractC8007a getFullScreenEventsListener() {
        return this.f32777ag;
    }

    public final String getImpressionId() {
        return this.f32770W;
    }

    public final AbstractC8440a getListener() {
        AbstractC8440a aVar = this.f32781c;
        AbstractC8440a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = f32746a;
            this.f32781c = aVar2;
        }
        return aVar2;
    }

    @Override // com.inmobi.ads.AdContainer
    public final String getMarkupType() {
        return AdType.HTML;
    }

    public final MraidMediaProcessor getMediaProcessor() {
        return this.f32786h;
    }

    public final C8197c.C8204g getMraidConfig() {
        return this.f32751D.f31991j;
    }

    public final String getMraidJsString() {
        String c = new C8484c().f32959a.m5796c("mraid_js_string");
        String str = c;
        if (c == null) {
            str = "var imIsObjValid=function(a){return\"undefined\"!=typeof a&&null!=a?!0:!1},EventListeners=function(a){this.event=a;this.count=0;var b=[];this.add=function(a){b.push(a);++this.count};this.remove=function(a){var e=!1,d=this;b=b.filter(function(b){if(b=b===a)--d.count,e=!0;return!b});return e};this.removeAll=function(){b=[];this.count=0};this.broadcast=function(a){b.forEach(function(e){try{e.apply({},a)}catch(d){}})};this.toString=function(){var c=[a,\":\"];b.forEach(function(a){c.push(\"|\",String(a),\"|\")});\nreturn c.join(\"\")}},InmobiObj=function(){this.listeners=[];this.addEventListener=function(a,b){try{if(imIsObjValid(b)&&imIsObjValid(a)){var c=this.listeners;c[a]||(c[a]=new EventListeners);c[a].add(b);\"micIntensityChange\"==a&&window.imraidview.startListeningMicIntensity();\"deviceMuted\"==a&&window.imraidview.startListeningDeviceMuteEvents();\"deviceVolumeChange\"==a&&window.imraidview.startListeningDeviceVolumeChange();\"volumeChange\"==a&&window.imraidview.startListeningVolumeChange();\"headphones\"==a&&\nwindow.imraidview.startListeningHeadphonePluggedEvents();\"backButtonPressed\"==a&&window.imraidview.startListeningForBackButtonPressedEvent();\"downloadStatusChanged\"==a&&window.imraidview.registerDownloaderCallbacks()}}catch(e){this.log(e)}};this.removeEventListener=function(a,b){if(imIsObjValid(a)){var c=this.listeners;imIsObjValid(c[a])&&(imIsObjValid(b)?c[a].remove(b):c[a].removeAll());\"micIntensityChange\"==a&&0==c[a].count&&window.imraidview.stopListeningMicIntensity();\"deviceMuted\"==a&&0==c[a].count&&\nwindow.imraidview.stopListeningDeviceMuteEvents();\"deviceVolumeChange\"==a&&0==c[a].count&&window.imraidview.stopListeningDeviceVolumeChange();\"volumeChange\"==a&&0==c[a].count&&window.imraidview.stopListeningVolumeChange();\"headphones\"==a&&0==c[a].count&&window.imraidview.stopListeningHeadphonePluggedEvents();\"backButtonPressed\"==a&&0==c[a].count&&window.imraidview.stopListeningForBackButtonPressedEvent();\"downloadStatusChanged\"==a&&0==c[a].count&&window.imraidview.unregisterDownloaderCallbacks()}};\nthis.broadcastEvent=function(a){if(imIsObjValid(a)){for(var b=Array(arguments.length),c=0;c<arguments.length;c++)b[c]=arguments[c];c=b.shift();try{this.listeners[c]&&this.listeners[c].broadcast(b)}catch(e){}}};this.sendSaveContentResult=function(a){if(imIsObjValid(a)){for(var b=Array(arguments.length),c=0;c<arguments.length;c++)if(2==c){var e=arguments[c],e=JSON.parse(e);b[c]=e}else b[c]=arguments[c];e=b[1];\"success\"!=e&&(c=b[0].substring(b[0].indexOf(\"_\")+1),imraid.saveContentIDMap[c]&&delete imraid.saveContentIDMap[c]);\nwindow.imraid.broadcastEvent(b[0],b[1],b[2])}}},__im__iosNativeMessageHandler=void 0;window.webkit&&(window.webkit.messageHandlers&&window.webkit.messageHandlers.nativeMessageHandler)&&(__im__iosNativeMessageHandler=window.webkit.messageHandlers.nativeMessageHandler);\nvar __im__iosNativeCall={nativeCallInFlight:!1,nativeCallQueue:[],executeNativeCall:function(a){this.nativeCallInFlight?this.nativeCallQueue.push(a):(this.nativeCallInFlight=!0,imIsObjValid(__im__iosNativeMessageHandler)?__im__iosNativeMessageHandler.postMessage(a):window.location=a)},nativeCallComplete:function(a){0==this.nativeCallQueue.length?this.nativeCallInFlight=!1:(a=this.nativeCallQueue.shift(),imIsObjValid(__im__iosNativeMessageHandler)?__im__iosNativeMessageHandler.postMessage(a):window.location=\na)}},IOSNativeCall=function(){this.urlScheme=\"\";this.executeNativeCall=function(a){if(imIsObjValid(__im__iosNativeMessageHandler)){e={};e.command=a;e.scheme=this.urlScheme;for(var b={},c=1;c<arguments.length;c+=2)d=arguments[c+1],null!=d&&(b[arguments[c]]=\"\"+d);e.params=b}else for(var e=this.urlScheme+\"://\"+a,d,b=!0,c=1;c<arguments.length;c+=2)d=arguments[c+1],null!=d&&(b?(e+=\"?\",b=!1):e+=\"&\",e+=arguments[c]+\"=\"+escape(d));__im__iosNativeCall.executeNativeCall(e);return\"OK\"};this.nativeCallComplete=\nfunction(a){__im__iosNativeCall.nativeCallComplete(a);return\"OK\"};this.updateKV=function(a,b){this[a]=b;var c=this.broadcastMap[a];c&&this.broadcastEvent(c,b)}};\n(function(){var a=window.mraidview={};a.orientationProperties={allowOrientationChange:!0,forceOrientation:\"none\",direction:\"right\"};var b=[],c=!1;a.detectAndBlockFraud=function(e){a.isPossibleFraud()&&a.fireRedirectFraudBeacon(e);return!1};a.popupBlocked=function(e){a.firePopupBlockedBeacon(e)};a.zeroPad=function(a){var d=\"\";10>a&&(d+=\"0\");return d+a};a.supports=function(a){console.log(\"bridge: supports (MRAID)\");if(\"string\"!=typeof a)window.mraid.broadcastEvent(\"error\",\"Supports method expects string parameter\",\n\"supports\");else return\"false\"!=sdkController.supports(\"window.mraidview\",a)};a.useCustomClose=function(a){try{sdkController.useCustomClose(\"window.mraidview\",a)}catch(d){imraidview.showAlert(\"use CustomClose: \"+d)}};a.close=function(){try{sdkController.close(\"window.mraidview\")}catch(a){imraidview.showAlert(\"close: \"+a)}};a.stackCommands=function(a,d){c?b.push(a):(eval(a),d&&(c=!0))};a.expand=function(a){try{\"undefined\"==typeof a&&(a=null),sdkController.expand(\"window.mraidview\",a)}catch(d){imraidview.showAlert(\"executeNativeExpand: \"+\nd+\", URL = \"+a)}};a.setExpandProperties=function(b){try{b?this.props=b:b=null;if(\"undefined\"!=typeof b.lockOrientation&&null!=b.lockOrientation&&\"undefined\"!=typeof b.orientation&&null!=b.orientation){var d={};d.allowOrientationChange=!b.lockOrientation;d.forceOrientation=b.orientation;a.setOrientationProperties(d)}sdkController.setExpandProperties(\"window.mraidview\",a.stringify(b))}catch(c){imraidview.showAlert(\"executeNativesetExpandProperties: \"+c+\", props = \"+b)}};a.getExpandProperties=function(){try{return eval(\"(\"+\nsdkController.getExpandProperties(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getExpandProperties: \"+a)}};a.setOrientationProperties=function(b){try{b?(\"undefined\"!=typeof b.allowOrientationChange&&(a.orientationProperties.allowOrientationChange=b.allowOrientationChange),\"undefined\"!=typeof b.forceOrientation&&(a.orientationProperties.forceOrientation=b.forceOrientation)):b=null,sdkController.setOrientationProperties(\"window.mraidview\",a.stringify(a.orientationProperties))}catch(d){imraidview.showAlert(\"setOrientationProperties: \"+\nd+\", props = \"+b)}};a.getOrientationProperties=function(){return{forceOrientation:a.orientationProperties.forceOrientation,allowOrientationChange:a.orientationProperties.allowOrientationChange}};a.resizeProps=null;a.setResizeProperties=function(b){var d,c;try{d=parseInt(b.width);c=parseInt(b.height);if(isNaN(d)||isNaN(c)||1>d||1>c)throw\"Invalid\";b.width=d;b.height=c;a.resizeProps=b;sdkController.setResizeProperties(\"window.mraidview\",a.stringify(b))}catch(g){window.mraid.broadcastEvent(\"error\",\"Invalid properties.\",\n\"setResizeProperties\")}};a.getResizeProperties=function(){try{return eval(\"(\"+sdkController.getResizeProperties(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getResizeProperties: \"+a)}};a.open=function(a){\"undefined\"==typeof a&&(a=null);try{sdkController.open(\"window.mraidview\",a)}catch(d){imraidview.showAlert(\"open: \"+d)}};a.getScreenSize=function(){try{return eval(\"(\"+sdkController.getScreenSize(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getScreenSize: \"+a)}};a.getMaxSize=\nfunction(){try{return eval(\"(\"+sdkController.getMaxSize(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getMaxSize: \"+a)}};a.getCurrentPosition=function(){try{return eval(\"(\"+sdkController.getCurrentPosition(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getCurrentPosition: \"+a)}};a.getDefaultPosition=function(){try{return eval(\"(\"+sdkController.getDefaultPosition(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getDefaultPosition: \"+a)}};a.getState=function(){try{return String(sdkController.getState(\"window.mraidview\"))}catch(a){imraidview.showAlert(\"getState: \"+\na)}};a.isViewable=function(){try{return sdkController.isViewable(\"window.mraidview\")}catch(a){imraidview.showAlert(\"isViewable: \"+a)}};a.getPlacementType=function(){return sdkController.getPlacementType(\"window.mraidview\")};a.close=function(){try{sdkController.close(\"window.mraidview\")}catch(a){imraidview.showAlert(\"close: \"+a)}};\"function\"!=typeof String.prototype.startsWith&&(String.prototype.startsWith=function(a){return 0==this.indexOf(a)});a.playVideo=function(a){var d=\"\";null!=a&&(d=a);try{sdkController.playVideo(\"window.mraidview\",\nd)}catch(b){imraidview.showAlert(\"playVideo: \"+b)}};a.stringify=function(b){if(\"undefined\"===typeof JSON){var d=\"\",c;if(\"undefined\"==typeof b.length)return a.stringifyArg(b);for(c=0;c<b.length;c++)0<c&&(d+=\",\"),d+=a.stringifyArg(b[c]);return d+\"]\"}return JSON.stringify(b)};a.stringifyArg=function(a){var b,c,g;c=typeof a;b=\"\";if(\"number\"===c||\"boolean\"===c)b+=args;else if(a instanceof Array)b=b+\"[\"+a+\"]\";else if(a instanceof Object){c=!0;b+=\"{\";for(g in a)null!==a[g]&&(c||(b+=\",\"),b=b+'\"'+g+'\":',c=\ntypeof a[g],b=\"number\"===c||\"boolean\"===c?b+a[g]:\"function\"===typeof a[g]?b+'\"\"':a[g]instanceof Object?b+this.stringify(args[i][g]):b+'\"'+a[g]+'\"',c=!1);b+=\"}\"}else a=a.replace(/\\\\/g,\"\\\\\\\\\"),a=a.replace(/\"/g,'\\\\\"'),b=b+'\"'+a+'\"';imraidview.showAlert(\"json:\"+b);return b};getPID=function(a){var b=\"\";null!=a&&(\"undefined\"!=typeof a.id&&null!=a.id)&&(b=a.id);return b};a.resize=function(){if(null==a.resizeProps)window.mraid.broadcastEvent(\"error\",\"Valid resize dimensions must be provided before calling resize\",\n\"resize\");else try{sdkController.resize(\"window.mraidview\")}catch(b){imraidview.showAlert(\"resize called in bridge\")}};a.storePicture=function(b){console.log(\"bridge: storePicture\");if(\"string\"!=typeof b)window.mraid.broadcastEvent(\"error\",\"storePicture method expects url as string parameter\",\"storePicture\");else{if(a.supports(\"storePicture\"))return!window.confirm(\"Do you want to download the file?\")?(window.mraid.broadcastEvent(\"error\",\"Store picture on \"+b+\" was cancelled by user.\",\"storePicture\"),\n!1):sdkController.storePicture(\"window.mraidview\",b);window.mraid.broadcastEvent(\"error\",\"Store picture on \"+b+\" was cancelled because it is unsupported in this device/app.\",\"storePicture\")}};a.fireMediaTrackingEvent=function(a,b){};a.fireMediaErrorEvent=function(a,b){};a.fireMediaTimeUpdateEvent=function(a,b,c){};a.fireMediaCloseEvent=function(a,b,c){};a.fireMediaVolumeChangeEvent=function(a,b,c){};a.broadcastEvent=function(){window.mraid.broadcastEvent.apply(window.mraid,arguments)}})();\n(function(){var a=window.mraid=new InmobiObj,b=window.mraidview,c=!1;b.isAdShownToUser=!1;b.onUserInteraction=function(){c=!0};b.isPossibleFraud=function(){return a.supports(\"redirectFraudDetection\")&&(!b.isAdShownToUser||!c)};b.fireRedirectFraudBeacon=function(a){if(\"undefined\"!=typeof inmobi&&inmobi.recordEvent){var d={};d.trigger=a;d.isAdShown=b.isAdShownToUser.toString();inmobi.recordEvent(135,d)}};b.firePopupBlockedBeacon=function(a){if(\"undefined\"!=typeof inmobi&&inmobi.recordEvent){var b={};\nb.trigger=a;inmobi.recordEvent(136,b)}};window.onbeforeunload=function(){b.detectAndBlockFraud(\"redirect\")};a.addEventListener(\"viewableChange\",function(a){a&&!b.isAdShownToUser&&(b.isAdShownToUser=!0)});a.useCustomClose=b.useCustomClose;a.close=b.close;a.getExpandProperties=b.getExpandProperties;a.setExpandProperties=function(c){\"undefined\"!=typeof c&&(\"useCustomClose\"in c&&\"undefined\"!=typeof a.getState()&&\"expanded\"!=a.getState())&&a.useCustomClose(c.useCustomClose);b.setExpandProperties(c)};a.getResizeProperties=\nb.getResizeProperties;a.setResizeProperties=b.setResizeProperties;a.getOrientationProperties=b.getOrientationProperties;a.setOrientationProperties=b.setOrientationProperties;a.expand=b.expand;a.getMaxSize=b.getMaxSize;a.getState=b.getState;a.isViewable=b.isViewable;a.createCalendarEvent=function(a){window.mraid.broadcastEvent(\"error\",\"Method not supported\",\"createCalendarEvent\")};a.open=function(c){b.detectAndBlockFraud(\"mraid.open\")||(\"string\"!=typeof c?a.broadcastEvent(\"error\",\"URL is required.\",\n\"open\"):b.open(c))};a.resize=b.resize;a.getVersion=function(){return\"2.0\"};a.getPlacementType=b.getPlacementType;a.playVideo=function(a){b.playVideo(a)};a.getScreenSize=b.getScreenSize;a.getCurrentPosition=b.getCurrentPosition;a.getDefaultPosition=b.getDefaultPosition;a.supports=function(a){return b.supports(a)};a.storePicture=function(c){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a valid URL\",\"storePicture\"):b.storePicture(c)}})();\n(function(){var a=window.imraidview={},b,c=!0;a.setOrientationProperties=function(b){try{b?(\"undefined\"!=typeof b.allowOrientationChange&&(mraidview.orientationProperties.allowOrientationChange=b.allowOrientationChange),\"undefined\"!=typeof b.forceOrientation&&(mraidview.orientationProperties.forceOrientation=b.forceOrientation),\"undefined\"!=typeof b.direction&&(mraidview.orientationProperties.direction=b.direction)):b=null,sdkController.setOrientationProperties(\"window.imraidview\",mraidview.stringify(mraidview.orientationProperties))}catch(c){a.showAlert(\"setOrientationProperties: \"+\nc+\", props = \"+b)}};a.getOrientationProperties=function(){return mraidview.orientationProperties};a.getWindowOrientation=function(){var a=window.orientation;0>a&&(a+=360);window.innerWidth!==this.previousWidth&&0==a&&window.innerWidth>window.innerHeight&&(a=90);return a};var e=function(){window.setTimeout(function(){if(c||a.getWindowOrientation()!==b)c=!1,b=a.getWindowOrientation(),sdkController.onOrientationChange(\"window.imraidview\"),imraid.broadcastEvent(\"orientationChange\",b)},200)};a.registerOrientationListener=\nfunction(){b=a.getWindowOrientation();window.addEventListener(\"resize\",e,!1);window.addEventListener(\"orientationchange\",e,!1)};a.unRegisterOrientationListener=function(){window.removeEventListener(\"resize\",e,!1);window.removeEventListener(\"orientationchange\",e,!1)};window.imraidview.registerOrientationListener();a.firePostStatusEvent=function(a){window.imraid.broadcastEvent(\"postStatus\",a)};a.fireMediaTrackingEvent=function(a,b){var c={};c.name=a;var f=\"inmobi_media_\"+a;\"undefined\"!=typeof b&&(null!=\nb&&\"\"!=b)&&(f=f+\"_\"+b);window.imraid.broadcastEvent(f,c)};a.fireMediaErrorEvent=function(a,b){var c={name:\"error\"};c.code=b;var f=\"inmobi_media_\"+c.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(f=f+\"_\"+a);window.imraid.broadcastEvent(f,c)};a.fireMediaTimeUpdateEvent=function(a,b,c){var f={name:\"timeupdate\",target:{}};f.target.currentTime=b;f.target.duration=c;b=\"inmobi_media_\"+f.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,f)};a.saveContent=function(a,\nb,c){window.imraid.addEventListener(\"saveContent_\"+a,c);sdkController.saveContent(\"window.imraidview\",a,b)};a.cancelSaveContent=function(a){sdkController.cancelSaveContent(\"window.imraidview\",a)};a.disableCloseRegion=function(a){sdkController.disableCloseRegion(\"window.imraidview\",a)};a.fireGalleryImageSelectedEvent=function(a,b,c){var f=new Image;f.src=\"data:image/jpeg;base64,\"+a;f.width=b;f.height=c;window.imraid.broadcastEvent(\"galleryImageSelected\",f)};a.fireCameraPictureCatpturedEvent=function(a,\nb,c){var f=new Image;f.src=\"data:image/jpeg;base64,\"+a;f.width=b;f.height=c;window.imraid.broadcastEvent(\"cameraPictureCaptured\",f)};a.fireMediaCloseEvent=function(a,b,c){var f={name:\"close\"};f.viaUserInteraction=b;f.target={};f.target.currentTime=c;b=\"inmobi_media_\"+f.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,f)};a.fireMediaVolumeChangeEvent=function(a,b,c){var f={name:\"volumechange\",target:{}};f.target.volume=b;f.target.muted=c;b=\"inmobi_media_\"+f.name;\n\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,f)};a.fireDeviceMuteChangeEvent=function(a){window.imraid.broadcastEvent(\"deviceMuted\",a)};a.fireDeviceVolumeChangeEvent=function(a){window.imraid.broadcastEvent(\"deviceVolumeChange\",a)};a.fireHeadphonePluggedEvent=function(a){window.imraid.broadcastEvent(\"headphones\",a)};a.showAlert=function(a){sdkController.showAlert(\"window.imraidview\",a)};a.openExternal=function(b,c){try{600<=getSdkVersionInt()?sdkController.openExternal(\"window.imraidview\",\nb,c):sdkController.openExternal(\"window.imraidview\",b)}catch(e){a.showAlert(\"openExternal: \"+e)}};a.log=function(b){try{sdkController.log(\"window.imraidview\",b)}catch(c){a.showAlert(\"log: \"+c)}};a.getPlatform=function(){return\"android\"};a.asyncPing=function(b){try{sdkController.asyncPing(\"window.imraidview\",b)}catch(c){a.showAlert(\"asyncPing: \"+c)}};a.startListeningDeviceMuteEvents=function(){sdkController.registerDeviceMuteEventListener(\"window.imraidview\")};a.stopListeningDeviceMuteEvents=function(){sdkController.unregisterDeviceMuteEventListener(\"window.imraidview\")};\na.startListeningDeviceVolumeChange=function(){sdkController.registerDeviceVolumeChangeEventListener(\"window.imraidview\")};a.stopListeningDeviceVolumeChange=function(){sdkController.unregisterDeviceVolumeChangeEventListener(\"window.imraidview\")};a.startListeningHeadphonePluggedEvents=function(){sdkController.registerHeadphonePluggedEventListener(\"window.imraidview\")};a.stopListeningHeadphonePluggedEvents=function(){sdkController.unregisterHeadphonePluggedEventListener(\"window.imraidview\")};getSdkVersionInt=\nfunction(){for(var b=a.getSdkVersion().split(\".\"),c=b.length,e=\"\",f=0;f<c;f++)e+=b[f];return parseInt(e)};a.getSdkVersion=function(){return window._im_imaiview.getSdkVersion()};a.supports=function(a){console.log(\"bridge: supports (IMRAID)\");if(\"string\"!=typeof a)window.imraid.broadcastEvent(\"error\",\"Supports method expects string parameter\",\"supports\");else return\"false\"!=sdkController.supports(\"window.imraidview\",a)};a.postToSocial=function(b,c,e,f){window.imraid.broadcastEvent(\"error\",\"Method not supported\",\n\"postToSocial\");a.log(\"Method postToSocial not supported\")};a.incentCompleted=function(a){if(\"object\"!=typeof a||null==a)sdkController.incentCompleted(\"window.imraidview\",null);else try{sdkController.incentCompleted(\"window.imraidview\",JSON.stringify(a))}catch(b){sdkController.incentCompleted(\"window.imraidview\",null)}};a.getOrientation=function(){try{return String(sdkController.getOrientation(\"window.imraidview\"))}catch(b){a.showAlert(\"getOrientation: \"+b)}};a.acceptAction=function(b){try{sdkController.acceptAction(\"window.imraidview\",\nmraidview.stringify(b))}catch(c){a.showAlert(\"acceptAction: \"+c+\", params = \"+b)}};a.rejectAction=function(b){try{sdkController.rejectAction(\"window.imraidview\",mraidview.stringify(b))}catch(c){a.showAlert(\"rejectAction: \"+c+\", params = \"+b)}};a.updateToPassbook=function(b){window.imraid.broadcastEvent(\"error\",\"Method not supported\",\"updateToPassbook\");a.log(\"Method not supported\")};a.isDeviceMuted=function(){return\"false\"!=sdkController.isDeviceMuted(\"window.imraidview\")};a.getDeviceVolume=function(){return 603>=\ngetSdkVersionInt()?-1:sdkController.getDeviceVolume(\"window.imraidview\")};a.isHeadPhonesPlugged=function(){return\"false\"!=sdkController.isHeadphonePlugged(\"window.imraidview\")};a.sendSaveContentResult=function(){window.imraid.sendSaveContentResult.apply(window.imraid,arguments)};a.broadcastEvent=function(){window.imraid.broadcastEvent.apply(window.imraid,arguments)};a.disableBackButton=function(a){void 0==a||\"boolean\"!=typeof a?console.log(\"disableBackButton called with invalid params\"):sdkController.disableBackButton(\"window.imraidview\",\na)};a.isBackButtonDisabled=function(){return sdkController.isBackButtonDisabled(\"window.imraidview\")};a.startListeningForBackButtonPressedEvent=function(){sdkController.registerBackButtonPressedEventListener(\"window.imraidview\")};a.stopListeningForBackButtonPressedEvent=function(){sdkController.unregisterBackButtonPressedEventListener(\"window.imraidview\")};a.hideStatusBar=function(){};a.setOpaqueBackground=function(){};a.startDownloader=function(a,b,c){682<=getSdkVersionInt()&&sdkController.startDownloader(\"window.imraidview\",\na,b,c)};a.registerDownloaderCallbacks=function(){682<=getSdkVersionInt()&&sdkController.registerDownloaderCallbacks(\"window.imraidview\")};a.unregisterDownloaderCallbacks=function(){682<=getSdkVersionInt()&&sdkController.unregisterDownloaderCallbacks(\"window.imraidview\")};a.getDownloadProgress=function(){return 682<=getSdkVersionInt()?sdkController.getDownloadProgress(\"window.imraidview\"):-1};a.getDownloadStatus=function(){return 682<=getSdkVersionInt()?sdkController.getDownloadStatus(\"window.imraidview\"):\n-1};a.fireEvent=function(a){700<=getSdkVersionInt()&&(\"fireSkip\"===a?sdkController.fireSkip(\"window.imraidview\"):\"fireComplete\"===a?sdkController.fireComplete(\"window.imraidview\"):\"showEndCard\"===a&&sdkController.showEndCard(\"window.imraidview\"))};a.saveBlob=function(a){700<=getSdkVersionInt()&&sdkController.saveBlob(\"window.imraidview\",a)};a.getBlob=function(a,b){700<=getSdkVersionInt()&&sdkController.getBlob(a,b)};a.setCloseEndCardTracker=function(a){700<=getSdkVersionInt()&&sdkController.setCloseEndCardTracker(\"window.imraidview\",\na)}})();\n(function(){var a=window.imraid=new InmobiObj,b=window.imraidview;a.getOrientation=b.getOrientation;a.setOrientationProperties=b.setOrientationProperties;a.getOrientationProperties=b.getOrientationProperties;a.saveContentIDMap={};a.saveContent=function(c,e,d){var k=arguments.length,g,f=null;if(3>k){if(\"function\"===typeof arguments[k-1])g=arguments[k-1];else return;f={reason:1}}else a.saveContentIDMap[c]&&(g=arguments[2],f={reason:11,url:arguments[1]});\"function\"!==!g&&(f?(window.imraid.addEventListener(\"saveContent_failed_\"+c,\ng),window.imraid.sendSaveContentResult(\"saveContent_failed_\"+c,\"failed\",JSON.stringify(f))):(a.removeEventListener(\"saveContent_\"+c),a.saveContentIDMap[c]=!0,b.saveContent(c,e,d)))};a.cancelSaveContent=function(a){b.cancelSaveContent(a)};a.asyncPing=function(c){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"URL is required.\",\"asyncPing\"):b.asyncPing(c)};a.disableCloseRegion=b.disableCloseRegion;a.getSdkVersion=b.getSdkVersion;a.log=function(c){\"undefined\"==typeof c?a.broadcastEvent(\"error\",\"message is required.\",\n\"log\"):\"string\"==typeof c?b.log(c):b.log(JSON.stringify(c))};a.getInMobiAIVersion=function(){return\"2.0\"};a.getVendorName=function(){return\"inmobi\"};a.openExternal=function(a,e){mraidview.detectAndBlockFraud(\"imraid.openExternal\")||b.openExternal(a,e)};a.updateToPassbook=function(c){mraidview.detectAndBlockFraud(\"imraid.updateToPassbook\")||(\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a valid URL\",\"updateToPassbook\"):b.updateToPassbook(c))};a.postToSocial=function(a,e,d,k){mraidview.detectAndBlockFraud(\"imraid.postToSocial\")||\nb.postToSocial(a,e,d,k)};a.getPlatform=b.getPlatform;a.incentCompleted=b.incentCompleted;a.loadSKStore=b.loadSKStore;a.showSKStore=function(a){mraidview.detectAndBlockFraud(\"imraid.showSKStore\")||b.showSKStore(a)};a.supports=function(a){return b.supports(a)};a.isDeviceMuted=function(){return!imIsObjValid(a.listeners.deviceMuted)?-1:b.isDeviceMuted()};a.isHeadPhonesPlugged=function(){return!imIsObjValid(a.listeners.headphones)?!1:b.isHeadPhonesPlugged()};a.getDeviceVolume=function(){return b.getDeviceVolume()};\na.setDeviceVolume=function(a){b.setDeviceVolume(a)};a.hideStatusBar=function(){b.hideStatusBar()};a.setOpaqueBackground=function(){b.setOpaqueBackground()};a.disableBackButton=b.disableBackButton;a.isBackButtonDisabled=b.isBackButtonDisabled;a.startDownloader=b.startDownloader;a.getDownloadProgress=b.getDownloadProgress;a.getDownloadStatus=b.getDownloadStatus;a.fireEvent=b.fireEvent;a.saveBlob=b.saveBlob;a.getBlob=b.getBlob;a.setCloseEndCardTracker=b.setCloseEndCardTracker})();\n(function(){var a=window._im_imaiview={ios:{}};window.imaiview=a;a.broadcastEvent=function(){for(var a=Array(arguments.length),c=0;c<arguments.length;c++)a[c]=arguments[c];c=a.shift();try{window.mraid.broadcastEvent(c,a)}catch(e){}};a.getPlatform=function(){return\"android\"};a.getPlatformVersion=function(){return sdkController.getPlatformVersion(\"window.imaiview\")};a.log=function(a){sdkController.log(\"window.imaiview\",a)};a.openEmbedded=function(a){sdkController.openEmbedded(\"window.imaiview\",a)};\na.openExternal=function(a,c){600<=getSdkVersionInt()?sdkController.openExternal(\"window.imaiview\",a,c):sdkController.openExternal(\"window.imaiview\",a)};a.ping=function(a,c){sdkController.ping(\"window.imaiview\",a,c)};a.pingInWebView=function(a,c){sdkController.pingInWebView(\"window.imaiview\",a,c)};a.getSdkVersion=function(){try{var a=sdkController.getSdkVersion(\"window.imaiview\");if(\"string\"==typeof a&&null!=a)return a}catch(c){return\"3.7.0\"}};a.onUserInteraction=function(a){if(\"object\"!=typeof a||\nnull==a)sdkController.onUserInteraction(\"window.imaiview\",null);else try{sdkController.onUserInteraction(\"window.imaiview\",JSON.stringify(a))}catch(c){sdkController.onUserInteraction(\"window.imaiview\",null)}};a.fireAdReady=function(){sdkController.fireAdReady(\"window.imaiview\")};a.fireAdFailed=function(){sdkController.fireAdFailed(\"window.imaiview\")};a.broadcastEvent=function(){window.imai.broadcastEvent.apply(window.imai,arguments)}})();\n(function(){var a=window._im_imaiview;window._im_imai=new InmobiObj;window._im_imai.ios=new InmobiObj;var b=window._im_imai;window.imai=window._im_imai;b.matchString=function(a,b){if(\"string\"!=typeof a||null==a||null==b)return-1;var d=-1;try{d=a.indexOf(b)}catch(k){}return d};b.isHttpUrl=function(a){return\"string\"!=typeof a||null==a?!1:0==b.matchString(a,\"http://\")?!0:0==b.matchString(a,\"https://\")?!0:!1};b.appendTapParams=function(a,e,d){if(!imIsObjValid(e)||!imIsObjValid(d))return a;b.isHttpUrl(a)&&\n(a=-1==b.matchString(a,\"?\")?a+(\"?u-tap-o=\"+e+\",\"+d):a+(\"&u-tap-o=\"+e+\",\"+d));return a};b.performAdClick=function(a,e){e=e||event;if(imIsObjValid(a)){var d=a.clickConfig,k=a.landingConfig;if(!imIsObjValid(d)&&!imIsObjValid(k))b.log(\"click/landing config are invalid, Nothing to process .\"),this.broadcastEvent(\"error\",\"click/landing config are invalid, Nothing to process .\");else{var g=null,f=null,h=null,m=null,n=null,l=null,q=null,p=null;if(imIsObjValid(e))try{m=e.changedTouches[0].pageX,n=e.changedTouches[0].pageY}catch(r){n=\nm=0}imIsObjValid(k)?imIsObjValid(d)?(l=k.url,q=k.fallbackUrl,p=k.urlType,g=d.url,f=d.pingWV,h=d.fr):(l=k.url,p=k.urlType):(l=d.url,p=d.urlType);d=b.getPlatform();try{if(\"boolean\"!=typeof h&&\"number\"!=typeof h||null==h)h=!0;if(0>h||1<h)h=!0;if(\"boolean\"!=typeof f&&\"number\"!=typeof f||null==f)f=!0;if(0>f||1<f)f=!0;if(\"number\"!=typeof p||null==p)p=0;g=b.appendTapParams(g,m,n);imIsObjValid(g)?!0==f?b.pingInWebView(g,h):b.ping(g,h):b.log(\"clickurl provided is null.\");if(imIsObjValid(l))switch(imIsObjValid(g)||\n(l=b.appendTapParams(l,m,n)),p){case 1:b.openEmbedded(l);break;case 2:\"ios\"==d?b.ios.openItunesProductView(l):this.broadcastEvent(\"error\",\"Cannot process openItunesProductView for os\"+d);break;default:b.openExternal(l,q)}else b.log(\"Landing url provided is null.\")}catch(s){}}}else b.log(\" invalid config, nothing to process .\"),this.broadcastEvent(\"error\",\"invalid config, nothing to process .\")};b.performActionClick=function(a,e){e=e||event;if(imIsObjValid(a)){var d=a.clickConfig,k=a.landingConfig;\nif(!imIsObjValid(d)&&!imIsObjValid(k))b.log(\"click/landing config are invalid, Nothing to process .\"),this.broadcastEvent(\"error\",\"click/landing config are invalid, Nothing to process .\");else{var g=null,f=null,h=null,m=null,n=null;if(imIsObjValid(e))try{m=e.changedTouches[0].pageX,n=e.changedTouches[0].pageY}catch(l){n=m=0}imIsObjValid(d)&&(g=d.url,f=d.pingWV,h=d.fr);try{if(\"boolean\"!=typeof h&&\"number\"!=typeof h||null==h)h=!0;if(0>h||1<h)h=!0;if(\"boolean\"!=typeof f&&\"number\"!=typeof f||null==f)f=\n!0;if(0>f||1<f)f=!0;g=b.appendTapParams(g,m,n);imIsObjValid(g)?!0==f?b.pingInWebView(g,h):b.ping(g,h):b.log(\"clickurl provided is null.\");b.onUserInteraction(k)}catch(q){}}}else b.log(\" invalid config, nothing to process .\"),this.broadcastEvent(\"error\",\"invalid config, nothing to process .\")};b.getVersion=function(){return\"1.0\"};b.getPlatform=a.getPlatform;b.getPlatformVersion=a.getPlatformVersion;b.log=a.log;b.openEmbedded=function(b){mraidview.detectAndBlockFraud(\"imai.openEmbedded\")||a.openEmbedded(b)};\nb.openExternal=function(b,e){mraidview.detectAndBlockFraud(\"imai.openExternal\")||a.openExternal(b,e)};b.ping=a.ping;b.pingInWebView=a.pingInWebView;b.onUserInteraction=a.onUserInteraction;b.getSdkVersion=a.getSdkVersion;b.loadSKStore=a.loadSKStore;b.showSKStore=function(b){mraidview.detectAndBlockFraud(\"imai.showSKStore\")||a.showSKStore(b)};b.ios.openItunesProductView=function(b){mraidview.detectAndBlockFraud(\"imai.ios.openItunesProductView\")||a.ios.openItunesProductView(b)};b.fireAdReady=a.fireAdReady;\nb.fireAdFailed=a.fireAdFailed})();";
        }
        return str;
    }

    public final C8489f getOrientationProperties() {
        return this.f32756I;
    }

    public final RenderView getOriginalRenderView() {
        return this.f32801x;
    }

    public final long getPlacementId() {
        return this.f32768U;
    }

    public final Activity getPubActivity() {
        WeakReference<Activity> weakReference = this.f32802y;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public final AdContainer getReferenceContainer() {
        return this.f32771aa;
    }

    public final C8197c.C8206i getRenderingConfig() {
        return this.f32751D.f31990i;
    }

    @Override // com.inmobi.ads.AdContainer
    public final AdContainer.RenderingProperties getRenderingProperties() {
        return this.f32783e;
    }

    public final C8490g getResizeProperties() {
        return this.f32755H;
    }

    public final String getState() {
        return this.f32782d;
    }

    @Override // com.inmobi.ads.AdContainer
    public final View getVideoContainerView() {
        return null;
    }

    public final String getViewState() {
        return this.f32782d;
    }

    @Override // com.inmobi.ads.AdContainer
    public final AbstractC8213cb getViewableAd() {
        if (this.f32776af == null) {
            this.f32776af = new C8215cc(this);
            Activity pubActivity = getFullScreenActivity() == null ? getPubActivity() : getFullScreenActivity();
            Set<C8185br> set = this.f32775ae;
            if (set != null) {
                if (pubActivity != null) {
                    try {
                        for (C8185br brVar : set) {
                            int i = brVar.f31928a;
                            if (i == 1) {
                                this.f32776af = new C8078ad(this, pubActivity, this.f32776af, brVar.f31929b);
                            } else if (i == 3) {
                                AbstractC6427a aVar = (AbstractC6427a) brVar.f31929b.get("avidAdSession");
                                boolean z = brVar.f31929b.containsKey("deferred") && ((Boolean) brVar.f31929b.get("deferred")).booleanValue();
                                if (aVar != null) {
                                    this.f32776af = new C8310v(this, pubActivity, this.f32776af, aVar, z);
                                }
                            }
                        }
                    } catch (Exception e) {
                        new StringBuilder("Exception occurred while creating the HTML viewable ad : ").append(e.getMessage());
                    }
                } else {
                    HashMap hashMap = new HashMap();
                    hashMap.put("type", getMarkupType());
                    String str = this.f32770W;
                    if (str != null) {
                        hashMap.put("impId", str);
                    }
                    C8366b.m5794a();
                    C8366b.m5789a("ads", "TrackersForService", hashMap);
                }
            }
        }
        return this.f32776af;
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f32753F = isHardwareAccelerated();
        if (this.f32748A == null) {
            this.f32748A = new WeakReference<>((ViewGroup) getParent());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.f32752E.clear();
        getMediaProcessor().m5485b();
        getMediaProcessor().m5482c();
        getMediaProcessor().m5480e();
        this.f32749B.m5464a(getContainerContext());
        try {
            super.onDetachedFromWindow();
        } catch (IllegalArgumentException e) {
            StringBuilder sb = new StringBuilder("Detaching WebView from window encountered an error (");
            sb.append(e.getMessage());
            sb.append(")");
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("type", "IllegalArgumentException");
                hashMap.put(AvidVideoPlaybackListenerImpl.MESSAGE, e.getMessage());
                C8366b.m5794a();
                C8366b.m5789a("ads", "ExceptionCaught", hashMap);
            } catch (Exception e2) {
                StringBuilder sb2 = new StringBuilder("Error in submitting telemetey event : (");
                sb2.append(e2.getMessage());
                sb2.append(")");
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        new StringBuilder("Touch event received, action:").append(motionEvent.getAction());
        this.f32774ad = true;
        if (m5576e()) {
            m5578d("window.mraidview.onUserInteraction();");
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onScreenStateChanged(int i) {
        super.onScreenStateChanged(i);
        if (i == 0) {
            m5581c(false);
        } else if (!this.f32767T) {
            m5581c(true);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        StringBuilder sb = new StringBuilder("onSizeChanged (");
        sb.append(i);
        sb.append(", ");
        sb.append(i2);
        sb.append(")");
        if (i != 0 && i2 != 0) {
            int b = C8399c.m5684b(i);
            int b2 = C8399c.m5684b(i2);
            m5578d("window.mraidview.broadcastEvent('sizeChange'," + b + "," + b2 + ");");
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        this.f32767T = !z;
        m5581c(z);
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        boolean z = i == 0;
        if (this.f32792n != z) {
            m5577d(z);
        }
    }

    public final void setAdActiveFlag(boolean z) {
        this.f32791m = z;
    }

    public final void setAllowAutoRedirection(boolean z) {
        this.f32773ac = z;
    }

    public final void setAndUpdateViewState(String str) {
        this.f32782d = str;
        new StringBuilder("set state:").append(this.f32782d);
        String lowerCase = this.f32782d.toLowerCase(Locale.ENGLISH);
        m5578d("window.mraidview.broadcastEvent('stateChange','" + lowerCase + "');");
    }

    public final void setBlobProvider(AbstractC8441a aVar) {
        this.f32798t = aVar;
    }

    public final void setCloseEndCardTracker(String str) {
        NativeVideoWrapper nativeVideoWrapper;
        C8152be beVar;
        AdContainer referenceContainer = getReferenceContainer();
        if ((referenceContainer instanceof C8148bd) && (nativeVideoWrapper = (NativeVideoWrapper) ((C8148bd) referenceContainer).getVideoContainerView()) != null && (beVar = (C8152be) nativeVideoWrapper.getVideoView().getTag()) != null && beVar.m6311b() != null && beVar.m6311b().mo6200f() != null) {
            beVar.m6311b().mo6200f().m6237a(new NativeTracker(str, 0, NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_END_CARD_CLOSE, null));
        }
    }

    public final void setCloseRegionDisabled(boolean z) {
        this.f32793o = z;
    }

    public final void setCreativeId(String str) {
        this.f32769V = str;
    }

    public final void setCurrentPosition() {
        this.f32758K = new JSONObject();
        int[] iArr = new int[2];
        getLocationOnScreen(iArr);
        try {
            this.f32758K.put("x", C8399c.m5684b(iArr[0]));
            this.f32758K.put("y", C8399c.m5684b(iArr[1]));
            int b = C8399c.m5684b(getWidth());
            int b2 = C8399c.m5684b(getHeight());
            this.f32758K.put("width", b);
            this.f32758K.put("height", b2);
        } catch (JSONException e) {
        }
        synchronized (this.f32762O) {
            this.f32789k = false;
            this.f32762O.notifyAll();
        }
    }

    public final void setCurrentPositionLock() {
        this.f32789k = true;
    }

    public final void setDefaultPosition() {
        int[] iArr = new int[2];
        this.f32757J = new JSONObject();
        if (this.f32748A == null) {
            this.f32748A = new WeakReference<>((ViewGroup) getParent());
        }
        try {
            if (this.f32748A.get() != null) {
                this.f32748A.get().getLocationOnScreen(iArr);
                this.f32757J.put("x", C8399c.m5684b(iArr[0]));
                this.f32757J.put("y", C8399c.m5684b(iArr[1]));
                int b = C8399c.m5684b(this.f32748A.get().getWidth());
                int b2 = C8399c.m5684b(this.f32748A.get().getHeight());
                this.f32757J.put("width", b);
                this.f32757J.put("height", b2);
            } else {
                this.f32757J.put("x", 0);
                this.f32757J.put("y", 0);
                this.f32757J.put("width", 0);
                this.f32757J.put("height", 0);
            }
        } catch (JSONException e) {
        }
        synchronized (this.f32761N) {
            this.f32788j = false;
            this.f32761N.notifyAll();
        }
    }

    public final void setDefaultPositionLock() {
        this.f32788j = true;
    }

    public final void setDisableBackButton(boolean z) {
        this.f32794p = z;
    }

    public final void setExitAnimation(int i) {
        this.f32766S = i;
    }

    public final void setExpandProperties(C8482a aVar) {
        if (aVar.f32949b) {
            setUseCustomClose(aVar.f32948a);
        }
        this.f32754G = aVar;
    }

    @Override // com.inmobi.ads.AdContainer
    public final void setFullScreenActivityContext(Activity activity) {
        this.f32780b = new WeakReference<>(activity);
        C8489f fVar = this.f32756I;
        if (fVar != null) {
            setOrientationProperties(fVar);
        }
    }

    public final void setImpressionId(String str) {
        this.f32770W = str;
    }

    public final void setIsInAppBrowser(boolean z) {
        this.f32803z = z;
    }

    public final void setIsPreload(boolean z) {
        this.f32799u = z;
    }

    public final void setOrientationProperties(C8489f fVar) {
        this.f32756I = fVar;
        WeakReference<Activity> weakReference = this.f32780b;
        if (weakReference != null && weakReference.get() != null && !fVar.f32972a) {
            String str = fVar.f32973b;
            char c = 65535;
            int hashCode = str.hashCode();
            if (hashCode != 729267099) {
                if (hashCode == 1430647483 && str.equals("landscape")) {
                    c = 0;
                }
            } else if (str.equals("portrait")) {
                c = 1;
            }
            if (c == 0) {
                boolean z = true;
                if (C8399c.m5685b() != 3) {
                    z = C8399c.m5685b() == 4;
                }
                if (z) {
                    if (3 == C8399c.m5685b()) {
                        this.f32780b.get().setRequestedOrientation(0);
                    } else {
                        this.f32780b.get().setRequestedOrientation(8);
                    }
                } else if (fVar.f32974c.equals("left")) {
                    this.f32780b.get().setRequestedOrientation(8);
                } else if (fVar.f32974c.equals("right")) {
                    this.f32780b.get().setRequestedOrientation(0);
                }
            } else if (c != 1) {
                if (C8399c.m5685b() == 2) {
                    this.f32780b.get().setRequestedOrientation(9);
                } else if (C8399c.m5685b() == 4) {
                    this.f32780b.get().setRequestedOrientation(8);
                } else if (C8399c.m5685b() == 3) {
                    this.f32780b.get().setRequestedOrientation(0);
                } else {
                    this.f32780b.get().setRequestedOrientation(1);
                }
            } else if (C8399c.m5685b() == 2) {
                this.f32780b.get().setRequestedOrientation(9);
            } else {
                this.f32780b.get().setRequestedOrientation(1);
            }
        }
    }

    public final void setOriginalRenderView(RenderView renderView) {
        this.f32801x = renderView;
    }

    public final void setPlacementId(long j) {
        this.f32768U = j;
    }

    public final void setReferenceContainer(AdContainer adContainer) {
        this.f32771aa = adContainer;
    }

    public final void setRenderViewEventListener(AbstractC8440a aVar) {
        this.f32781c = aVar;
    }

    @Override // com.inmobi.ads.AdContainer
    public final void setRequestedScreenOrientation() {
        C8489f fVar;
        if (getFullScreenActivity() != null && (fVar = this.f32756I) != null) {
            setOrientationProperties(fVar);
        }
    }

    public final void setResizeProperties(C8490g gVar) {
        this.f32755H = gVar;
    }

    public final void setScrollable(boolean z) {
        setScrollContainer(z);
        setVerticalScrollBarEnabled(z);
        setHorizontalScrollBarEnabled(z);
    }

    public final void setUseCustomClose(boolean z) {
        this.f32790l = z;
    }

    @Override // android.webkit.WebView
    public final void stopLoading() {
        if (!this.f32796r.get()) {
            super.stopLoading();
        }
    }
}
