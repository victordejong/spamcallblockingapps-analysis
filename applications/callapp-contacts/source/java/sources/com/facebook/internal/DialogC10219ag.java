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
import com.facebook.C10181g;
import com.facebook.C10351j;
import com.facebook.FacebookDialogException;
import com.facebook.FacebookException;
import com.facebook.FacebookGraphResponseException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.common.C10165a;
import com.facebook.internal.p299b.p301b.C10249a;
import com.facebook.share.internal.C10480e;
import com.mopub.mobileads.PangleAdapterConfiguration;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.facebook.internal.ag */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/ag.class */
public class DialogC10219ag extends Dialog {

    /* renamed from: c */
    private static final int f33675c = C10165a.C10172g.com_facebook_activity_theme;

    /* renamed from: m */
    private static volatile int f33676m;

    /* renamed from: a */
    AbstractC10226c f33677a;

    /* renamed from: b */
    boolean f33678b;

    /* renamed from: d */
    private String f33679d;

    /* renamed from: e */
    private String f33680e;

    /* renamed from: f */
    private WebView f33681f;

    /* renamed from: g */
    private ProgressDialog f33682g;

    /* renamed from: h */
    private ImageView f33683h;

    /* renamed from: i */
    private FrameLayout f33684i;

    /* renamed from: j */
    private AsyncTaskC10227d f33685j;

    /* renamed from: k */
    private boolean f33686k;

    /* renamed from: l */
    private boolean f33687l;

    /* renamed from: n */
    private WindowManager.LayoutParams f33688n;

    /* renamed from: com.facebook.internal.ag$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/ag$a.class */
    public static class C10224a {

        /* renamed from: a */
        public AbstractC10226c f33693a;

        /* renamed from: b */
        private Context f33694b;

        /* renamed from: c */
        private String f33695c;

        /* renamed from: d */
        private String f33696d;

        /* renamed from: e */
        private int f33697e;

        /* renamed from: f */
        private Bundle f33698f;

        /* renamed from: g */
        private AccessToken f33699g;

        public C10224a(Context context, String str, Bundle bundle) {
            this.f33699g = AccessToken.getCurrentAccessToken();
            if (!AccessToken.isCurrentAccessTokenActive()) {
                String m23248a = C10213ae.m23248a(context);
                if (m23248a == null) {
                    throw new FacebookException("Attempted to create a builder without a valid access token or a valid default Application ID.");
                }
                this.f33695c = m23248a;
            }
            m23155a(context, str, bundle);
        }

        public C10224a(Context context, String str, String str2, Bundle bundle) {
            String m23248a = str == null ? C10213ae.m23248a(context) : str;
            C10218af.m23178a(m23248a, "applicationId");
            this.f33695c = m23248a;
            m23155a(context, str2, bundle);
        }

        /* renamed from: a */
        private void m23155a(Context context, String str, Bundle bundle) {
            this.f33694b = context;
            this.f33696d = str;
            if (bundle != null) {
                this.f33698f = bundle;
            } else {
                this.f33698f = new Bundle();
            }
        }

        /* renamed from: a */
        public DialogC10219ag mo22899a() {
            AccessToken accessToken = this.f33699g;
            if (accessToken != null) {
                this.f33698f.putString(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, accessToken.getApplicationId());
                this.f33698f.putString(AccessToken.ACCESS_TOKEN_KEY, this.f33699g.getToken());
            } else {
                this.f33698f.putString(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, this.f33695c);
            }
            return DialogC10219ag.m23169a(this.f33694b, this.f33696d, this.f33698f, this.f33697e, this.f33693a);
        }

        /* renamed from: b */
        public final String m23154b() {
            return this.f33695c;
        }

        /* renamed from: c */
        public final Context m23153c() {
            return this.f33694b;
        }

        /* renamed from: d */
        public final int m23152d() {
            return this.f33697e;
        }

        /* renamed from: e */
        public final Bundle m23151e() {
            return this.f33698f;
        }
    }

