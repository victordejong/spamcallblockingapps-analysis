package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.aotter.net.volley.toolbox.JsonRequest;
import com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw;
import com.flurry.sdk.C3138fx;
import com.flurry.sdk.C3363jx;
import gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
@SuppressLint({"SetJavaScriptEnabled", "ViewConstructor"})
/* renamed from: com.flurry.sdk.fv */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/fv.class */
public class DialogInterface$OnKeyListenerC3117fv extends AbstractDialogInterface$OnKeyListenerC3134fw implements DialogInterface.OnKeyListener {

    /* renamed from: A */
    public boolean f5053A;

    /* renamed from: d */
    public AbstractC3066fc f5058d;

    /* renamed from: f */
    public C3160gi f5059f;

    /* renamed from: h */
    public boolean f5060h;

    /* renamed from: i */
    public WebViewClient f5061i;

    /* renamed from: j */
    public WebChromeClient f5062j;

    /* renamed from: k */
    public C3176gn f5063k;

    /* renamed from: l */
    public View f5064l;

    /* renamed from: m */
    public int f5065m;

    /* renamed from: n */
    public WebChromeClient.CustomViewCallback f5066n;

    /* renamed from: o */
    public Dialog f5067o;

    /* renamed from: p */
    public FrameLayout f5068p;

    /* renamed from: q */
    public int f5069q;

    /* renamed from: r */
    public Dialog f5070r;

    /* renamed from: s */
    public FrameLayout f5071s;

    /* renamed from: t */
    public boolean f5072t;

    /* renamed from: u */
    public boolean f5073u;

    /* renamed from: v */
    public boolean f5074v;

    /* renamed from: w */
    public boolean f5075w;

    /* renamed from: y */
    public AlertDialog f5076y;

    /* renamed from: z */
    public C2899bz f5077z;

    /* renamed from: c */
    public final String f5057c = DialogInterface$OnKeyListenerC3117fv.class.getSimpleName();

    /* renamed from: a */
    public String f5055a = null;

    /* renamed from: B */
    public AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a f5054B = new AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a() { // from class: com.flurry.sdk.fv.1
        @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a
        /* renamed from: a */
        public final void mo32972a() {
            if (DialogInterface$OnKeyListenerC3117fv.this.getCurrentBinding() == 3 && DialogInterface$OnKeyListenerC3117fv.this.f5058d != null) {
                if (DialogInterface$OnKeyListenerC3117fv.this.isViewAttachedToActivity()) {
                    DialogInterface$OnKeyListenerC3117fv fvVar = DialogInterface$OnKeyListenerC3117fv.this;
                    if (fvVar.m33041a((View) fvVar.f5058d)) {
                        DialogInterface$OnKeyListenerC3117fv fvVar2 = DialogInterface$OnKeyListenerC3117fv.this;
                        fvVar2.removeView(fvVar2.f5058d);
                    }
                }
                DialogInterface$OnKeyListenerC3117fv.this.f5058d.cleanupLayout();
                DialogInterface$OnKeyListenerC3117fv.this.f5058d = null;
            }
        }

        @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a
        /* renamed from: b */
        public final void mo32971b() {
            if (DialogInterface$OnKeyListenerC3117fv.this.getCurrentBinding() == 3 && DialogInterface$OnKeyListenerC3117fv.this.f5058d != null) {
                if (DialogInterface$OnKeyListenerC3117fv.this.isViewAttachedToActivity()) {
                    DialogInterface$OnKeyListenerC3117fv fvVar = DialogInterface$OnKeyListenerC3117fv.this;
                    if (fvVar.m33041a((View) fvVar.f5058d)) {
                        DialogInterface$OnKeyListenerC3117fv fvVar2 = DialogInterface$OnKeyListenerC3117fv.this;
                        fvVar2.removeView(fvVar2.f5058d);
                    }
                }
                DialogInterface$OnKeyListenerC3117fv.this.f5058d.cleanupLayout();
                DialogInterface$OnKeyListenerC3117fv.this.f5058d = null;
            }
        }

        @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a
        /* renamed from: c */
        public final void mo32970c() {
            if (DialogInterface$OnKeyListenerC3117fv.this.getCurrentBinding() == 3 && DialogInterface$OnKeyListenerC3117fv.this.f5058d != null) {
                DialogInterface$OnKeyListenerC3117fv.this.f5058d.cleanupLayout();
                DialogInterface$OnKeyListenerC3117fv.this.f5058d = null;
            }
        }
    };

    /* renamed from: b */
    public AbstractC3344jl<C3138fx> f5056b = new AbstractC3344jl<C3138fx>() { // from class: com.flurry.sdk.fv.2
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* synthetic */ void mo32302a(C3138fx fxVar) {
            final C3138fx fxVar2 = fxVar;
            C3331jb.m32681a().m32678a(new Runnable() { // from class: com.flurry.sdk.fv.2.1
                @Override // java.lang.Runnable
                public final void run() {
                    C3138fx fxVar3 = fxVar2;
                    int i = C31288.f5096a[fxVar3.f5111a - 1];
                    if (i == 1) {
                        DialogInterface$OnKeyListenerC3117fv.m33032a(DialogInterface$OnKeyListenerC3117fv.this, fxVar3);
                    } else if (i == 2) {
                        DialogInterface$OnKeyListenerC3117fv.m33018d(DialogInterface$OnKeyListenerC3117fv.this);
                    } else if (i == 3) {
                        DialogInterface$OnKeyListenerC3117fv.m33033a(DialogInterface$OnKeyListenerC3117fv.this, fxVar3.f5112b);
                    } else if (i == 4) {
                        DialogInterface$OnKeyListenerC3117fv.m33025b(DialogInterface$OnKeyListenerC3117fv.this, fxVar3.f5112b);
                    } else if (i == 5) {
                        DialogInterface$OnKeyListenerC3117fv.this.m33020c(fxVar3.f5112b.f4699c.f5300a.f4289an);
                    }
                }
            });
        }
    };

