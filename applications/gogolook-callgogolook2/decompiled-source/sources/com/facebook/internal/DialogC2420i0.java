package com.facebook.internal;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.common.R$drawable;
import com.facebook.common.R$string;
import com.facebook.common.R$style;
import com.facebook.share.p046d.C2633s;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import org.json.JSONArray;
import org.json.JSONObject;
import p081h.p154f.C6130j;
import p081h.p154f.C6131k;
import p081h.p154f.C6133l;
import p081h.p154f.C6134m;
import p081h.p154f.C6135n;
import p081h.p154f.C6148s;
import zendesk.support.CreateRequest;
/* renamed from: com.facebook.internal.i0 */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/i0.class */
public class DialogC2420i0 extends Dialog {

    /* renamed from: m */
    public static final int f3020m = R$style.com_facebook_activity_theme;

    /* renamed from: n */
    public static volatile int f3021n;

    /* renamed from: a */
    public String f3022a;

    /* renamed from: b */
    public String f3023b;

    /* renamed from: c */
    public AbstractC2427g f3024c;

    /* renamed from: d */
    public WebView f3025d;

    /* renamed from: e */
    public ProgressDialog f3026e;

    /* renamed from: f */
    public ImageView f3027f;

    /* renamed from: g */
    public FrameLayout f3028g;

    /* renamed from: h */
    public AsyncTaskC2428h f3029h;

    /* renamed from: i */
    public boolean f3030i;

    /* renamed from: j */
    public boolean f3031j;

    /* renamed from: k */
    public boolean f3032k;

    /* renamed from: l */
    public WindowManager.LayoutParams f3033l;