    /* renamed from: com.facebook.internal.ag$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/ag$b.class */
    public final class C10225b extends WebViewClient {
        private C10225b() {
            DialogC10219ag.this = r4;
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            if (!DialogC10219ag.this.f33686k) {
                DialogC10219ag.this.f33682g.dismiss();
            }
            DialogC10219ag.this.f33684i.setBackgroundColor(0);
            DialogC10219ag.this.f33681f.setVisibility(0);
            DialogC10219ag.this.f33683h.setVisibility(0);
            DialogC10219ag.this.f33687l = true;
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            "Webview loading URL: ".concat(String.valueOf(str));
            C10213ae.m23250a();
            super.onPageStarted(webView, str, bitmap);
            if (!DialogC10219ag.this.f33686k) {
                DialogC10219ag.this.f33682g.show();
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            DialogC10219ag.this.m23165a(new FacebookDialogException(str, i, str2));
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            sslErrorHandler.cancel();
            DialogC10219ag.this.m23165a(new FacebookDialogException(null, -11, null));
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
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.DialogC10219ag.C10225b.shouldOverrideUrlLoading(android.webkit.WebView, java.lang.String):boolean");
        }
    }

    /* renamed from: com.facebook.internal.ag$c */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/ag$c.class */
    public interface AbstractC10226c {
        /* renamed from: a */
        void mo22900a(Bundle bundle, FacebookException facebookException);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.internal.ag$d */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/ag$d.class */
    public final class AsyncTaskC10227d extends AsyncTask<Void, Void, String[]> {

        /* renamed from: b */
        private String f33702b;

        /* renamed from: c */
        private Bundle f33703c;

        /* renamed from: d */
        private Exception[] f33704d;

        AsyncTaskC10227d(String str, Bundle bundle) {
            DialogC10219ag.this = r4;
            this.f33702b = str;
            this.f33703c = bundle;
        }