    /* renamed from: com.flurry.sdk.fv$8 */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/fv$8.class */
    public static final /* synthetic */ class C31288 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f5096a = new int[C3138fx.EnumC3139a.m32992a().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003c -> B:26:0x0013). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0040 -> B:24:0x001d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0044 -> B:22:0x0027). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0048 -> B:18:0x0031). Please submit an issue!!! */
        static {
            try {
                f5096a[C3138fx.EnumC3139a.f5114a - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5096a[C3138fx.EnumC3139a.f5115b - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f5096a[C3138fx.EnumC3139a.f5117d - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f5096a[C3138fx.EnumC3139a.f5116c - 1] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f5096a[C3138fx.EnumC3139a.f5118e - 1] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: com.flurry.sdk.fv$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/fv$a.class */
    public final class C3129a extends WebChromeClient {
        public C3129a() {
        }

        public /* synthetic */ C3129a(DialogInterface$OnKeyListenerC3117fv fvVar, byte b) {
            this();
        }

        @Override // android.webkit.WebChromeClient
        public final void onHideCustomView() {
            C3356jq.m32615a(3, DialogInterface$OnKeyListenerC3117fv.this.f5057c, "onHideCustomView()");
            if (!(DialogInterface$OnKeyListenerC3117fv.this.getContext() instanceof Activity)) {
                C3356jq.m32615a(3, DialogInterface$OnKeyListenerC3117fv.this.f5057c, "no activity present");
                return;
            }
            Activity activity = (Activity) DialogInterface$OnKeyListenerC3117fv.this.getContext();
            if (DialogInterface$OnKeyListenerC3117fv.this.f5064l != null) {
                if (DialogInterface$OnKeyListenerC3117fv.this.f5070r != null) {
                    DialogInterface$OnKeyListenerC3117fv.this.f5070r.show();
                }
                ((ViewGroup) activity.getWindow().getDecorView()).removeView(DialogInterface$OnKeyListenerC3117fv.this.f5068p);
                DialogInterface$OnKeyListenerC3117fv.this.f5068p.removeView(DialogInterface$OnKeyListenerC3117fv.this.f5064l);
                if (DialogInterface$OnKeyListenerC3117fv.this.f5067o != null && DialogInterface$OnKeyListenerC3117fv.this.f5067o.isShowing()) {
                    DialogInterface$OnKeyListenerC3117fv.this.f5067o.hide();
                    DialogInterface$OnKeyListenerC3117fv.this.f5067o.setOnDismissListener(null);
                    DialogInterface$OnKeyListenerC3117fv.this.f5067o.dismiss();
                }
                DialogInterface$OnKeyListenerC3117fv.this.f5067o = null;
                if (DialogInterface$OnKeyListenerC3117fv.this.f5059f != null) {
                    DialogInterface$OnKeyListenerC3117fv.this.f5059f.stopLoading();
                }
                C3006dt.m33327a(activity, DialogInterface$OnKeyListenerC3117fv.this.f5065m);
                DialogInterface$OnKeyListenerC3117fv.this.f5066n.onCustomViewHidden();
                DialogInterface$OnKeyListenerC3117fv.this.f5066n = null;
                DialogInterface$OnKeyListenerC3117fv.this.f5068p = null;
                DialogInterface$OnKeyListenerC3117fv.this.f5064l = null;
            }
        }

        @Override // android.webkit.WebChromeClient
        public final void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
            C3356jq.m32615a(3, DialogInterface$OnKeyListenerC3117fv.this.f5057c, "onShowCustomView(14)");
            if (!(DialogInterface$OnKeyListenerC3117fv.this.getContext() instanceof Activity)) {
                C3356jq.m32615a(3, DialogInterface$OnKeyListenerC3117fv.this.f5057c, "no activity present");
                return;
            }
            final Activity activity = (Activity) DialogInterface$OnKeyListenerC3117fv.this.getContext();
            if (DialogInterface$OnKeyListenerC3117fv.this.f5064l == null || DialogInterface$OnKeyListenerC3117fv.this.f5062j == null) {
                DialogInterface$OnKeyListenerC3117fv.this.f5064l = view;
                DialogInterface$OnKeyListenerC3117fv.this.f5065m = activity.getRequestedOrientation();
                DialogInterface$OnKeyListenerC3117fv.this.f5066n = customViewCallback;
                DialogInterface$OnKeyListenerC3117fv.this.f5068p = new FrameLayout(activity);
                DialogInterface$OnKeyListenerC3117fv.this.f5068p.setBackgroundColor(-16777216);
                DialogInterface$OnKeyListenerC3117fv.this.f5068p.addView(DialogInterface$OnKeyListenerC3117fv.this.f5064l, new FrameLayout.LayoutParams(-1, -1, 17));
                ((ViewGroup) activity.getWindow().getDecorView()).addView(DialogInterface$OnKeyListenerC3117fv.this.f5068p, -1, -1);
                if (DialogInterface$OnKeyListenerC3117fv.this.f5067o == null) {
                    DialogInterface$OnKeyListenerC3117fv.this.f5067o = new Dialog(this, activity) { // from class: com.flurry.sdk.fv.a.1
                        @Override // android.app.Dialog, android.view.Window.Callback
                        public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
                            return activity.dispatchTouchEvent(motionEvent);
                        }

                        @Override // android.app.Dialog, android.view.Window.Callback
                        public final boolean dispatchTrackballEvent(MotionEvent motionEvent) {
                            return activity.dispatchTrackballEvent(motionEvent);
                        }
                    };
                    DialogInterface$OnKeyListenerC3117fv.this.f5067o.getWindow().setType(1000);
                    DialogInterface$OnKeyListenerC3117fv.this.f5067o.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.flurry.sdk.fv.a.2
                        @Override // android.content.DialogInterface.OnShowListener
                        public final void onShow(DialogInterface dialogInterface) {
                            if (DialogInterface$OnKeyListenerC3117fv.this.f5070r != null) {
                                DialogInterface$OnKeyListenerC3117fv.this.f5070r.hide();
                            }
                        }
                    });
                    DialogInterface$OnKeyListenerC3117fv.this.f5067o.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.flurry.sdk.fv.a.3
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            C3356jq.m32615a(3, DialogInterface$OnKeyListenerC3117fv.this.f5057c, "customViewFullScreenDialog.onDismiss()");
                            if (DialogInterface$OnKeyListenerC3117fv.this.f5064l != null && DialogInterface$OnKeyListenerC3117fv.this.f5062j != null) {
                                DialogInterface$OnKeyListenerC3117fv.this.f5062j.onHideCustomView();
                            }
                        }
                    });
                    DialogInterface$OnKeyListenerC3117fv.this.f5067o.setCancelable(true);
                    DialogInterface$OnKeyListenerC3117fv.this.f5067o.show();
                }
                C3006dt.m33322b(activity, i);
                return;
            }
            DialogInterface$OnKeyListenerC3117fv.this.f5062j.onHideCustomView();
        }

        @Override // android.webkit.WebChromeClient
        public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            C3356jq.m32615a(3, DialogInterface$OnKeyListenerC3117fv.this.f5057c, "onShowCustomView(7)");
            if (!(DialogInterface$OnKeyListenerC3117fv.this.getContext() instanceof Activity)) {
                C3356jq.m32615a(3, DialogInterface$OnKeyListenerC3117fv.this.f5057c, "no activity present");
            } else {
                onShowCustomView(view, ((Activity) DialogInterface$OnKeyListenerC3117fv.this.getContext()).getRequestedOrientation(), customViewCallback);
            }
        }
    }

    /* renamed from: com.flurry.sdk.fv$b */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/fv$b.class */
    public final class C3133b extends WebViewClient {
        public C3133b() {
        }

        public /* synthetic */ C3133b(DialogInterface$OnKeyListenerC3117fv fvVar, byte b) {
            this();
        }

        @Override // android.webkit.WebViewClient
        public final void onLoadResource(WebView webView, String str) {
            String str2 = DialogInterface$OnKeyListenerC3117fv.this.f5057c;
            C3356jq.m32615a(3, str2, "onLoadResource: url = " + str);
            super.onLoadResource(webView, str);
            if (str != null && webView != null && webView == DialogInterface$OnKeyListenerC3117fv.this.f5059f) {
                if (!str.equalsIgnoreCase(DialogInterface$OnKeyListenerC3117fv.this.f5059f.getUrl())) {
                    DialogInterface$OnKeyListenerC3117fv.this.m33027b();
                }
                if (!DialogInterface$OnKeyListenerC3117fv.this.f5073u && Uri.parse(str).getLastPathSegment() != null) {
                    if (DialogInterface$OnKeyListenerC3117fv.this.f5074v) {
                        DialogInterface$OnKeyListenerC3117fv.this.f5073u = true;
                        DialogInterface$OnKeyListenerC3117fv.this.getWebViewFactory().m32934c().m32958b();
                        if (DialogInterface$OnKeyListenerC3117fv.this.f5072t) {
                            DialogInterface$OnKeyListenerC3117fv.this.getWebViewFactory().m32934c().m32956d();
                        }
                    } else if (DialogInterface$OnKeyListenerC3117fv.this.f5072t && DialogInterface$OnKeyListenerC3117fv.this.m33043a() && DialogInterface$OnKeyListenerC3117fv.this.getCurrentBinding() == 2 && !DialogInterface$OnKeyListenerC3117fv.this.f5053A) {
                        DialogInterface$OnKeyListenerC3117fv.this.getWebViewFactory().m32935b();
                    }
                }
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            String str2 = DialogInterface$OnKeyListenerC3117fv.this.f5057c;
            C3356jq.m32615a(3, str2, "onPageFinished: url = " + str + " adcontroller index: " + DialogInterface$OnKeyListenerC3117fv.this.getAdController().f4111b.f4150e);
            if (str != null && webView != null && webView == DialogInterface$OnKeyListenerC3117fv.this.f5059f) {
                DialogInterface$OnKeyListenerC3117fv.this.m33027b();
                DialogInterface$OnKeyListenerC3117fv.m33005p(DialogInterface$OnKeyListenerC3117fv.this);
                DialogInterface$OnKeyListenerC3117fv.this.dismissProgressDialog();
                DialogInterface$OnKeyListenerC3117fv fvVar = DialogInterface$OnKeyListenerC3117fv.this;
                if (!fvVar.m33041a(fvVar.f5059f) && (DialogInterface$OnKeyListenerC3117fv.this.getCurrentBinding() == 2 || DialogInterface$OnKeyListenerC3117fv.this.getCurrentBinding() == 1)) {
                    C3356jq.m32615a(3, DialogInterface$OnKeyListenerC3117fv.this.f5057c, "adding WebView to AdUnityView");
                    if (((ViewGroup) webView.getParent()) == null) {
                        DialogInterface$OnKeyListenerC3117fv fvVar2 = DialogInterface$OnKeyListenerC3117fv.this;
                        fvVar2.addView(fvVar2.f5059f);
                        DialogInterface$OnKeyListenerC3117fv.this.getWebViewFactory().m32934c().m32956d();
                    }
                }
                DialogInterface$OnKeyListenerC3117fv.this.f5072t = true;
                if (DialogInterface$OnKeyListenerC3117fv.this.f5074v) {
                    if (DialogInterface$OnKeyListenerC3117fv.this.f5073u) {
                        DialogInterface$OnKeyListenerC3117fv.this.getWebViewFactory().m32934c().m32956d();
                    }
                } else if (DialogInterface$OnKeyListenerC3117fv.this.f5073u) {
                    EnumC2874bi a = C3192h.m32913a("mraidAdNotSupported");
                    C3160gi c = DialogInterface$OnKeyListenerC3117fv.this.getWebViewFactory().m32934c();
                    if (a.equals(EnumC2874bi.EV_MRAID_NOT_SUPPORTED)) {
                        c.loadUrl("javascript:if(window.mraid && typeof window.mraid.disable === 'function'){window.mraid.disable();}");
                    }
                    HashMap hashMap = new HashMap();
                    DialogInterface$OnKeyListenerC3117fv fvVar3 = DialogInterface$OnKeyListenerC3117fv.this;
                    fvVar3.m33040a(a, hashMap, fvVar3.getAdController(), 0);
                    if (DialogInterface$OnKeyListenerC3117fv.this.m33043a() && DialogInterface$OnKeyListenerC3117fv.this.getCurrentBinding() == 2 && !DialogInterface$OnKeyListenerC3117fv.this.f5053A) {
                        DialogInterface$OnKeyListenerC3117fv.this.getWebViewFactory().m32935b();
                    }
                }
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            String str2 = DialogInterface$OnKeyListenerC3117fv.this.f5057c;
            C3356jq.m32615a(3, str2, "onPageStarted: url = " + str);
            if (str != null && webView != null && webView == DialogInterface$OnKeyListenerC3117fv.this.f5059f) {
                DialogInterface$OnKeyListenerC3117fv.this.m33019d();
                DialogInterface$OnKeyListenerC3117fv.this.getWebViewFactory().m32934c().m32957c();
                DialogInterface$OnKeyListenerC3117fv.this.f5072t = false;
                DialogInterface$OnKeyListenerC3117fv.this.f5073u = false;
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            String str3 = DialogInterface$OnKeyListenerC3117fv.this.f5057c;
            C3356jq.m32615a(3, str3, "onReceivedError: url = " + str2);
            DialogInterface$OnKeyListenerC3117fv.this.dismissProgressDialog();
            Uri parse = Uri.parse(str2);
            if (PlanProductRealmObject.MARKET.equals(parse.getScheme())) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(parse);
                DialogInterface$OnKeyListenerC3117fv.this.getContext().startActivity(intent);
                DialogInterface$OnKeyListenerC3117fv.m33018d(DialogInterface$OnKeyListenerC3117fv.this);
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("errorCode", Integer.toString(EnumC2873bh.kAdDisplayError.f4222z));
            hashMap.put("webViewErrorCode", Integer.toString(i));
            hashMap.put("failingUrl", str2);
            DialogInterface$OnKeyListenerC3117fv fvVar = DialogInterface$OnKeyListenerC3117fv.this;
            fvVar.m33040a(EnumC2874bi.EV_RENDER_FAILED, hashMap, fvVar.getAdController(), 0);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x00e9  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x01f8  */
        @Override // android.webkit.WebViewClient
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean shouldOverrideUrlLoading(android.webkit.WebView r8, java.lang.String r9) {
            /*
                Method dump skipped, instructions count: 743
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.DialogInterface$OnKeyListenerC3117fv.C3133b.shouldOverrideUrlLoading(android.webkit.WebView, java.lang.String):boolean");
        }
    }

    public DialogInterface$OnKeyListenerC3117fv(Context context, AbstractC3518x xVar, AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a aVar) {
        super(context, xVar, aVar);
        setClickable(true);
        if (getContext() instanceof Activity) {
            ((Activity) getContext()).getRequestedOrientation();
        }
        if (getAdUnit() != null) {
            this.f5074v = getAdUnit().f4455u;
        } else {
            C3356jq.m32615a(3, this.f5057c, "adunit is Null");
        }
        setBackgroundColor(-16777216);
    }

    /* renamed from: a */
    public static /* synthetic */ void m33033a(DialogInterface$OnKeyListenerC3117fv fvVar, C3013e eVar) {
        int i = fvVar.getCurrentAdFrame().f4369d.f4427a;
        int i2 = fvVar.getCurrentAdFrame().f4369d.f4428b;
        int b = C3442ky.m32483b(i);
        int b2 = C3442ky.m32483b(i2);
        if (fvVar.f5055a != null) {
            fvVar.f5055a = null;
            fvVar.initLayout();
        }
        AbstractC3518x xVar = eVar.f4699c.f5303d;
        if ((xVar instanceof AbstractC3519y) && ((AbstractC3519y) xVar).m32275v() != null) {
            fvVar.m33042a(b, b2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0078, code lost:
        if (android.text.TextUtils.isEmpty(r0) != false) goto L_0x007b;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void m33032a(com.flurry.sdk.DialogInterface$OnKeyListenerC3117fv r8, com.flurry.sdk.C3138fx r9) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.DialogInterface$OnKeyListenerC3117fv.m33032a(com.flurry.sdk.fv, com.flurry.sdk.fx):void");
    }

    /* renamed from: b */
    public static /* synthetic */ void m33025b(DialogInterface$OnKeyListenerC3117fv fvVar, C3013e eVar) {
        int i = C3442ky.m32481d().x;
        int i2 = C3442ky.m32481d().y;
        String str = fvVar.f5057c;
        C3356jq.m32615a(3, str, "expand to width = " + i + " height = " + i2);
        C3192h hVar = eVar.f4699c;
        AbstractC3518x xVar = hVar.f5303d;
        C2853ay ayVar = hVar.f5304e;
        if ((xVar instanceof AbstractC3519y) && ((AbstractC3519y) xVar).m32275v() != null) {
            fvVar.m33040a(EnumC2874bi.EV_CLICKED, Collections.emptyMap(), ayVar, 0);
            if (!(fvVar.getContext() instanceof Activity)) {
                C3356jq.m32615a(3, fvVar.f5057c, "no activity present");
            } else {
                Activity activity = (Activity) fvVar.getContext();
                if (fvVar.f5070r == null) {
                    String str2 = fvVar.f5057c;
                    C3356jq.m32615a(3, str2, "expand(" + i + "," + i2 + ")");
                    C3484p.m32358a().f6000b.m32297a(fvVar.getContext());
                    C3160gi giVar = fvVar.f5059f;
                    if (!(giVar == null || -1 == fvVar.indexOfChild(giVar))) {
                        fvVar.removeView(fvVar.f5059f);
                    }
                    fvVar.f5069q = activity.getRequestedOrientation();
                    if (fvVar.f5071s == null) {
                        fvVar.f5071s = new FrameLayout(activity);
                        fvVar.f5071s.setBackgroundColor(-16777216);
                        C3160gi giVar2 = fvVar.f5059f;
                        if (giVar2 != null && giVar2.getParent() == null) {
                            fvVar.f5071s.addView(fvVar.f5059f, new FrameLayout.LayoutParams(-1, -1, 17));
                        }
                    }
                    if (fvVar.f5070r == null) {
                        fvVar.f5070r = new Dialog(activity, 16973834);
                        C3020eg.m33277a(fvVar.f5070r.getWindow());
                        fvVar.f5070r.setContentView(fvVar.f5071s, new ViewGroup.LayoutParams(-1, -1));
                        fvVar.f5070r.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.flurry.sdk.fv.3
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                C3356jq.m32615a(3, DialogInterface$OnKeyListenerC3117fv.this.f5057c, "extendedWebViewDialog.onDismiss()");
                                if (DialogInterface$OnKeyListenerC3117fv.this.f5059f != null) {
                                    DialogInterface$OnKeyListenerC3117fv.this.f5059f.loadUrl("javascript:if(window.mraid){window.mraid.close();};");
                                }
                            }
                        });
                        fvVar.f5070r.setCancelable(true);
                        fvVar.f5070r.show();
                    }
                    if (!fvVar.f5075w) {
                        C3006dt.m33322b(activity, C3006dt.m33329a());
                    } else if (fvVar.m33043a()) {
                        C3006dt.m33327a(activity, 1);
                    } else if (fvVar.getAdObject() instanceof AbstractC3519y) {
                        C3006dt.m33328a(activity);
                    }
                }
            }
        }
        if (eVar.f4699c.f5301b.containsKey("url")) {
            fvVar.f5055a = eVar.f4699c.f5301b.get("url");
            ayVar.m33521i();
            C3016ec.m33285b(fvVar.getContext(), fvVar.f5055a, xVar);
        }
    }

    /* renamed from: d */
    public static /* synthetic */ void m33018d(DialogInterface$OnKeyListenerC3117fv fvVar) {
        C3356jq.m32615a(3, fvVar.f5057c, "closing ad unity view");
        AbstractC3066fc fcVar = fvVar.f5058d;
        if (fcVar != null) {
            fcVar.m33171B();
        }
        fvVar.onViewClose();
    }

    /* renamed from: k */
    public static /* synthetic */ void m33010k(DialogInterface$OnKeyListenerC3117fv fvVar) {
        fvVar.f5059f.loadUrl("javascript:(function() { document.getElementById('flurry_interstitial_close').style.display = 'none'; })()");
    }

    /* renamed from: l */
    public static /* synthetic */ void m33009l(DialogInterface$OnKeyListenerC3117fv fvVar) {
        if (fvVar.m33043a() && !fvVar.f5053A) {
            fvVar.f5053A = true;
            fvVar.f5077z = new C2899bz(fvVar.getContext());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(10);
            layoutParams.addRule(11);
            fvVar.f5077z.setDefaultLayoutParams(layoutParams);
            fvVar.f5077z.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.fv.7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogInterface$OnKeyListenerC3117fv.this.m33040a(EnumC2874bi.EV_AD_WILL_CLOSE, Collections.emptyMap(), DialogInterface$OnKeyListenerC3117fv.this.getAdController(), 0);
                }
            });
            fvVar.setMraidButtonVisibility(true);
            fvVar.addView(fvVar.f5077z);
        }
    }

    /* renamed from: p */
    public static /* synthetic */ void m33005p(DialogInterface$OnKeyListenerC3117fv fvVar) {
        C3356jq.m32615a(3, fvVar.f5057c, "activateFlurryJsEnv");
        String currentContent = fvVar.getCurrentContent();
        if (currentContent != null && currentContent.length() > 0 && !currentContent.equals("{}")) {
            String url = fvVar.f5059f.getUrl();
            String b = C3452lf.m32436b(url);
            String a = C3452lf.m32438a(b, url);
            String str = currentContent;
            if (!TextUtils.isEmpty(a)) {
                str = currentContent;
                if (!a.equals(b)) {
                    String str2 = fvVar.f5057c;
                    C3356jq.m32615a(3, str2, "content before {{mustached}} tags replacement = '" + currentContent + "'");
                    str = currentContent.replace(b, a);
                    String str3 = fvVar.f5057c;
                    C3356jq.m32615a(3, str3, "content after {{mustached}} tags replacement = '" + str + "'");
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append("javascript:");
            sb.append("(function(){");
            sb.append("if(!window.Hogan){var Hogan={};(function(Hogan,useArrayBuffer){Hogan.Template=function(renderFunc,text,compiler,options){this.r=renderFunc||this.r;this.c=compiler;this.options=options;this.text=text||\"\";this.buf=useArrayBuffer?[]:\"\"};Hogan.Template.prototype={r:function(context,partials,indent){return\"\"},v:hoganEscape,t:coerceToString,render:function render(context,partials,indent){return this.ri([context],partials||{},indent)},ri:function(context,partials,indent){return this.r(context,partials,indent)},rp:function(name,context,partials,indent){var partial=partials[name];if(!partial){return\"\"}if(this.c&&typeof partial==\"string\"){partial=this.c.compile(partial,this.options)}return partial.ri(context,partials,indent)},rs:function(context,partials,section){var tail=context[context.length-1];if(!isArray(tail)){section(context,partials,this);return}for(var i=0;i<tail.length;i++){context.push(tail[i]);section(context,partials,this);context.pop()}},s:function(val,ctx,partials,inverted,start,end,tags){var pass;if(isArray(val)&&val.length===0){return false}if(typeof val==\"function\"){val=this.ls(val,ctx,partials,inverted,start,end,tags)}pass=(val===\"\")||!!val;if(!inverted&&pass&&ctx){ctx.push((typeof val==\"object\")?val:ctx[ctx.length-1])}return pass},d:function(key,ctx,partials,returnFound){var names=key.split(\".\"),val=this.f(names[0],ctx,partials,returnFound),cx=null;if(key===\".\"&&isArray(ctx[ctx.length-2])){return ctx[ctx.length-1]}for(var i=1;i<names.length;i++){if(val&&typeof val==\"object\"&&names[i] in val){cx=val;val=val[names[i]]}else{val=\"\"}}if(returnFound&&!val){return false}if(!returnFound&&typeof val==\"function\"){ctx.push(cx);val=this.lv(val,ctx,partials);ctx.pop()}return val},f:function(key,ctx,partials,returnFound){var val=false,v=null,found=false;for(var i=ctx.length-1;i>=0;i--){v=ctx[i];if(v&&typeof v==\"object\"&&key in v){val=v[key];found=true;break}}if(!found){return(returnFound)?false:\"\"}if(!returnFound&&typeof val==\"function\"){val=this.lv(val,ctx,partials)}return val},ho:function(val,cx,partials,text,tags){var compiler=this.c;var options=this.options;options.delimiters=tags;var text=val.call(cx,text);text=(text==null)?String(text):text.toString();this.b(compiler.compile(text,options).render(cx,partials));return false},b:(useArrayBuffer)?function(s){this.buf.push(s)}:function(s){this.buf+=s},fl:(useArrayBuffer)?function(){var r=this.buf.join(\"\");this.buf=[];return r}:function(){var r=this.buf;this.buf=\"\";return r},ls:function(val,ctx,partials,inverted,start,end,tags){var cx=ctx[ctx.length-1],t=null;if(!inverted&&this.c&&val.length>0){return this.ho(val,cx,partials,this.text.substring(start,end),tags)}t=val.call(cx);if(typeof t==\"function\"){if(inverted){return true}else{if(this.c){return this.ho(t,cx,partials,this.text.substring(start,end),tags)}}}return t},lv:function(val,ctx,partials){var cx=ctx[ctx.length-1];var result=val.call(cx);if(typeof result==\"function\"){result=coerceToString(result.call(cx));if(this.c&&~result.indexOf(\"{\\u007B\")){return this.c.compile(result,this.options).render(cx,partials)}}return coerceToString(result)}};var rAmp=/&/g,rLt=/</g,rGt=/>/g,rApos=/\\'/g,rQuot=/\\\"/g,hChars=/[&<>\\\"\\']/;function coerceToString(val){return String((val===null||val===undefined)?\"\":val)}function hoganEscape(str){str=coerceToString(str);return hChars.test(str)?str.replace(rAmp,\"&amp;\").replace(rLt,\"&lt;\").replace(rGt,\"&gt;\").replace(rApos,\"&#39;\").replace(rQuot,\"&quot;\"):str}var isArray=Array.isArray||function(a){return Object.prototype.toString.call(a)===\"[object Array]\"}})(typeof exports!==\"undefined\"?exports:Hogan);(function(Hogan){var rIsWhitespace=/\\S/,rQuot=/\\\"/g,rNewline=/\\n/g,rCr=/\\r/g,rSlash=/\\\\/g,tagTypes={\"#\":1,\"^\":2,\"/\":3,\"!\":4,\">\":5,\"<\":6,\"=\":7,_v:8,\"{\":9,\"&\":10};Hogan.scan=function scan(text,delimiters){var len=text.length,IN_TEXT=0,IN_TAG_TYPE=1,IN_TAG=2,state=IN_TEXT,tagType=null,tag=null,buf=\"\",tokens=[],seenTag=false,i=0,lineStart=0,otag=\"{{\",ctag=\"}}\";function addBuf(){if(buf.length>0){tokens.push(new String(buf));buf=\"\"}}function lineIsWhitespace(){var isAllWhitespace=true;for(var j=lineStart;j<tokens.length;j++){isAllWhitespace=(tokens[j].tag&&tagTypes[tokens[j].tag]<tagTypes._v)||(!tokens[j].tag&&tokens[j].match(rIsWhitespace)===null);if(!isAllWhitespace){return false}}return isAllWhitespace}function filterLine(haveSeenTag,noNewLine){addBuf();if(haveSeenTag&&lineIsWhitespace()){for(var j=lineStart,next;j<tokens.length;j++){if(!tokens[j].tag){if((next=tokens[j+1])&&next.tag==\">\"){next.indent=tokens[j].toString()}tokens.splice(j,1)}}}else{if(!noNewLine){tokens.push({tag:\"\\n\"})}}seenTag=false;lineStart=tokens.length}function changeDelimiters(text,index){var close=\"=\"+ctag,closeIndex=text.indexOf(close,index),delimiters=trim(text.substring(text.indexOf(\"=\",index)+1,closeIndex)).split(\" \");otag=delimiters[0];ctag=delimiters[1];return closeIndex+close.length-1}if(delimiters){delimiters=delimiters.split(\" \");otag=delimiters[0];ctag=delimiters[1]}for(i=0;i<len;i++){if(state==IN_TEXT){if(tagChange(otag,text,i)){--i;addBuf();state=IN_TAG_TYPE}else{if(text.charAt(i)==\"\\n\"){filterLine(seenTag)}else{buf+=text.charAt(i)}}}else{if(state==IN_TAG_TYPE){i+=otag.length-1;tag=tagTypes[text.charAt(i+1)];tagType=tag?text.charAt(i+1):\"_v\";if(tagType==\"=\"){i=changeDelimiters(text,i);state=IN_TEXT}else{if(tag){i++}state=IN_TAG}seenTag=i}else{if(tagChange(ctag,text,i)){tokens.push({tag:tagType,n:trim(buf),otag:otag,ctag:ctag,i:(tagType==\"/\")?seenTag-ctag.length:i+otag.length});buf=\"\";i+=ctag.length-1;state=IN_TEXT;if(tagType==\"{\"){if(ctag==\"}}\"){i++}else{cleanTripleStache(tokens[tokens.length-1])}}}else{buf+=text.charAt(i)}}}}filterLine(seenTag,true);return tokens};function cleanTripleStache(token){if(token.n.substr(token.n.length-1)===\"}\"){token.n=token.n.substring(0,token.n.length-1)}}function trim(s){if(s.trim){return s.trim()}return s.replace(/^\\s*|\\s*$/g,\"\")}function tagChange(tag,text,index){if(text.charAt(index)!=tag.charAt(0)){return false}for(var i=1,l=tag.length;i<l;i++){if(text.charAt(index+i)!=tag.charAt(i)){return false}}return true}function buildTree(tokens,kind,stack,customTags){var instructions=[],opener=null,token=null;while(tokens.length>0){token=tokens.shift();if(token.tag==\"#\"||token.tag==\"^\"||isOpener(token,customTags)){stack.push(token);token.nodes=buildTree(tokens,token.tag,stack,customTags);instructions.push(token)}else{if(token.tag==\"/\"){if(stack.length===0){throw new Error(\"Closing tag without opener: /\"+token.n)}opener=stack.pop();if(token.n!=opener.n&&!isCloser(token.n,opener.n,customTags)){throw new Error(\"Nesting error: \"+opener.n+\" vs. \"+token.n)}opener.end=token.i;return instructions}else{instructions.push(token)}}}if(stack.length>0){throw new Error(\"missing closing tag: \"+stack.pop().n)}return instructions}function isOpener(token,tags){for(var i=0,l=tags.length;i<l;i++){if(tags[i].o==token.n){token.tag=\"#\";return true}}}function isCloser(close,open,tags){for(var i=0,l=tags.length;i<l;i++){if(tags[i].c==close&&tags[i].o==open){return true}}}Hogan.generate=function(tree,text,options){var code='var _=this;_.b(i=i||\"\");'+walk(tree)+\"return _.fl();\";if(options.asString){return\"function(c,p,i){\"+code+\";}\"}return new Hogan.Template(new Function(\"c\",\"p\",\"i\",code),text,Hogan,options)};function esc(s){return s.replace(rSlash,\"\\\\\\\\\").replace(rQuot,'\\\\\"').replace(rNewline,\"\\\\n\").replace(rCr,\"\\\\r\")}function chooseMethod(s){return(~s.indexOf(\".\"))?\"d\":\"f\"}function walk(tree){var code=\"\";for(var i=0,l=tree.length;i<l;i++){var tag=tree[i].tag;if(tag==\"#\"){code+=section(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n),tree[i].i,tree[i].end,tree[i].otag+\" \"+tree[i].ctag)}else{if(tag==\"^\"){code+=invertedSection(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n))}else{if(tag==\"<\"||tag==\">\"){code+=partial(tree[i])}else{if(tag==\"{\"||tag==\"&\"){code+=tripleStache(tree[i].n,chooseMethod(tree[i].n))}else{if(tag==\"\\n\"){code+=text('\"\\\\n\"'+(tree.length-1==i?\"\":\" + i\"))}else{if(tag==\"_v\"){code+=variable(tree[i].n,chooseMethod(tree[i].n))}else{if(tag===undefined){code+=text('\"'+esc(tree[i])+'\"')}}}}}}}}return code}function section(nodes,id,method,start,end,tags){return\"if(_.s(_.\"+method+'(\"'+esc(id)+'\",c,p,1),c,p,0,'+start+\",\"+end+',\"'+tags+'\")){_.rs(c,p,function(c,p,_){'+walk(nodes)+\"});c.pop();}\"}function invertedSection(nodes,id,method){return\"if(!_.s(_.\"+method+'(\"'+esc(id)+'\",c,p,1),c,p,1,0,0,\"\")){'+walk(nodes)+\"};\"}function partial(tok){return'_.b(_.rp(\"'+esc(tok.n)+'\",c,p,\"'+(tok.indent||\"\")+'\"));'}function tripleStache(id,method){return\"_.b(_.t(_.\"+method+'(\"'+esc(id)+'\",c,p,0)));'}function variable(id,method){return\"_.b(_.v(_.\"+method+'(\"'+esc(id)+'\",c,p,0)));'}function text(id){return\"_.b(\"+id+\");\"}Hogan.parse=function(tokens,text,options){options=options||{};return buildTree(tokens,\"\",[],options.sectionTags||[])},Hogan.cache={};Hogan.compile=function(text,options){options=options||{};var key=text+\"||\"+!!options.asString;var t=this.cache[key];if(t){return t}t=this.generate(this.parse(this.scan(text,options.delimiters),text,options),text,options);return this.cache[key]=t}})(typeof exports!==\"undefined\"?exports:Hogan);window.Hogan=Hogan;}");
            sb.append("if(!window.flurryadapter){var flurryBridgeCtor=function(w){var flurryadapter={};flurryadapter.flurryCallQueue=[];flurryadapter.flurryCallInProgress=false;flurryadapter.callComplete=function(cmd){if(cmd.length > 0){try{if(window.mraid){ mraid.flurryBridgeListenerEvent(cmd);}}catch(error){ }} if(this.flurryCallQueue.length==0){this.flurryCallInProgress=false;return}var adapterCall=this.flurryCallQueue.splice(0,1)[0];this.executeNativeCall(adapterCall);return\"OK\"};flurryadapter.executeCall=function(command){var adapterCall=\"flurry://flurrycall?event=\"+command;var value;for(var i=1;i<arguments.length;i+=2){value=arguments[i+1];if(value==null)continue;adapterCall+=\"&\"+arguments[i]+\"=\"+escape(value)}if(this.flurryCallInProgress)this.flurryCallQueue.push(adapterCall);else this.executeNativeCall(adapterCall)};flurryadapter.executeNativeCall=function(adapterCall){if(adapterCall.length==0)return;this.flurryCallInProgress=true;w.location=adapterCall};return flurryadapter};window.flurryadapter=flurryBridgeCtor(window);}");
            sb.append("if(!window.flurryAdapterAvailable){window.flurryAdapterAvailable=true;if(typeof window.FlurryAdapterReady === 'function'){window.FlurryAdapterReady();} }");
            String f = C3445la.m32452f(str);
            sb.append("var content='");
            sb.append(f);
            sb.append("';var compiled=window.Hogan.compile(document.body.innerHTML);var rendered=compiled.render(JSON.parse(content));document.body.innerHTML=rendered;");
            sb.append("})();");
            C3160gi giVar = fvVar.f5059f;
            if (giVar != null) {
                giVar.loadUrl(sb.toString());
            }
        }
    }

    /* renamed from: a */
    public final Uri m33029a(String str) {
        Uri uri;
        File c;
        try {
            C3356jq.m32615a(3, this.f5057c, "Precaching: Getting video from cache: " + str);
            C2806af afVar = C3484p.m32358a().f6006h;
            uri = null;
            if (C2806af.m33637c(getAdObject(), str) != null) {
                uri = Uri.parse("file://" + c.getAbsolutePath());
            }
        } catch (Exception e) {
            C3356jq.m32614a(3, this.f5057c, "Precaching: Error accessing cached file.", e);
            uri = null;
        }
        Uri uri2 = uri;
        if (uri == null) {
            C3356jq.m32615a(3, this.f5057c, "Precaching: Error using cached file. Loading with url: " + str);
            uri2 = Uri.parse(str);
        }
        return uri2;
    }

    /* renamed from: a */
    public final void m33042a(int i, int i2) {
        if (!(getContext() instanceof Activity)) {
            C3356jq.m32615a(3, this.f5057c, "no activity present");
            return;
        }
        Activity activity = (Activity) getContext();
        C3484p.m32358a().f6000b.m32294b(getContext());
        if (this.f5070r != null) {
            String str = this.f5057c;
            C3356jq.m32615a(3, str, "collapse(" + i + "," + i2 + ")");
            Dialog dialog = this.f5070r;
            if (dialog != null && dialog.isShowing()) {
                this.f5070r.hide();
                this.f5070r.setOnDismissListener(null);
                this.f5070r.dismiss();
            }
            this.f5070r = null;
            C3006dt.m33327a(activity, this.f5069q);
            FrameLayout frameLayout = this.f5071s;
            if (frameLayout != null) {
                C3160gi giVar = this.f5059f;
                if (!(giVar == null || -1 == frameLayout.indexOfChild(giVar))) {
                    this.f5071s.removeView(this.f5059f);
                }
                this.f5071s = null;
            }
            C3160gi giVar2 = this.f5059f;
            if (giVar2 != null && giVar2.getParent() == null) {
                addView(this.f5059f);
            }
        }
    }

    /* renamed from: a */
    public final void m33040a(EnumC2874bi biVar, Map<String, String> map, C2853ay ayVar, int i) {
        String str = this.f5057c;
        C3356jq.m32615a(3, str, "fireEvent(event=" + biVar + ",params=" + map + ")");
        C3007du.m33321a(biVar, map, getContext(), getAdObject(), ayVar, i);
    }

    /* renamed from: a */
    public final void m33028a(String str, int i) {
        if (str != null) {
            Context context = getContext();
            if (this.f5058d == null) {
                this.f5058d = C3073fd.m33154a(context, i, getAdObject(), this.f5054B);
                this.f5058d.setVideoUri(m33029a(str));
                this.f5058d.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                this.f5058d.initLayout();
            }
            addView(this.f5058d);
        }
    }

    /* renamed from: a */
    public final boolean m33043a() {
        return getCurrentFormat().equals("takeover");
    }

    /* renamed from: a */
    public final boolean m33041a(View view) {
        ViewParent parent = view.getParent();
        return parent != null && parent == this;
    }

    /* renamed from: b */
    public final void m33027b() {
        synchronized (this) {
            if (!m33022c()) {
                C3356jq.m32615a(3, this.f5057c, "initializeFlurryJsEnv");
                if (this.f5059f != null) {
                    this.f5059f.loadUrl("javascript:(function() {var Hogan={};(function(Hogan,useArrayBuffer){Hogan.Template=function(renderFunc,text,compiler,options){this.r=renderFunc||this.r;this.c=compiler;this.options=options;this.text=text||\"\";this.buf=useArrayBuffer?[]:\"\"};Hogan.Template.prototype={r:function(context,partials,indent){return\"\"},v:hoganEscape,t:coerceToString,render:function render(context,partials,indent){return this.ri([context],partials||{},indent)},ri:function(context,partials,indent){return this.r(context,partials,indent)},rp:function(name,context,partials,indent){var partial=partials[name];if(!partial){return\"\"}if(this.c&&typeof partial==\"string\"){partial=this.c.compile(partial,this.options)}return partial.ri(context,partials,indent)},rs:function(context,partials,section){var tail=context[context.length-1];if(!isArray(tail)){section(context,partials,this);return}for(var i=0;i<tail.length;i++){context.push(tail[i]);section(context,partials,this);context.pop()}},s:function(val,ctx,partials,inverted,start,end,tags){var pass;if(isArray(val)&&val.length===0){return false}if(typeof val==\"function\"){val=this.ls(val,ctx,partials,inverted,start,end,tags)}pass=(val===\"\")||!!val;if(!inverted&&pass&&ctx){ctx.push((typeof val==\"object\")?val:ctx[ctx.length-1])}return pass},d:function(key,ctx,partials,returnFound){var names=key.split(\".\"),val=this.f(names[0],ctx,partials,returnFound),cx=null;if(key===\".\"&&isArray(ctx[ctx.length-2])){return ctx[ctx.length-1]}for(var i=1;i<names.length;i++){if(val&&typeof val==\"object\"&&names[i] in val){cx=val;val=val[names[i]]}else{val=\"\"}}if(returnFound&&!val){return false}if(!returnFound&&typeof val==\"function\"){ctx.push(cx);val=this.lv(val,ctx,partials);ctx.pop()}return val},f:function(key,ctx,partials,returnFound){var val=false,v=null,found=false;for(var i=ctx.length-1;i>=0;i--){v=ctx[i];if(v&&typeof v==\"object\"&&key in v){val=v[key];found=true;break}}if(!found){return(returnFound)?false:\"\"}if(!returnFound&&typeof val==\"function\"){val=this.lv(val,ctx,partials)}return val},ho:function(val,cx,partials,text,tags){var compiler=this.c;var options=this.options;options.delimiters=tags;var text=val.call(cx,text);text=(text==null)?String(text):text.toString();this.b(compiler.compile(text,options).render(cx,partials));return false},b:(useArrayBuffer)?function(s){this.buf.push(s)}:function(s){this.buf+=s},fl:(useArrayBuffer)?function(){var r=this.buf.join(\"\");this.buf=[];return r}:function(){var r=this.buf;this.buf=\"\";return r},ls:function(val,ctx,partials,inverted,start,end,tags){var cx=ctx[ctx.length-1],t=null;if(!inverted&&this.c&&val.length>0){return this.ho(val,cx,partials,this.text.substring(start,end),tags)}t=val.call(cx);if(typeof t==\"function\"){if(inverted){return true}else{if(this.c){return this.ho(t,cx,partials,this.text.substring(start,end),tags)}}}return t},lv:function(val,ctx,partials){var cx=ctx[ctx.length-1];var result=val.call(cx);if(typeof result==\"function\"){result=coerceToString(result.call(cx));if(this.c&&~result.indexOf(\"{\\u007B\")){return this.c.compile(result,this.options).render(cx,partials)}}return coerceToString(result)}};var rAmp=/&/g,rLt=/</g,rGt=/>/g,rApos=/\\'/g,rQuot=/\\\"/g,hChars=/[&<>\\\"\\']/;function coerceToString(val){return String((val===null||val===undefined)?\"\":val)}function hoganEscape(str){str=coerceToString(str);return hChars.test(str)?str.replace(rAmp,\"&amp;\").replace(rLt,\"&lt;\").replace(rGt,\"&gt;\").replace(rApos,\"&#39;\").replace(rQuot,\"&quot;\"):str}var isArray=Array.isArray||function(a){return Object.prototype.toString.call(a)===\"[object Array]\"}})(typeof exports!==\"undefined\"?exports:Hogan);(function(Hogan){var rIsWhitespace=/\\S/,rQuot=/\\\"/g,rNewline=/\\n/g,rCr=/\\r/g,rSlash=/\\\\/g,tagTypes={\"#\":1,\"^\":2,\"/\":3,\"!\":4,\">\":5,\"<\":6,\"=\":7,_v:8,\"{\":9,\"&\":10};Hogan.scan=function scan(text,delimiters){var len=text.length,IN_TEXT=0,IN_TAG_TYPE=1,IN_TAG=2,state=IN_TEXT,tagType=null,tag=null,buf=\"\",tokens=[],seenTag=false,i=0,lineStart=0,otag=\"{{\",ctag=\"}}\";function addBuf(){if(buf.length>0){tokens.push(new String(buf));buf=\"\"}}function lineIsWhitespace(){var isAllWhitespace=true;for(var j=lineStart;j<tokens.length;j++){isAllWhitespace=(tokens[j].tag&&tagTypes[tokens[j].tag]<tagTypes._v)||(!tokens[j].tag&&tokens[j].match(rIsWhitespace)===null);if(!isAllWhitespace){return false}}return isAllWhitespace}function filterLine(haveSeenTag,noNewLine){addBuf();if(haveSeenTag&&lineIsWhitespace()){for(var j=lineStart,next;j<tokens.length;j++){if(!tokens[j].tag){if((next=tokens[j+1])&&next.tag==\">\"){next.indent=tokens[j].toString()}tokens.splice(j,1)}}}else{if(!noNewLine){tokens.push({tag:\"\\n\"})}}seenTag=false;lineStart=tokens.length}function changeDelimiters(text,index){var close=\"=\"+ctag,closeIndex=text.indexOf(close,index),delimiters=trim(text.substring(text.indexOf(\"=\",index)+1,closeIndex)).split(\" \");otag=delimiters[0];ctag=delimiters[1];return closeIndex+close.length-1}if(delimiters){delimiters=delimiters.split(\" \");otag=delimiters[0];ctag=delimiters[1]}for(i=0;i<len;i++){if(state==IN_TEXT){if(tagChange(otag,text,i)){--i;addBuf();state=IN_TAG_TYPE}else{if(text.charAt(i)==\"\\n\"){filterLine(seenTag)}else{buf+=text.charAt(i)}}}else{if(state==IN_TAG_TYPE){i+=otag.length-1;tag=tagTypes[text.charAt(i+1)];tagType=tag?text.charAt(i+1):\"_v\";if(tagType==\"=\"){i=changeDelimiters(text,i);state=IN_TEXT}else{if(tag){i++}state=IN_TAG}seenTag=i}else{if(tagChange(ctag,text,i)){tokens.push({tag:tagType,n:trim(buf),otag:otag,ctag:ctag,i:(tagType==\"/\")?seenTag-ctag.length:i+otag.length});buf=\"\";i+=ctag.length-1;state=IN_TEXT;if(tagType==\"{\"){if(ctag==\"}}\"){i++}else{cleanTripleStache(tokens[tokens.length-1])}}}else{buf+=text.charAt(i)}}}}filterLine(seenTag,true);return tokens};function cleanTripleStache(token){if(token.n.substr(token.n.length-1)===\"}\"){token.n=token.n.substring(0,token.n.length-1)}}function trim(s){if(s.trim){return s.trim()}return s.replace(/^\\s*|\\s*$/g,\"\")}function tagChange(tag,text,index){if(text.charAt(index)!=tag.charAt(0)){return false}for(var i=1,l=tag.length;i<l;i++){if(text.charAt(index+i)!=tag.charAt(i)){return false}}return true}function buildTree(tokens,kind,stack,customTags){var instructions=[],opener=null,token=null;while(tokens.length>0){token=tokens.shift();if(token.tag==\"#\"||token.tag==\"^\"||isOpener(token,customTags)){stack.push(token);token.nodes=buildTree(tokens,token.tag,stack,customTags);instructions.push(token)}else{if(token.tag==\"/\"){if(stack.length===0){throw new Error(\"Closing tag without opener: /\"+token.n)}opener=stack.pop();if(token.n!=opener.n&&!isCloser(token.n,opener.n,customTags)){throw new Error(\"Nesting error: \"+opener.n+\" vs. \"+token.n)}opener.end=token.i;return instructions}else{instructions.push(token)}}}if(stack.length>0){throw new Error(\"missing closing tag: \"+stack.pop().n)}return instructions}function isOpener(token,tags){for(var i=0,l=tags.length;i<l;i++){if(tags[i].o==token.n){token.tag=\"#\";return true}}}function isCloser(close,open,tags){for(var i=0,l=tags.length;i<l;i++){if(tags[i].c==close&&tags[i].o==open){return true}}}Hogan.generate=function(tree,text,options){var code='var _=this;_.b(i=i||\"\");'+walk(tree)+\"return _.fl();\";if(options.asString){return\"function(c,p,i){\"+code+\";}\"}return new Hogan.Template(new Function(\"c\",\"p\",\"i\",code),text,Hogan,options)};function esc(s){return s.replace(rSlash,\"\\\\\\\\\").replace(rQuot,'\\\\\"').replace(rNewline,\"\\\\n\").replace(rCr,\"\\\\r\")}function chooseMethod(s){return(~s.indexOf(\".\"))?\"d\":\"f\"}function walk(tree){var code=\"\";for(var i=0,l=tree.length;i<l;i++){var tag=tree[i].tag;if(tag==\"#\"){code+=section(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n),tree[i].i,tree[i].end,tree[i].otag+\" \"+tree[i].ctag)}else{if(tag==\"^\"){code+=invertedSection(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n))}else{if(tag==\"<\"||tag==\">\"){code+=partial(tree[i])}else{if(tag==\"{\"||tag==\"&\"){code+=tripleStache(tree[i].n,chooseMethod(tree[i].n))}else{if(tag==\"\\n\"){code+=text('\"\\\\n\"'+(tree.length-1==i?\"\":\" + i\"))}else{if(tag==\"_v\"){code+=variable(tree[i].n,chooseMethod(tree[i].n))}else{if(tag===undefined){code+=text('\"'+esc(tree[i])+'\"')}}}}}}}}return code}function section(nodes,id,method,start,end,tags){return\"if(_.s(_.\"+method+'(\"'+esc(id)+'\",c,p,1),c,p,0,'+start+\",\"+end+',\"'+tags+'\")){_.rs(c,p,function(c,p,_){'+walk(nodes)+\"});c.pop();}\"}function invertedSection(nodes,id,method){return\"if(!_.s(_.\"+method+'(\"'+esc(id)+'\",c,p,1),c,p,1,0,0,\"\")){'+walk(nodes)+\"};\"}function partial(tok){return'_.b(_.rp(\"'+esc(tok.n)+'\",c,p,\"'+(tok.indent||\"\")+'\"));'}function tripleStache(id,method){return\"_.b(_.t(_.\"+method+'(\"'+esc(id)+'\",c,p,0)));'}function variable(id,method){return\"_.b(_.v(_.\"+method+'(\"'+esc(id)+'\",c,p,0)));'}function text(id){return\"_.b(\"+id+\");\"}Hogan.parse=function(tokens,text,options){options=options||{};return buildTree(tokens,\"\",[],options.sectionTags||[])},Hogan.cache={};Hogan.compile=function(text,options){options=options||{};var key=text+\"||\"+!!options.asString;var t=this.cache[key];if(t){return t}t=this.generate(this.parse(this.scan(text,options.delimiters),text,options),text,options);return this.cache[key]=t}})(typeof exports!==\"undefined\"?exports:Hogan);var flurryBridgeCtor=function(w){var flurryadapter={};flurryadapter.flurryCallQueue=[];flurryadapter.flurryCallInProgress=false;flurryadapter.callComplete=function(cmd){if(cmd.length > 0){try{if(window.mraid){ mraid.flurryBridgeListenerEvent(cmd);}}catch(error){ }} if(this.flurryCallQueue.length==0){this.flurryCallInProgress=false;return}var adapterCall=this.flurryCallQueue.splice(0,1)[0];this.executeNativeCall(adapterCall);return\"OK\"};flurryadapter.executeCall=function(command){var adapterCall=\"flurry://flurrycall?event=\"+command;var value;for(var i=1;i<arguments.length;i+=2){value=arguments[i+1];if(value==null)continue;adapterCall+=\"&\"+arguments[i]+\"=\"+escape(value)}if(this.flurryCallInProgress)this.flurryCallQueue.push(adapterCall);else this.executeNativeCall(adapterCall)};flurryadapter.executeNativeCall=function(adapterCall){if(adapterCall.length==0)return;this.flurryCallInProgress=true;w.location=adapterCall};return flurryadapter};window.Hogan=Hogan;window.flurryadapter=flurryBridgeCtor(window);window.flurryAdapterAvailable=true;if(typeof window.FlurryAdapterReady === 'function'){window.FlurryAdapterReady();}})();");
                }
                setFlurryJsEnvInitialized(true);
            }
        }
    }

    /* renamed from: b */
    public final void m33023b(final String str) {
        C3363jx jxVar = new C3363jx();
        jxVar.f5766g = str;
        jxVar.f5941u = 10000;
        jxVar.f5754d = new C3418km();
        jxVar.f5751a = new C3363jx.AbstractC3365a<Void, String>() { // from class: com.flurry.sdk.fv.6
            @Override // com.flurry.sdk.C3363jx.AbstractC3365a
            /* renamed from: a */
            public final /* synthetic */ void mo32321a(C3363jx<Void, String> jxVar2, String str2) {
                final String str3 = str2;
                int i = jxVar2.f5776q;
                String str4 = DialogInterface$OnKeyListenerC3117fv.this.f5057c;
                C3356jq.m32615a(3, str4, "Prerender: HTTP status code is:" + i + " for url: " + str);
                if (jxVar2.m32580b()) {
                    final String c = C3452lf.m32434c(str);
                    if (DialogInterface$OnKeyListenerC3117fv.this.getAdController().m33535a(EnumC2874bi.EV_RENDERED.f4289an)) {
                        DialogInterface$OnKeyListenerC3117fv.this.m33040a(EnumC2874bi.EV_RENDERED, Collections.emptyMap(), DialogInterface$OnKeyListenerC3117fv.this.getAdController(), 0);
                        DialogInterface$OnKeyListenerC3117fv.this.getAdController().m33530b(EnumC2874bi.EV_RENDERED.f4289an);
                    }
                    C3331jb.m32681a().m32678a(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.fv.6.1
                        @Override // com.flurry.sdk.AbstractRunnableC3447lc
                        /* renamed from: a */
                        public final void mo32300a() {
                            if (DialogInterface$OnKeyListenerC3117fv.this.f5059f != null) {
                                C3160gi giVar = DialogInterface$OnKeyListenerC3117fv.this.f5059f;
                                String str5 = c;
                                giVar.loadDataWithBaseURL(str5, str3, "text/html", JsonRequest.PROTOCOL_CHARSET, str5);
                            }
                        }
                    });
                    return;
                }
                C3331jb.m32681a().m32678a(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.fv.6.2
                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                    /* renamed from: a */
                    public final void mo32300a() {
                        HashMap hashMap = new HashMap();
                        hashMap.put("errorCode", Integer.toString(EnumC2873bh.kPrerenderDownloadFailed.f4222z));
                        DialogInterface$OnKeyListenerC3117fv fvVar = DialogInterface$OnKeyListenerC3117fv.this;
                        fvVar.m33040a(EnumC2874bi.EV_RENDER_FAILED, hashMap, fvVar.getAdController(), 0);
                    }
                });
            }
        };
        C3323iz.m32690a().m32623a((Object) this, (DialogInterface$OnKeyListenerC3117fv) jxVar);
    }

    /* renamed from: c */
    public final void m33020c(String str) {
        if (this.f5059f != null) {
            String str2 = this.f5057c;
            C3356jq.m32615a(3, str2, "Callcomplete " + str);
            C3160gi giVar = this.f5059f;
            giVar.loadUrl("javascript:flurryadapter.callComplete('" + str + "');");
        }
    }

    /* renamed from: c */
    public final boolean m33022c() {
        boolean z;
        synchronized (this) {
            z = this.f5060h;
        }
        return z;
    }

    @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    public void cleanupLayout() {
        AbstractC3066fc fcVar = this.f5058d;
        if (fcVar != null) {
            fcVar.cleanupLayout();
            this.f5058d = null;
        }
        C3345jm.m32636a().m32634a(this.f5056b);
    }

    /* renamed from: d */
    public final void m33019d() {
        synchronized (this) {
            setFlurryJsEnvInitialized(false);
        }
    }

    /* renamed from: e */
    public final void m33017e() {
        int a;
        if (getContext() instanceof Activity) {
            Activity activity = (Activity) getContext();
            if (m33043a() && -1 != (a = C3006dt.m33325a(activity, getAdUnit().f4459y))) {
                C3006dt.m33322b(activity, a);
            }
        }
    }

    public final C2904ca getCurrentAdFrame() {
        return getAdController().m33528c();
    }

    public final int getCurrentBinding() {
        return getCurrentAdFrame().f4366a;
    }

    public final String getCurrentContent() {
        return getCurrentAdFrame().f4368c;
    }

    public final String getCurrentDisplay() {
        return getCurrentAdFrame().f4367b;
    }

    public final String getCurrentFormat() {
        return getCurrentAdFrame().f4369d.f4430d;
    }

    public final C3176gn getWebViewFactory() {
        C3176gn gnVar = this.f5063k;
        C3176gn gnVar2 = gnVar;
        if (gnVar == null) {
            this.f5063k = new C3176gn();
            C3356jq.m32602e("WebViewFactory:", "Created new WebViewFactory: " + this.f5063k);
            gnVar2 = this.f5063k;
        }
        return gnVar2;
    }

    @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    @SuppressLint({"InlinedApi"})
    public void initLayout() {
        String str;
        String str2 = this.f5057c;
        C3356jq.m32615a(3, str2, "initLayout: ad creative layout: {width = " + getCurrentAdFrame().f4369d.f4427a + ", height = " + getCurrentAdFrame().f4369d.f4428b + ", adFrameIndex = " + getAdController().f4111b.f4150e + ", context = " + getContext() + CssParser.BLOCK_END);
        cleanupLayout();
        C3345jm.m32636a().m32632a("com.flurry.android.impl.ads.views.AdViewEvent", this.f5056b);
        Context context = getContext();
        removeAllViews();
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestLayout();
        int currentBinding = getCurrentBinding();
        if (currentBinding == 1) {
            if (this.f5059f == null) {
                getWebViewFactory().m32938a();
                C3176gn webViewFactory = getWebViewFactory();
                getAdObject();
                webViewFactory.m32937a(context, getCurrentAdFrame());
                this.f5059f = getWebViewFactory().m32934c();
                this.f5059f.getSettings().setJavaScriptEnabled(true);
                if (Build.VERSION.SDK_INT >= 21) {
                    this.f5059f.getSettings().setMixedContentMode(0);
                }
                this.f5059f.setVerticalScrollBarEnabled(false);
                this.f5059f.setHorizontalScrollBarEnabled(false);
                this.f5059f.setBackgroundColor(0);
                this.f5059f.clearCache(false);
                this.f5062j = new C3129a(this, (byte) 0);
                this.f5059f.setWebChromeClient(this.f5062j);
                this.f5061i = new C3133b(this, (byte) 0);
                this.f5059f.setWebViewClient(this.f5061i);
            }
            String str3 = this.f5055a;
            if (str3 != null) {
                m33023b(str3);
            } else if (getAdFrameIndex() != 0 || (str = getAdController().f4111b.f4154i) == null) {
                m33023b(getCurrentDisplay());
            } else {
                String c = C3452lf.m32434c(getCurrentDisplay());
                this.f5059f.loadDataWithBaseURL(c, str, "text/html", JsonRequest.PROTOCOL_CHARSET, c);
                if (getAdController().m33535a(EnumC2874bi.EV_RENDERED.f4289an)) {
                    m33040a(EnumC2874bi.EV_RENDERED, Collections.emptyMap(), getAdController(), 0);
                    getAdController().m33530b(EnumC2874bi.EV_RENDERED.f4289an);
                }
                if (this.f5073u) {
                    m33020c("adLoadComplete");
                }
            }
            this.f5059f.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            dismissProgressDialog();
            if (m33043a()) {
                showProgressDialog();
            }
            m33017e();
        } else if (currentBinding == 2) {
            C3021eh b = getAdController().m33531b(getAdFrameIndex());
            if (b != null) {
                m33028a(b.m33276a(), C3075fe.f4888a);
                return;
            }
            if (this.f5059f == null) {
                getWebViewFactory().m32938a();
                C3176gn webViewFactory2 = getWebViewFactory();
                getAdObject();
                webViewFactory2.m32937a(context, getCurrentAdFrame());
                this.f5059f = getWebViewFactory().m32934c();
                this.f5059f.getSettings().setJavaScriptEnabled(true);
                if (Build.VERSION.SDK_INT >= 21) {
                    this.f5059f.getSettings().setMixedContentMode(0);
                }
                this.f5059f.getSettings().setLoadWithOverviewMode(true);
                this.f5059f.setVerticalScrollBarEnabled(false);
                this.f5059f.setHorizontalScrollBarEnabled(false);
                this.f5059f.setBackgroundColor(0);
                this.f5059f.clearCache(false);
                this.f5062j = new C3129a(this, (byte) 0);
                this.f5059f.setWebChromeClient(this.f5062j);
                this.f5061i = new C3133b(this, (byte) 0);
                this.f5059f.setWebViewClient(this.f5061i);
            }
            this.f5059f.loadDataWithBaseURL("base://url/", getCurrentDisplay(), "text/html", JsonRequest.PROTOCOL_CHARSET, "base://url/");
            if (getAdController().m33535a(EnumC2874bi.EV_RENDERED.f4289an)) {
                m33040a(EnumC2874bi.EV_RENDERED, Collections.emptyMap(), getAdController(), 0);
                getAdController().m33530b(EnumC2874bi.EV_RENDERED.f4289an);
            }
            if (this.f5073u) {
                m33020c("adLoadComplete");
            }
            this.f5059f.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            dismissProgressDialog();
            if (m33043a()) {
                showProgressDialog();
            }
            m33017e();
        } else if (currentBinding != 3) {
            HashMap hashMap = new HashMap();
            hashMap.put("errorCode", Integer.toString(EnumC2873bh.kInvalidAdUnit.f4222z));
            m33040a(EnumC2874bi.EV_RENDER_FAILED, hashMap, getAdController(), 0);
        } else {
            m33028a(getCurrentDisplay(), C3075fe.f4890c);
        }
    }

    @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    @TargetApi(11)
    public void onActivityDestroy() {
        C3356jq.m32615a(3, this.f5057c, "onDestroy");
        AlertDialog alertDialog = this.f5076y;
        if (alertDialog != null && alertDialog.isShowing()) {
            this.f5076y.dismiss();
            this.f5076y = null;
        }
        dismissProgressDialog();
        AbstractC3066fc fcVar = this.f5058d;
        if (fcVar != null) {
            fcVar.onActivityDestroy();
        }
        if (this.f5059f != null) {
            WebChromeClient webChromeClient = this.f5062j;
            if (webChromeClient != null) {
                webChromeClient.onHideCustomView();
            }
            if (this.f5070r != null) {
                m33042a(0, 0);
            }
            cleanupLayout();
            removeView(this.f5059f);
            this.f5059f.stopLoading();
            if (Build.VERSION.SDK_INT >= 11) {
                this.f5059f.onPause();
            }
            this.f5059f.destroy();
            this.f5059f = null;
            getWebViewFactory().m32938a();
            this.f5063k = null;
        }
    }

    @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    @TargetApi(11)
    public void onActivityPause() {
        C3160gi giVar = this.f5059f;
        if (giVar != null && Build.VERSION.SDK_INT >= 11) {
            giVar.onPause();
        }
        AbstractC3066fc fcVar = this.f5058d;
        if (fcVar != null) {
            fcVar.onActivityPause();
        }
    }

    @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    @TargetApi(11)
    public void onActivityResume() {
        C3345jm.m32636a().m32632a("com.flurry.android.impl.ads.views.AdViewEvent", this.f5056b);
        C3160gi giVar = this.f5059f;
        if (giVar != null && Build.VERSION.SDK_INT >= 11) {
            giVar.onResume();
        }
        AbstractC3066fc fcVar = this.f5058d;
        if (fcVar != null) {
            fcVar.onActivityResume();
        }
        AbstractC3066fc fcVar2 = this.f5058d;
    }

    @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    @TargetApi(11)
    public void onActivityStop() {
        AlertDialog alertDialog = this.f5076y;
        if (alertDialog != null && alertDialog.isShowing()) {
            this.f5076y.dismiss();
            this.f5076y = null;
        }
        AbstractC3066fc fcVar = this.f5058d;
        if (fcVar != null) {
            fcVar.onActivityStop();
        }
        dismissProgressDialog();
    }

    @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    public boolean onBackKey() {
        m33040a(EnumC2874bi.EV_AD_WILL_CLOSE, Collections.emptyMap(), getAdController(), 0);
        return true;
    }

    @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    public void onViewLoadTimeout() {
        HashMap hashMap = new HashMap();
        hashMap.put("errorCode", Integer.toString(EnumC2873bh.kNoNetworkConnectivity.f4222z));
        C3007du.m33321a(EnumC2874bi.EV_AD_WILL_CLOSE, hashMap, getContext(), getAdObject(), getAdController(), 0);
    }

    public final void setFlurryJsEnvInitialized(boolean z) {
        synchronized (this) {
            this.f5060h = z;
        }
    }

    public void setMraidButtonVisibility(boolean z) {
        C2899bz bzVar = this.f5077z;
        if (bzVar == null) {
            return;
        }
        if (z) {
            bzVar.setVisibility(0);
        } else {
            bzVar.setVisibility(4);
        }
    }
}