    /* renamed from: com.facebook.internal.i0$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/i0$a.class */
    public class DialogInterface$OnCancelListenerC2421a implements DialogInterface.OnCancelListener {
        public DialogInterface$OnCancelListenerC2421a() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            DialogC2420i0.this.cancel();
        }
    }

    /* renamed from: com.facebook.internal.i0$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/i0$b.class */
    public class View$OnClickListenerC2422b implements View.OnClickListener {
        public View$OnClickListenerC2422b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC2420i0.this.cancel();
        }
    }

    /* renamed from: com.facebook.internal.i0$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/i0$c.class */
    public class C2423c extends WebView {
        public C2423c(DialogC2420i0 i0Var, Context context) {
            super(context);
        }

        @Override // android.webkit.WebView, android.view.View
        public void onWindowFocusChanged(boolean z) {
            try {
                super.onWindowFocusChanged(z);
            } catch (NullPointerException e) {
            }
        }
    }

    /* renamed from: com.facebook.internal.i0$d */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/i0$d.class */
    public class View$OnTouchListenerC2424d implements View.OnTouchListener {
        public View$OnTouchListenerC2424d(DialogC2420i0 i0Var) {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (view.hasFocus()) {
                return false;
            }
            view.requestFocus();
            return false;
        }
    }

    /* renamed from: com.facebook.internal.i0$e */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/i0$e.class */
    public static class C2425e {

        /* renamed from: a */
        public Context f3036a;

        /* renamed from: b */
        public String f3037b;

        /* renamed from: c */
        public String f3038c;

        /* renamed from: d */
        public int f3039d;

        /* renamed from: e */
        public AbstractC2427g f3040e;

        /* renamed from: f */
        public Bundle f3041f;

        /* renamed from: g */
        public AccessToken f3042g;

        public C2425e(Context context, String str, Bundle bundle) {
            this.f3042g = AccessToken.m35507B();
            if (!AccessToken.m35506C()) {
                String d = C2408g0.m34818d(context);
                if (d != null) {
                    this.f3037b = d;
                } else {
                    throw new C6131k("Attempted to create a builder without a valid access token or a valid default Application ID.");
                }
            }
            m34751a(context, str, bundle);
        }

        public C2425e(Context context, String str, String str2, Bundle bundle) {
            String d = str == null ? C2408g0.m34818d(context) : str;
            C2416h0.m34790a(d, "applicationId");
            this.f3037b = d;
            m34751a(context, str2, bundle);
        }

        /* renamed from: a */
        public C2425e m34750a(AbstractC2427g gVar) {
            this.f3040e = gVar;
            return this;
        }

        /* renamed from: a */
        public DialogC2420i0 mo34403a() {
            AccessToken accessToken = this.f3042g;
            if (accessToken != null) {
                this.f3041f.putString("app_id", accessToken.m35505a());
                this.f3041f.putString("access_token", this.f3042g.m35491v());
            } else {
                this.f3041f.putString("app_id", this.f3037b);
            }
            return DialogC2420i0.m34771a(this.f3036a, this.f3038c, this.f3041f, this.f3039d, this.f3040e);
        }

        /* renamed from: a */
        public final void m34751a(Context context, String str, Bundle bundle) {
            this.f3036a = context;
            this.f3038c = str;
            if (bundle != null) {
                this.f3041f = bundle;
            } else {
                this.f3041f = new Bundle();
            }
        }

        /* renamed from: b */
        public String m34749b() {
            return this.f3037b;
        }

        /* renamed from: c */
        public Context m34748c() {
            return this.f3036a;
        }

        /* renamed from: d */
        public AbstractC2427g m34747d() {
            return this.f3040e;
        }

        /* renamed from: e */
        public Bundle m34746e() {
            return this.f3041f;
        }

        /* renamed from: f */
        public int m34745f() {
            return this.f3039d;
        }
    }

    /* renamed from: com.facebook.internal.i0$f */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/i0$f.class */
    public class C2426f extends WebViewClient {
        public C2426f() {
        }

        public /* synthetic */ C2426f(DialogC2420i0 i0Var, DialogInterface$OnCancelListenerC2421a aVar) {
            this();
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            if (!DialogC2420i0.this.f3031j) {
                DialogC2420i0.this.f3026e.dismiss();
            }
            DialogC2420i0.this.f3028g.setBackgroundColor(0);
            DialogC2420i0.this.f3025d.setVisibility(0);
            DialogC2420i0.this.f3027f.setVisibility(0);
            DialogC2420i0.this.f3032k = true;
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            C2408g0.m34821c("FacebookSDK.WebDialog", "Webview loading URL: " + str);
            super.onPageStarted(webView, str, bitmap);
            if (!DialogC2420i0.this.f3031j) {
                DialogC2420i0.this.f3026e.show();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            DialogC2420i0.this.m34764a(new C6130j(str, i, str2));
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            sslErrorHandler.cancel();
            DialogC2420i0.this.m34764a(new C6130j(null, -11, null));
        }

        /* JADX WARN: Removed duplicated region for block: B:33:0x00d1  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00db  */
        @Override // android.webkit.WebViewClient
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean shouldOverrideUrlLoading(android.webkit.WebView r7, java.lang.String r8) {
            /*
                Method dump skipped, instructions count: 319
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.DialogC2420i0.C2426f.shouldOverrideUrlLoading(android.webkit.WebView, java.lang.String):boolean");
        }
    }

    /* renamed from: com.facebook.internal.i0$g */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/i0$g.class */
    public interface AbstractC2427g {
        /* renamed from: a */
        void mo34404a(Bundle bundle, C6131k kVar);
    }

    /* renamed from: com.facebook.internal.i0$h */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/i0$h.class */
    public class AsyncTaskC2428h extends AsyncTask<Void, Void, String[]> {

        /* renamed from: a */
        public String f3044a;

        /* renamed from: b */
        public Bundle f3045b;

        /* renamed from: c */
        public Exception[] f3046c;

        /* renamed from: com.facebook.internal.i0$h$a */
        /* loaded from: classes-dex2jar.jar:com/facebook/internal/i0$h$a.class */
        public class C2429a implements GraphRequest.AbstractC2230f {

            /* renamed from: a */
            public final /* synthetic */ String[] f3048a;

            /* renamed from: b */
            public final /* synthetic */ int f3049b;

            /* renamed from: c */
            public final /* synthetic */ CountDownLatch f3050c;

            public C2429a(String[] strArr, int i, CountDownLatch countDownLatch) {
                this.f3048a = strArr;
                this.f3049b = i;
                this.f3050c = countDownLatch;
            }

            @Override // com.facebook.GraphRequest.AbstractC2230f
            /* renamed from: a */
            public void mo23821a(C6148s sVar) {
                FacebookRequestError a;
                try {
                    a = sVar.m23705a();
                } catch (Exception e) {
                    AsyncTaskC2428h.this.f3046c[this.f3049b] = e;
                }
                if (a != null) {
                    String b = a.m35473b();
                    String str = b;
                    if (b == null) {
                        str = "Error staging photo.";
                    }
                    throw new C6133l(sVar, str);
                }
                JSONObject b2 = sVar.m23698b();
                if (b2 != null) {
                    String optString = b2.optString("uri");
                    if (optString != null) {
                        this.f3048a[this.f3049b] = optString;
                        this.f3050c.countDown();
                        return;
                    }
                    throw new C6131k("Error staging photo.");
                }
                throw new C6131k("Error staging photo.");
            }
        }

        public AsyncTaskC2428h(String str, Bundle bundle) {
            this.f3044a = str;
            this.f3045b = bundle;
        }

        /* renamed from: a */
        public void onPostExecute(String[] strArr) {
            Exception[] excArr;
            DialogC2420i0.this.f3026e.dismiss();
            for (Exception exc : this.f3046c) {
                if (exc != null) {
                    DialogC2420i0.this.m34764a(exc);
                    return;
                }
            }
            if (strArr == null) {
                DialogC2420i0.this.m34764a(new C6131k("Failed to stage photos for web dialog"));
                return;
            }
            List asList = Arrays.asList(strArr);
            if (asList.contains(null)) {
                DialogC2420i0.this.m34764a(new C6131k("Failed to stage photos for web dialog"));
                return;
            }
            C2408g0.m34869a(this.f3045b, "media", new JSONArray((Collection) asList));
            DialogC2420i0.this.f3022a = C2408g0.m34851a(C2401d0.m34897b(), C6135n.m23735p() + "/dialog/" + this.f3044a, this.f3045b).toString();
            DialogC2420i0.this.m34774a((DialogC2420i0.this.f3027f.getDrawable().getIntrinsicWidth() / 2) + 1);
        }

        /* renamed from: a */
        public String[] doInBackground(Void... voidArr) {
            String[] stringArray = this.f3045b.getStringArray("media");
            String[] strArr = new String[stringArray.length];
            this.f3046c = new Exception[stringArray.length];
            CountDownLatch countDownLatch = new CountDownLatch(stringArray.length);
            ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
            AccessToken B = AccessToken.m35507B();
            for (int i = 0; i < stringArray.length; i++) {
                try {
                    if (isCancelled()) {
                        Iterator it = concurrentLinkedQueue.iterator();
                        while (it.hasNext()) {
                            ((AsyncTask) it.next()).cancel(true);
                        }
                        return null;
                    }
                    Uri parse = Uri.parse(stringArray[i]);
                    if (C2408g0.m34813e(parse)) {
                        strArr[i] = parse.toString();
                        countDownLatch.countDown();
                    } else {
                        concurrentLinkedQueue.add(C2633s.m34059a(B, parse, new C2429a(strArr, i, countDownLatch)).m35430c());
                    }
                } catch (Exception e) {
                    Iterator it2 = concurrentLinkedQueue.iterator();
                    while (it2.hasNext()) {
                        ((AsyncTask) it2.next()).cancel(true);
                    }
                    return null;
                }
            }
            countDownLatch.await();
            return strArr;
        }
    }

    public DialogC2420i0(Context context, String str) {
        this(context, str, m34753f());
    }

    public DialogC2420i0(Context context, String str, int i) {
        super(context, i == 0 ? m34753f() : i);
        this.f3023b = "fbconnect://success";
        this.f3030i = false;
        this.f3031j = false;
        this.f3032k = false;
        this.f3022a = str;
    }

    public DialogC2420i0(Context context, String str, Bundle bundle, int i, AbstractC2427g gVar) {
        super(context, i == 0 ? m34753f() : i);
        String str2 = "fbconnect://success";
        this.f3023b = "fbconnect://success";
        this.f3030i = false;
        this.f3031j = false;
        this.f3032k = false;
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        this.f3023b = C2408g0.m34810f(context) ? "fbconnect://chrome_os_success" : str2;
        bundle2.putString("redirect_uri", this.f3023b);
        bundle2.putString("display", "touch");
        bundle2.putString("client_id", C6135n.m23745f());
        bundle2.putString(CreateRequest.METADATA_SDK_KEY, String.format(Locale.ROOT, "android-%s", C6135n.m23733r()));
        this.f3024c = gVar;
        if (!str.equals("share") || !bundle2.containsKey("media")) {
            String b = C2401d0.m34897b();
            this.f3022a = C2408g0.m34851a(b, C6135n.m23735p() + "/dialog/" + str, bundle2).toString();
            return;
        }
        this.f3029h = new AsyncTaskC2428h(str, bundle2);
    }

    /* renamed from: a */
    public static DialogC2420i0 m34771a(Context context, String str, Bundle bundle, int i, AbstractC2427g gVar) {
        m34772a(context);
        return new DialogC2420i0(context, str, bundle, i, gVar);
    }

    /* renamed from: a */
    public static void m34772a(Context context) {
        if (context != null) {
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                if (applicationInfo != null && applicationInfo.metaData != null && f3021n == 0) {
                    m34762b(applicationInfo.metaData.getInt("com.facebook.sdk.WebDialogTheme"));
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
    }

    /* renamed from: b */
    public static void m34762b(int i) {
        if (i == 0) {
            i = f3020m;
        }
        f3021n = i;
    }

    /* renamed from: f */
    public static int m34753f() {
        C2416h0.m34784c();
        return f3021n;
    }

    /* renamed from: a */
    public final int m34773a(int i, float f, int i2, int i3) {
        int i4 = (int) (i / f);
        double d = 0.5d;
        if (i4 <= i2) {
            d = 1.0d;
        } else if (i4 < i3) {
            d = 0.5d + (((i3 - i4) / (i3 - i2)) * 0.5d);
        }
        return (int) (i * d);
    }

    /* renamed from: a */
    public Bundle mo34687a(String str) {
        Uri parse = Uri.parse(str);
        Bundle f = C2408g0.m34809f(parse.getQuery());
        f.putAll(C2408g0.m34809f(parse.getFragment()));
        return f;
    }

    /* renamed from: a */
    public final void m34775a() {
        this.f3027f = new ImageView(getContext());
        this.f3027f.setOnClickListener(new View$OnClickListenerC2422b());
        this.f3027f.setImageDrawable(getContext().getResources().getDrawable(R$drawable.com_facebook_close));
        this.f3027f.setVisibility(4);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    /* renamed from: a */
    public final void m34774a(int i) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.f3025d = new C2423c(this, getContext());
        this.f3025d.setVerticalScrollBarEnabled(false);
        this.f3025d.setHorizontalScrollBarEnabled(false);
        this.f3025d.setWebViewClient(new C2426f(this, null));
        this.f3025d.getSettings().setJavaScriptEnabled(true);
        this.f3025d.loadUrl(this.f3022a);
        this.f3025d.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f3025d.setVisibility(4);
        this.f3025d.getSettings().setSavePassword(false);
        this.f3025d.getSettings().setSaveFormData(false);
        this.f3025d.setFocusable(true);
        this.f3025d.setFocusableInTouchMode(true);
        this.f3025d.setOnTouchListener(new View$OnTouchListenerC2424d(this));
        linearLayout.setPadding(i, i, i, i);
        linearLayout.addView(this.f3025d);
        linearLayout.setBackgroundColor(-872415232);
        this.f3028g.addView(linearLayout);
    }

    /* renamed from: a */
    public void m34770a(Bundle bundle) {
        AbstractC2427g gVar = this.f3024c;
        if (gVar != null && !this.f3030i) {
            this.f3030i = true;
            gVar.mo34404a(bundle, null);
            dismiss();
        }
    }

    /* renamed from: a */
    public void m34769a(AbstractC2427g gVar) {
        this.f3024c = gVar;
    }

    /* renamed from: a */
    public void m34764a(Throwable th) {
        if (this.f3024c != null && !this.f3030i) {
            this.f3030i = true;
            this.f3024c.mo34404a(null, th instanceof C6131k ? (C6131k) th : new C6131k(th));
            dismiss();
        }
    }

    /* renamed from: b */
    public WebView m34763b() {
        return this.f3025d;
    }

    /* renamed from: b */
    public void m34760b(String str) {
        this.f3023b = str;
    }

    /* renamed from: c */
    public boolean m34759c() {
        return this.f3030i;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        if (this.f3024c != null && !this.f3030i) {
            m34764a(new C6134m());
        }
    }

    /* renamed from: d */
    public boolean m34757d() {
        return this.f3032k;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        ProgressDialog progressDialog;
        WebView webView = this.f3025d;
        if (webView != null) {
            webView.stopLoading();
        }
        if (!this.f3031j && (progressDialog = this.f3026e) != null && progressDialog.isShowing()) {
            this.f3026e.dismiss();
        }
        super.dismiss();
    }

    /* renamed from: e */
    public void m34755e() {
        Display defaultDisplay = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        if (i < i2) {
            i2 = i;
        }
        int i3 = displayMetrics.widthPixels;
        int i4 = displayMetrics.heightPixels;
        int i5 = i3;
        if (i3 < i4) {
            i5 = i4;
        }
        getWindow().setLayout(Math.min(m34773a(i2, displayMetrics.density, 480, 800), displayMetrics.widthPixels), Math.min(m34773a(i5, displayMetrics.density, 800, 1280), displayMetrics.heightPixels));
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        WindowManager.LayoutParams layoutParams;
        this.f3031j = false;
        if (C2408g0.m34807g(getContext()) && (layoutParams = this.f3033l) != null && layoutParams.token == null) {
            layoutParams.token = getOwnerActivity().getWindow().getAttributes().token;
            C2408g0.m34821c("FacebookSDK.WebDialog", "Set token on onAttachedToWindow(): " + this.f3033l.token);
        }
        super.onAttachedToWindow();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f3026e = new ProgressDialog(getContext());
        this.f3026e.requestWindowFeature(1);
        this.f3026e.setMessage(getContext().getString(R$string.com_facebook_loading));
        this.f3026e.setCanceledOnTouchOutside(false);
        this.f3026e.setOnCancelListener(new DialogInterface$OnCancelListenerC2421a());
        requestWindowFeature(1);
        this.f3028g = new FrameLayout(getContext());
        m34755e();
        getWindow().setGravity(17);
        getWindow().setSoftInputMode(16);
        m34775a();
        if (this.f3022a != null) {
            m34774a((this.f3027f.getDrawable().getIntrinsicWidth() / 2) + 1);
        }
        this.f3028g.addView(this.f3027f, new ViewGroup.LayoutParams(-2, -2));
        setContentView(this.f3028g);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.f3031j = true;
        super.onDetachedFromWindow();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            cancel();
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        AsyncTaskC2428h hVar = this.f3029h;
        if (hVar == null || hVar.getStatus() != AsyncTask.Status.PENDING) {
            m34755e();
            return;
        }
        this.f3029h.execute(new Void[0]);
        this.f3026e.show();
    }

    @Override // android.app.Dialog
    public void onStop() {
        AsyncTaskC2428h hVar = this.f3029h;
        if (hVar != null) {
            hVar.cancel(true);
            this.f3026e.dismiss();
        }
        super.onStop();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        if (layoutParams.token == null) {
            this.f3033l = layoutParams;
        }
        super.onWindowAttributesChanged(layoutParams);
    }
}