        /* renamed from: a */
        private String[] m23150a() {
            if (C10249a.m23108a(this)) {
                return null;
            }
            try {
                String[] stringArray = this.f33703c.getStringArray("media");
                final String[] strArr = new String[stringArray.length];
                this.f33704d = new Exception[stringArray.length];
                final CountDownLatch countDownLatch = new CountDownLatch(stringArray.length);
                ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
                AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
                for (int i = 0; i < stringArray.length; i++) {
                    try {
                        if (isCancelled()) {
                            Iterator it2 = concurrentLinkedQueue.iterator();
                            while (it2.hasNext()) {
                                ((AsyncTask) it2.next()).cancel(true);
                            }
                            return null;
                        }
                        Uri parse = Uri.parse(stringArray[i]);
                        if (C10213ae.m23246a(parse)) {
                            strArr[i] = parse.toString();
                            countDownLatch.countDown();
                        } else {
                            final int i2 = i;
                            concurrentLinkedQueue.add(C10480e.m22709a(currentAccessToken, parse, new GraphRequest.AbstractC9933b() { // from class: com.facebook.internal.ag.d.1
                                @Override // com.facebook.GraphRequest.AbstractC9933b
                                /* renamed from: a */
                                public final void mo22725a(C10351j c10351j) {
                                    FacebookRequestError facebookRequestError;
                                    String str;
                                    try {
                                        facebookRequestError = c10351j.f33960b;
                                        str = "Error staging photo.";
                                    } catch (Exception e) {
                                        AsyncTaskC10227d.this.f33704d[i2] = e;
                                    }
                                    if (facebookRequestError != null) {
                                        String errorMessage = facebookRequestError.getErrorMessage();
                                        if (errorMessage != null) {
                                            str = errorMessage;
                                        }
                                        throw new FacebookGraphResponseException(c10351j, str);
                                    }
                                    JSONObject jSONObject = c10351j.f33959a;
                                    if (jSONObject == null) {
                                        throw new FacebookException("Error staging photo.");
                                    }
                                    String optString = jSONObject.optString("uri");
                                    if (optString == null) {
                                        throw new FacebookException("Error staging photo.");
                                    }
                                    strArr[i2] = optString;
                                    countDownLatch.countDown();
                                }
                            }).m23778c());
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
                C10249a.m23106a(th, this);
                return null;
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ String[] doInBackground(Void[] voidArr) {
            if (C10249a.m23108a(this)) {
                return null;
            }
            try {
                return m23150a();
            } catch (Throwable th) {
                C10249a.m23106a(th, this);
                return null;
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(String[] strArr) {
            Exception[] excArr;
            if (C10249a.m23108a(this)) {
                return;
            }
            try {
                String[] strArr2 = strArr;
                if (C10249a.m23108a(this)) {
                    return;
                }
                DialogC10219ag.this.f33682g.dismiss();
                for (Exception exc : this.f33704d) {
                    if (exc != null) {
                        DialogC10219ag.this.m23165a(exc);
                        return;
                    }
                }
                if (strArr2 == null) {
                    DialogC10219ag.this.m23165a(new FacebookException("Failed to stage photos for web dialog"));
                    return;
                }
                List asList = Arrays.asList(strArr2);
                if (asList.contains(null)) {
                    DialogC10219ag.this.m23165a(new FacebookException("Failed to stage photos for web dialog"));
                    return;
                }
                C10213ae.m23244a(this.f33703c, "media", new JSONArray((Collection) asList));
                DialogC10219ag.this.f33679d = C10213ae.m23226a(C10210ac.m23254e(), C10181g.m23289j() + "/dialog/" + this.f33702b, this.f33703c).toString();
                DialogC10219ag.this.m23172a((DialogC10219ag.this.f33683h.getDrawable().getIntrinsicWidth() / 2) + 1);
            } catch (Throwable th) {
                C10249a.m23106a(th, this);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DialogC10219ag(Context context, String str) {
        this(context, str, f33676m);
        C10218af.m23182a();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private DialogC10219ag(android.content.Context r5, java.lang.String r6, int r7) {
        /*
            r4 = this;
            r0 = r7
            r8 = r0
            r0 = r7
            if (r0 != 0) goto Lf
            com.facebook.internal.C10218af.m23182a()
            int r0 = com.facebook.internal.DialogC10219ag.f33676m
            r8 = r0
        Lf:
            r0 = r4
            r1 = r5
            r2 = r8
            r0.<init>(r1, r2)
            r0 = r4
            java.lang.String r1 = "fbconnect://success"
            r0.f33680e = r1
            r0 = r4
            r1 = 0
            r0.f33678b = r1
            r0 = r4
            r1 = 0
            r0.f33686k = r1
            r0 = r4
            r1 = 0
            r0.f33687l = r1
            r0 = r4
            r1 = r6
            r0.f33679d = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.DialogC10219ag.<init>(android.content.Context, java.lang.String, int):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private DialogC10219ag(android.content.Context r10, java.lang.String r11, android.os.Bundle r12, int r13, com.facebook.internal.DialogC10219ag.AbstractC10226c r14) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.DialogC10219ag.<init>(android.content.Context, java.lang.String, android.os.Bundle, int, com.facebook.internal.ag$c):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [double] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* renamed from: a */
    private static int m23171a(int i, float f, int i2, int i3) {
        int i4 = (int) (i / f);
        ?? r12 = true;
        if (i4 <= i2) {
            r12 = true;
        } else if (i4 < i3) {
            r12 = 0.5d + (((i3 - i4) / (i3 - i2)) * 0.5d);
        }
        return (int) (i * (r12 == true ? 1.0d : 0.0d));
    }

    /* renamed from: a */
    public static DialogC10219ag m23169a(Context context, String str, Bundle bundle, int i, AbstractC10226c abstractC10226c) {
        m23170a(context);
        return new DialogC10219ag(context, str, bundle, i, abstractC10226c);
    }

    /* renamed from: a */
    public void m23172a(int i) {
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
        this.f33681f = webView;
        webView.setVerticalScrollBarEnabled(false);
        this.f33681f.setHorizontalScrollBarEnabled(false);
        this.f33681f.setWebViewClient(new C10225b());
        this.f33681f.getSettings().setJavaScriptEnabled(true);
        this.f33681f.loadUrl(this.f33679d);
        this.f33681f.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f33681f.setVisibility(4);
        this.f33681f.getSettings().setSavePassword(false);
        this.f33681f.getSettings().setSaveFormData(false);
        this.f33681f.setFocusable(true);
        this.f33681f.setFocusableInTouchMode(true);
        this.f33681f.setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.internal.ag.4
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                if (!view.hasFocus()) {
                    view.requestFocus();
                    return false;
                }
                return false;
            }
        });
        linearLayout.setPadding(i, i, i, i);
        linearLayout.addView(this.f33681f);
        linearLayout.setBackgroundColor(-872415232);
        this.f33684i.addView(linearLayout);
    }

    /* renamed from: a */
    public static void m23170a(Context context) {
        if (context == null) {
            return;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null || applicationInfo.metaData == null || f33676m != 0) {
                return;
            }
            int i = applicationInfo.metaData.getInt("com.facebook.sdk.WebDialogTheme");
            if (i == 0) {
                i = f33675c;
            }
            f33676m = i;
        } catch (PackageManager.NameNotFoundException e) {
        }
    }

    /* renamed from: a */
    protected Bundle mo23053a(String str) {
        Uri parse = Uri.parse(str);
        Bundle m23195d = C10213ae.m23195d(parse.getQuery());
        m23195d.putAll(C10213ae.m23195d(parse.getFragment()));
        return m23195d;
    }

    /* renamed from: a */
    protected final void m23165a(Throwable th) {
        if (this.f33677a == null || this.f33678b) {
            return;
        }
        this.f33678b = true;
        this.f33677a.mo22900a(null, th instanceof FacebookException ? (FacebookException) th : new FacebookException(th));
        dismiss();
    }

    /* renamed from: a */
    public final boolean m23173a() {
        return this.f33687l;
    }

    /* renamed from: b */
    public final WebView m23164b() {
        return this.f33681f;
    }

    /* renamed from: b */
    public final void m23162b(String str) {
        this.f33680e = str;
    }

    /* renamed from: c */
    public final void m23161c() {
        Display defaultDisplay = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        getWindow().setLayout(Math.min(m23171a(displayMetrics.widthPixels < displayMetrics.heightPixels ? displayMetrics.widthPixels : displayMetrics.heightPixels, displayMetrics.density, 480, 800), displayMetrics.widthPixels), Math.min(m23171a(displayMetrics.widthPixels < displayMetrics.heightPixels ? displayMetrics.heightPixels : displayMetrics.widthPixels, displayMetrics.density, 800, Constants.SMALL_SIZE_SCREEN), displayMetrics.heightPixels));
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        if (this.f33677a == null || this.f33678b) {
            return;
        }
        m23165a(new FacebookOperationCanceledException());
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        ProgressDialog progressDialog;
        WebView webView = this.f33681f;
        if (webView != null) {
            webView.stopLoading();
        }
        if (!this.f33686k && (progressDialog = this.f33682g) != null && progressDialog.isShowing()) {
            this.f33682g.dismiss();
        }
        super.dismiss();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        WindowManager.LayoutParams layoutParams;
        this.f33686k = false;
        if (C10213ae.m23197d(getContext()) && (layoutParams = this.f33688n) != null && layoutParams.token == null) {
            this.f33688n.token = getOwnerActivity().getWindow().getAttributes().token;
            new StringBuilder("Set token on onAttachedToWindow(): ").append(this.f33688n.token);
            C10213ae.m23250a();
        }
        super.onAttachedToWindow();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        this.f33682g = progressDialog;
        progressDialog.requestWindowFeature(1);
        this.f33682g.setMessage(getContext().getString(C10165a.C10171f.com_facebook_loading));
        this.f33682g.setCanceledOnTouchOutside(false);
        this.f33682g.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.facebook.internal.ag.1
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                DialogC10219ag.this.cancel();
            }
        });
        requestWindowFeature(1);
        this.f33684i = new FrameLayout(getContext());
        m23161c();
        getWindow().setGravity(17);
        getWindow().setSoftInputMode(16);
        ImageView imageView = new ImageView(getContext());
        this.f33683h = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.internal.ag.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (C10249a.m23108a(this)) {
                    return;
                }
                try {
                    DialogC10219ag.this.cancel();
                } catch (Throwable th) {
                    C10249a.m23106a(th, this);
                }
            }
        });
        this.f33683h.setImageDrawable(getContext().getResources().getDrawable(C10165a.C10168c.com_facebook_close));
        this.f33683h.setVisibility(4);
        if (this.f33679d != null) {
            m23172a((this.f33683h.getDrawable().getIntrinsicWidth() / 2) + 1);
        }
        this.f33684i.addView(this.f33683h, new ViewGroup.LayoutParams(-2, -2));
        setContentView(this.f33684i);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.f33686k = true;
        super.onDetachedFromWindow();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            WebView webView = this.f33681f;
            if (webView != null && webView.canGoBack()) {
                this.f33681f.goBack();
                return true;
            }
            cancel();
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        AsyncTaskC10227d asyncTaskC10227d = this.f33685j;
        if (asyncTaskC10227d == null || asyncTaskC10227d.getStatus() != AsyncTask.Status.PENDING) {
            m23161c();
            return;
        }
        this.f33685j.execute(new Void[0]);
        this.f33682g.show();
    }

    @Override // android.app.Dialog
    protected void onStop() {
        AsyncTaskC10227d asyncTaskC10227d = this.f33685j;
        if (asyncTaskC10227d != null) {
            asyncTaskC10227d.cancel(true);
            this.f33682g.dismiss();
        }
        super.onStop();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        if (layoutParams.token == null) {
            this.f33688n = layoutParams;
        }
        super.onWindowAttributesChanged(layoutParams);
    }
}
