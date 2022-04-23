package com.facebook.internal;

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
import com.callapp.contacts.model.Constants;
import com.facebook.AccessToken;
import com.facebook.FacebookDialogException;
import com.facebook.FacebookException;
import com.facebook.FacebookGraphResponseException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.common.a;
import com.facebook.g;
import com.facebook.j;
import com.facebook.share.internal.e;
import com.mopub.mobileads.PangleAdapterConfiguration;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/ag.class */
public class ag extends Dialog {

    /* renamed from: c  reason: collision with root package name */
    private static final int f19827c = a.g.com_facebook_activity_theme;
    private static volatile int m;

    /* renamed from: a  reason: collision with root package name */
    c f19828a;

    /* renamed from: b  reason: collision with root package name */
    boolean f19829b;

    /* renamed from: d  reason: collision with root package name */
    private String f19830d;
    private String e;
    private WebView f;
    private ProgressDialog g;
    private ImageView h;
    private FrameLayout i;
    private d j;
    private boolean k;
    private boolean l;
    private WindowManager.LayoutParams n;

    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/ag$a.class */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public c f19835a;

        /* renamed from: b  reason: collision with root package name */
        private Context f19836b;

        /* renamed from: c  reason: collision with root package name */
        private String f19837c;

        /* renamed from: d  reason: collision with root package name */
        private String f19838d;
        private int e;
        private Bundle f;
        private AccessToken g;

        public a(Context context, String str, Bundle bundle) {
            this.g = AccessToken.getCurrentAccessToken();
            if (!AccessToken.isCurrentAccessTokenActive()) {
                String a2 = ae.a(context);
                if (a2 != null) {
                    this.f19837c = a2;
                } else {
                    throw new FacebookException("Attempted to create a builder without a valid access token or a valid default Application ID.");
                }
            }
            a(context, str, bundle);
        }

        public a(Context context, String str, String str2, Bundle bundle) {
            String a2 = str == null ? ae.a(context) : str;
            af.a(a2, "applicationId");
            this.f19837c = a2;
            a(context, str2, bundle);
        }

        private void a(Context context, String str, Bundle bundle) {
            this.f19836b = context;
            this.f19838d = str;
            if (bundle != null) {
                this.f = bundle;
            } else {
                this.f = new Bundle();
            }
        }

        public ag a() {
            AccessToken accessToken = this.g;
            if (accessToken != null) {
                this.f.putString(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, accessToken.getApplicationId());
                this.f.putString(AccessToken.ACCESS_TOKEN_KEY, this.g.getToken());
            } else {
                this.f.putString(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, this.f19837c);
            }
            return ag.a(this.f19836b, this.f19838d, this.f, this.e, this.f19835a);
        }

        public final String b() {
            return this.f19837c;
        }

        public final Context c() {
            return this.f19836b;
        }

        public final int d() {
            return this.e;
        }

        public final Bundle e() {
            return this.f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/ag$b.class */
    public final class b extends WebViewClient {
        private b() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            if (!ag.this.k) {
                ag.this.g.dismiss();
            }
            ag.this.i.setBackgroundColor(0);
            ag.this.f.setVisibility(0);
            ag.this.h.setVisibility(0);
            ag.this.l = true;
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            "Webview loading URL: ".concat(String.valueOf(str));
            ae.a();
            super.onPageStarted(webView, str, bitmap);
            if (!ag.this.k) {
                ag.this.g.show();
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            ag.this.a(new FacebookDialogException(str, i, str2));
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            sslErrorHandler.cancel();
            ag.this.a(new FacebookDialogException(null, -11, null));
        }

        /* JADX WARN: Removed duplicated region for block: B:43:0x0102  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x010c  */
        @Override // android.webkit.WebViewClient
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean shouldOverrideUrlLoading(android.webkit.WebView r7, java.lang.String r8) {
            /*
                Method dump skipped, instructions count: 374
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.ag.b.shouldOverrideUrlLoading(android.webkit.WebView, java.lang.String):boolean");
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/ag$c.class */
    public interface c {
        void a(Bundle bundle, FacebookException facebookException);
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/ag$d.class */
    final class d extends AsyncTask<Void, Void, String[]> {

        /* renamed from: b  reason: collision with root package name */
        private String f19841b;

        /* renamed from: c  reason: collision with root package name */
        private Bundle f19842c;

        /* renamed from: d  reason: collision with root package name */
        private Exception[] f19843d;

        d(String str, Bundle bundle) {
            this.f19841b = str;
            this.f19842c = bundle;
        }

        private String[] a() {
            if (com.facebook.internal.b.b.a.a(this)) {
                return null;
            }
            try {
                String[] stringArray = this.f19842c.getStringArray("media");
                final String[] strArr = new String[stringArray.length];
                this.f19843d = new Exception[stringArray.length];
                final CountDownLatch countDownLatch = new CountDownLatch(stringArray.length);
                ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
                AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
                for (final int i = 0; i < stringArray.length; i++) {
                    try {
                        if (isCancelled()) {
                            Iterator it2 = concurrentLinkedQueue.iterator();
                            while (it2.hasNext()) {
                                ((AsyncTask) it2.next()).cancel(true);
                            }
                            return null;
                        }
                        Uri parse = Uri.parse(stringArray[i]);
                        if (ae.a(parse)) {
                            strArr[i] = parse.toString();
                            countDownLatch.countDown();
                        } else {
                            concurrentLinkedQueue.add(e.a(currentAccessToken, parse, new GraphRequest.b() { // from class: com.facebook.internal.ag.d.1
                                @Override // com.facebook.GraphRequest.b
                                public final void a(j jVar) {
                                    FacebookRequestError facebookRequestError;
                                    String str;
                                    try {
                                        facebookRequestError = jVar.f20037b;
                                        str = "Error staging photo.";
                                    } catch (Exception e) {
                                        d.this.f19843d[i] = e;
                                    }
                                    if (facebookRequestError != null) {
                                        String errorMessage = facebookRequestError.getErrorMessage();
                                        if (errorMessage != null) {
                                            str = errorMessage;
                                        }
                                        throw new FacebookGraphResponseException(jVar, str);
                                    }
                                    JSONObject jSONObject = jVar.f20036a;
                                    if (jSONObject != null) {
                                        String optString = jSONObject.optString("uri");
                                        if (optString != null) {
                                            strArr[i] = optString;
                                            countDownLatch.countDown();
                                            return;
                                        }
                                        throw new FacebookException("Error staging photo.");
                                    }
                                    throw new FacebookException("Error staging photo.");
                                }
                            }).c());
                        }
                    } catch (Exception e) {
                        Iterator it3 = concurrentLinkedQueue.iterator();
                        while (it3.hasNext()) {
                            ((AsyncTask) it3.next()).cancel(true);
                        }
                        return null;
                    }
                }
                countDownLatch.await();
                return strArr;
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, this);
                return null;
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ String[] doInBackground(Void[] voidArr) {
            if (com.facebook.internal.b.b.a.a(this)) {
                return null;
            }
            try {
                return a();
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, this);
                return null;
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(String[] strArr) {
            Exception[] excArr;
            if (!com.facebook.internal.b.b.a.a(this)) {
                try {
                    String[] strArr2 = strArr;
                    if (!com.facebook.internal.b.b.a.a(this)) {
                        ag.this.g.dismiss();
                        for (Exception exc : this.f19843d) {
                            if (exc != null) {
                                ag.this.a(exc);
                                return;
                            }
                        }
                        if (strArr2 == null) {
                            ag.this.a(new FacebookException("Failed to stage photos for web dialog"));
                            return;
                        }
                        List asList = Arrays.asList(strArr2);
                        if (asList.contains(null)) {
                            ag.this.a(new FacebookException("Failed to stage photos for web dialog"));
                            return;
                        }
                        ae.a(this.f19842c, "media", new JSONArray((Collection) asList));
                        ag.this.f19830d = ae.a(ac.e(), g.j() + "/dialog/" + this.f19841b, this.f19842c).toString();
                        ag.this.a((ag.this.h.getDrawable().getIntrinsicWidth() / 2) + 1);
                    }
                } catch (Throwable th) {
                    com.facebook.internal.b.b.a.a(th, this);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ag(Context context, String str) {
        this(context, str, m);
        af.a();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private ag(android.content.Context r5, java.lang.String r6, int r7) {
        /*
            r4 = this;
            r0 = r7
            r8 = r0
            r0 = r7
            if (r0 != 0) goto L_0x000f
            com.facebook.internal.af.a()
            int r0 = com.facebook.internal.ag.m
            r8 = r0
        L_0x000f:
            r0 = r4
            r1 = r5
            r2 = r8
            r0.<init>(r1, r2)
            r0 = r4
            java.lang.String r1 = "fbconnect://success"
            r0.e = r1
            r0 = r4
            r1 = 0
            r0.f19829b = r1
            r0 = r4
            r1 = 0
            r0.k = r1
            r0 = r4
            r1 = 0
            r0.l = r1
            r0 = r4
            r1 = r6
            r0.f19830d = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.ag.<init>(android.content.Context, java.lang.String, int):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private ag(android.content.Context r10, java.lang.String r11, android.os.Bundle r12, int r13, com.facebook.internal.ag.c r14) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.ag.<init>(android.content.Context, java.lang.String, android.os.Bundle, int, com.facebook.internal.ag$c):void");
    }

    private static int a(int i, float f, int i2, int i3) {
        int i4 = (int) (i / f);
        double d2 = 0.5d;
        if (i4 <= i2) {
            d2 = 1.0d;
        } else if (i4 < i3) {
            d2 = 0.5d + (((i3 - i4) / (i3 - i2)) * 0.5d);
        }
        return (int) (i * d2);
    }

    public static ag a(Context context, String str, Bundle bundle, int i, c cVar) {
        a(context);
        return new ag(context, str, bundle, i, cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        WebView webView = new WebView(getContext()) { // from class: com.facebook.internal.ag.3
            @Override // android.webkit.WebView, android.view.View
            public final void onWindowFocusChanged(boolean z) {
                try {
                    super.onWindowFocusChanged(z);
                } catch (NullPointerException e) {
                }
            }
        };
        this.f = webView;
        webView.setVerticalScrollBarEnabled(false);
        this.f.setHorizontalScrollBarEnabled(false);
        this.f.setWebViewClient(new b());
        this.f.getSettings().setJavaScriptEnabled(true);
        this.f.loadUrl(this.f19830d);
        this.f.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f.setVisibility(4);
        this.f.getSettings().setSavePassword(false);
        this.f.getSettings().setSaveFormData(false);
        this.f.setFocusable(true);
        this.f.setFocusableInTouchMode(true);
        this.f.setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.internal.ag.4
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                if (view.hasFocus()) {
                    return false;
                }
                view.requestFocus();
                return false;
            }
        });
        linearLayout.setPadding(i, i, i, i);
        linearLayout.addView(this.f);
        linearLayout.setBackgroundColor(-872415232);
        this.i.addView(linearLayout);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(Context context) {
        if (context != null) {
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                if (applicationInfo != null && applicationInfo.metaData != null && m == 0) {
                    int i = applicationInfo.metaData.getInt("com.facebook.sdk.WebDialogTheme");
                    if (i == 0) {
                        i = f19827c;
                    }
                    m = i;
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
    }

    protected Bundle a(String str) {
        Uri parse = Uri.parse(str);
        Bundle d2 = ae.d(parse.getQuery());
        d2.putAll(ae.d(parse.getFragment()));
        return d2;
    }

    protected final void a(Throwable th) {
        if (this.f19828a != null && !this.f19829b) {
            this.f19829b = true;
            this.f19828a.a(null, th instanceof FacebookException ? (FacebookException) th : new FacebookException(th));
            dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean a() {
        return this.l;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final WebView b() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b(String str) {
        this.e = str;
    }

    public final void c() {
        Display defaultDisplay = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        getWindow().setLayout(Math.min(a(displayMetrics.widthPixels < displayMetrics.heightPixels ? displayMetrics.widthPixels : displayMetrics.heightPixels, displayMetrics.density, 480, 800), displayMetrics.widthPixels), Math.min(a(displayMetrics.widthPixels < displayMetrics.heightPixels ? displayMetrics.heightPixels : displayMetrics.widthPixels, displayMetrics.density, 800, Constants.SMALL_SIZE_SCREEN), displayMetrics.heightPixels));
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        if (this.f19828a != null && !this.f19829b) {
            a(new FacebookOperationCanceledException());
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        ProgressDialog progressDialog;
        WebView webView = this.f;
        if (webView != null) {
            webView.stopLoading();
        }
        if (!this.k && (progressDialog = this.g) != null && progressDialog.isShowing()) {
            this.g.dismiss();
        }
        super.dismiss();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        WindowManager.LayoutParams layoutParams;
        this.k = false;
        if (ae.d(getContext()) && (layoutParams = this.n) != null && layoutParams.token == null) {
            this.n.token = getOwnerActivity().getWindow().getAttributes().token;
            new StringBuilder("Set token on onAttachedToWindow(): ").append(this.n.token);
            ae.a();
        }
        super.onAttachedToWindow();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        this.g = progressDialog;
        progressDialog.requestWindowFeature(1);
        this.g.setMessage(getContext().getString(a.f.com_facebook_loading));
        this.g.setCanceledOnTouchOutside(false);
        this.g.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.facebook.internal.ag.1
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                ag.this.cancel();
            }
        });
        requestWindowFeature(1);
        this.i = new FrameLayout(getContext());
        c();
        getWindow().setGravity(17);
        getWindow().setSoftInputMode(16);
        ImageView imageView = new ImageView(getContext());
        this.h = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.internal.ag.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (!com.facebook.internal.b.b.a.a(this)) {
                    try {
                        ag.this.cancel();
                    } catch (Throwable th) {
                        com.facebook.internal.b.b.a.a(th, this);
                    }
                }
            }
        });
        this.h.setImageDrawable(getContext().getResources().getDrawable(a.c.com_facebook_close));
        this.h.setVisibility(4);
        if (this.f19830d != null) {
            a((this.h.getDrawable().getIntrinsicWidth() / 2) + 1);
        }
        this.i.addView(this.h, new ViewGroup.LayoutParams(-2, -2));
        setContentView(this.i);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.k = true;
        super.onDetachedFromWindow();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            WebView webView = this.f;
            if (webView == null || !webView.canGoBack()) {
                cancel();
            } else {
                this.f.goBack();
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        d dVar = this.j;
        if (dVar == null || dVar.getStatus() != AsyncTask.Status.PENDING) {
            c();
            return;
        }
        this.j.execute(new Void[0]);
        this.g.show();
    }

    @Override // android.app.Dialog
    protected void onStop() {
        d dVar = this.j;
        if (dVar != null) {
            dVar.cancel(true);
            this.g.dismiss();
        }
        super.onStop();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        if (layoutParams.token == null) {
            this.n = layoutParams;
        }
        super.onWindowAttributesChanged(layoutParams);
    }
}
