package com.facebook.internal;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
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
import com.facebook.C1803a;
import com.facebook.C1990i;
import com.facebook.C2095j;
import com.facebook.C2102k;
import com.facebook.C2194n;
import com.facebook.FacebookDialogException;
import com.facebook.FacebookException;
import com.facebook.FacebookGraphResponseException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookServiceException;
import com.facebook.common.C1974a;
import com.facebook.p105c.p106a.C1952c;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.facebook.internal.z */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/z.class */
public class DialogC2085z extends Dialog {

    /* renamed from: a */
    private static final int f6131a = C1974a.C1980f.com_facebook_activity_theme;

    /* renamed from: m */
    private static volatile int f6132m;

    /* renamed from: b */
    private String f6133b;

    /* renamed from: c */
    private String f6134c;

    /* renamed from: d */
    private AbstractC2092c f6135d;

    /* renamed from: e */
    private WebView f6136e;

    /* renamed from: f */
    private ProgressDialog f6137f;

    /* renamed from: g */
    private ImageView f6138g;

    /* renamed from: h */
    private FrameLayout f6139h;

    /* renamed from: i */
    private AsyncTaskC2093d f6140i;

    /* renamed from: j */
    private boolean f6141j;

    /* renamed from: k */
    private boolean f6142k;

    /* renamed from: l */
    private boolean f6143l;

    /* renamed from: n */
    private WindowManager.LayoutParams f6144n;

    /* renamed from: com.facebook.internal.z$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/z$a.class */
    public static class C2090a {

        /* renamed from: a */
        private Context f6149a;

        /* renamed from: b */
        private String f6150b;

        /* renamed from: c */
        private String f6151c;

        /* renamed from: d */
        private int f6152d;

        /* renamed from: e */
        private AbstractC2092c f6153e;

        /* renamed from: f */
        private Bundle f6154f;

        /* renamed from: g */
        private C1803a f6155g;

        public C2090a(Context context, String str, Bundle bundle) {
            this.f6155g = C1803a.m16259a();
            if (!C1803a.m16253b()) {
                String m15489a = C2079x.m15489a(context);
                if (m15489a == null) {
                    throw new FacebookException("Attempted to create a builder without a valid access token or a valid default Application ID.");
                }
                this.f6150b = m15489a;
            }
            m15384a(context, str, bundle);
        }

        public C2090a(Context context, String str, String str2, Bundle bundle) {
            String m15489a = str == null ? C2079x.m15489a(context) : str;
            C2084y.m15416a(m15489a, "applicationId");
            this.f6150b = m15489a;
            m15384a(context, str2, bundle);
        }

        /* renamed from: a */
        private void m15384a(Context context, String str, Bundle bundle) {
            this.f6149a = context;
            this.f6151c = str;
            if (bundle != null) {
                this.f6154f = bundle;
            } else {
                this.f6154f = new Bundle();
            }
        }

        /* renamed from: a */
        public C2090a m15383a(AbstractC2092c abstractC2092c) {
            this.f6153e = abstractC2092c;
            return this;
        }

        /* renamed from: a */
        public DialogC2085z mo15059a() {
            if (this.f6155g != null) {
                this.f6154f.putString("app_id", this.f6155g.m16242l());
                this.f6154f.putString("access_token", this.f6155g.m16250d());
            } else {
                this.f6154f.putString("app_id", this.f6150b);
            }
            return DialogC2085z.m15405a(this.f6149a, this.f6151c, this.f6154f, this.f6152d, this.f6153e);
        }

        /* renamed from: b */
        public String m15382b() {
            return this.f6150b;
        }

        /* renamed from: c */
        public Context m15381c() {
            return this.f6149a;
        }

        /* renamed from: d */
        public int m15380d() {
            return this.f6152d;
        }

        /* renamed from: e */
        public Bundle m15379e() {
            return this.f6154f;
        }

        /* renamed from: f */
        public AbstractC2092c m15378f() {
            return this.f6153e;
        }
    }

    /* renamed from: com.facebook.internal.z$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/z$b.class */
    public class C2091b extends WebViewClient {
        private C2091b() {
            DialogC2085z.this = r4;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            if (!DialogC2085z.this.f6142k) {
                DialogC2085z.this.f6137f.dismiss();
            }
            DialogC2085z.this.f6139h.setBackgroundColor(0);
            DialogC2085z.this.f6136e.setVisibility(0);
            DialogC2085z.this.f6138g.setVisibility(0);
            DialogC2085z.this.f6143l = true;
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            C2079x.m15449b("FacebookSDK.WebDialog", "Webview loading URL: " + str);
            super.onPageStarted(webView, str, bitmap);
            if (!DialogC2085z.this.f6142k) {
                DialogC2085z.this.f6137f.show();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            DialogC2085z.this.m15397a(new FacebookDialogException(str, i, str2));
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            sslErrorHandler.cancel();
            DialogC2085z.this.m15397a(new FacebookDialogException(null, -11, null));
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            boolean z;
            int i;
            C2079x.m15449b("FacebookSDK.WebDialog", "Redirect URL: " + str);
            if (str.startsWith(DialogC2085z.this.f6134c)) {
                Bundle mo15398a = DialogC2085z.this.mo15398a(str);
                String string = mo15398a.getString("error");
                String str2 = string;
                if (string == null) {
                    str2 = mo15398a.getString("error_type");
                }
                String string2 = mo15398a.getString("error_msg");
                String str3 = string2;
                if (string2 == null) {
                    str3 = mo15398a.getString("error_message");
                }
                String str4 = str3;
                if (str3 == null) {
                    str4 = mo15398a.getString("error_description");
                }
                String string3 = mo15398a.getString("error_code");
                if (!C2079x.m15472a(string3)) {
                    try {
                        i = Integer.parseInt(string3);
                    } catch (NumberFormatException e) {
                        i = -1;
                    }
                } else {
                    i = -1;
                }
                if (C2079x.m15472a(str2) && C2079x.m15472a(str4) && i == -1) {
                    DialogC2085z.this.m15404a(mo15398a);
                } else if (str2 != null && (str2.equals("access_denied") || str2.equals("OAuthAccessDeniedException"))) {
                    DialogC2085z.this.cancel();
                } else if (i == 4201) {
                    DialogC2085z.this.cancel();
                } else {
                    DialogC2085z.this.m15397a(new FacebookServiceException(new C1990i(i, str2, str4), str4));
                }
                z = true;
            } else if (str.startsWith("fbconnect://cancel")) {
                DialogC2085z.this.cancel();
                z = true;
            } else {
                z = false;
                if (!str.contains("touch")) {
                    try {
                        DialogC2085z.this.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                        z = true;
                    } catch (ActivityNotFoundException e2) {
                        z = false;
                    }
                }
            }
            return z;
        }
    }

    /* renamed from: com.facebook.internal.z$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/z$c.class */
    public interface AbstractC2092c {
        /* renamed from: a */
        void mo15062a(Bundle bundle, FacebookException facebookException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.facebook.internal.z$d */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/z$d.class */
    public class AsyncTaskC2093d extends AsyncTask<Void, Void, String[]> {

        /* renamed from: b */
        private String f6158b;

        /* renamed from: c */
        private Bundle f6159c;

        /* renamed from: d */
        private Exception[] f6160d;

        AsyncTaskC2093d(String str, Bundle bundle) {
            DialogC2085z.this = r4;
            this.f6158b = str;
            this.f6159c = bundle;
        }

        /* renamed from: a */
        public void onPostExecute(String[] strArr) {
            Exception[] excArr;
            DialogC2085z.this.f6137f.dismiss();
            for (Exception exc : this.f6160d) {
                if (exc != null) {
                    DialogC2085z.this.m15397a(exc);
                    return;
                }
            }
            if (strArr == null) {
                DialogC2085z.this.m15397a(new FacebookException("Failed to stage photos for web dialog"));
                return;
            }
            List asList = Arrays.asList(strArr);
            if (asList.contains(null)) {
                DialogC2085z.this.m15397a(new FacebookException("Failed to stage photos for web dialog"));
                return;
            }
            C2079x.m15485a(this.f6159c, "media", new JSONArray((Collection) asList));
            DialogC2085z.this.f6133b = C2079x.m15468a(C2077v.m15498a(), C2095j.m15359i() + "/dialog/" + this.f6158b, this.f6159c).toString();
            DialogC2085z.this.m15395b((DialogC2085z.this.f6138g.getDrawable().getIntrinsicWidth() / 2) + 1);
        }

        /* renamed from: a */
        public String[] doInBackground(Void... voidArr) {
            String[] stringArray = this.f6159c.getStringArray("media");
            final String[] strArr = new String[stringArray.length];
            this.f6160d = new Exception[stringArray.length];
            final CountDownLatch countDownLatch = new CountDownLatch(stringArray.length);
            ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
            C1803a m16259a = C1803a.m16259a();
            int i = 0;
            while (true) {
                try {
                    if (i >= stringArray.length) {
                        countDownLatch.await();
                        break;
                    } else if (isCancelled()) {
                        Iterator it = concurrentLinkedQueue.iterator();
                        while (it.hasNext()) {
                            ((AsyncTask) it.next()).cancel(true);
                        }
                        strArr = null;
                    } else {
                        Uri parse = Uri.parse(stringArray[i]);
                        if (C2079x.m15487a(parse)) {
                            strArr[i] = parse.toString();
                            countDownLatch.countDown();
                        } else {
                            final int i2 = i;
                            concurrentLinkedQueue.add(C1952c.m15774a(m16259a, parse, new C2102k.AbstractC2108b() { // from class: com.facebook.internal.z.d.1
                                @Override // com.facebook.C2102k.AbstractC2108b
                                /* renamed from: a */
                                public void mo15229a(C2194n c2194n) {
                                    C1990i m14987a;
                                    try {
                                        m14987a = c2194n.m14987a();
                                    } catch (Exception e) {
                                        AsyncTaskC2093d.this.f6160d[i2] = e;
                                    }
                                    if (m14987a != null) {
                                        String m15704e = m14987a.m15704e();
                                        String str = m15704e;
                                        if (m15704e == null) {
                                            str = "Error staging photo.";
                                        }
                                        throw new FacebookGraphResponseException(c2194n, str);
                                    }
                                    JSONObject m14980b = c2194n.m14980b();
                                    if (m14980b == null) {
                                        throw new FacebookException("Error staging photo.");
                                    }
                                    String optString = m14980b.optString("uri");
                                    if (optString == null) {
                                        throw new FacebookException("Error staging photo.");
                                    }
                                    strArr[i2] = optString;
                                    countDownLatch.countDown();
                                }
                            }).m15292j());
                        }
                        i++;
                    }
                } catch (Exception e) {
                    Iterator it2 = concurrentLinkedQueue.iterator();
                    while (it2.hasNext()) {
                        ((AsyncTask) it2.next()).cancel(true);
                    }
                    strArr = null;
                }
            }
            return strArr;
        }
    }

    public DialogC2085z(Context context, String str) {
        this(context, str, m15409a());
    }

    private DialogC2085z(Context context, String str, int i) {
        super(context, i == 0 ? m15409a() : i);
        this.f6134c = "fbconnect://success";
        this.f6141j = false;
        this.f6142k = false;
        this.f6143l = false;
        this.f6133b = str;
    }

    private DialogC2085z(Context context, String str, Bundle bundle, int i, AbstractC2092c abstractC2092c) {
        super(context, i == 0 ? m15409a() : i);
        this.f6134c = "fbconnect://success";
        this.f6141j = false;
        this.f6142k = false;
        this.f6143l = false;
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        this.f6134c = C2079x.m15432f(context) ? "fbconnect://chrome_os_success" : "fbconnect://success";
        bundle2.putString("redirect_uri", this.f6134c);
        bundle2.putString("display", "touch");
        bundle2.putString("client_id", C2095j.m15356l());
        bundle2.putString("sdk", String.format(Locale.ROOT, "android-%s", C2095j.m15358j()));
        this.f6135d = abstractC2092c;
        if (!str.equals("share") || !bundle2.containsKey("media")) {
            this.f6133b = C2079x.m15468a(C2077v.m15498a(), C2095j.m15359i() + "/dialog/" + str, bundle2).toString();
        } else {
            this.f6140i = new AsyncTaskC2093d(str, bundle2);
        }
    }

    /* renamed from: a */
    public static int m15409a() {
        C2084y.m15420a();
        return f6132m;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [double] */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* renamed from: a */
    private int m15407a(int i, float f, int i2, int i3) {
        ?? r12 = true;
        int i4 = (int) (i / f);
        if (i4 <= i2) {
            r12 = true;
        } else if (i4 < i3) {
            r12 = 0.5d + (((i3 - i4) / (i3 - i2)) * 0.5d);
        }
        return (int) ((r12 == true ? 1.0d : 0.0d) * i);
    }

    /* renamed from: a */
    public static DialogC2085z m15405a(Context context, String str, Bundle bundle, int i, AbstractC2092c abstractC2092c) {
        m15406a(context);
        return new DialogC2085z(context, str, bundle, i, abstractC2092c);
    }

    /* renamed from: a */
    public static void m15408a(int i) {
        if (i == 0) {
            i = f6131a;
        }
        f6132m = i;
    }

    /* renamed from: a */
    public static void m15406a(Context context) {
        if (context == null) {
            return;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null || applicationInfo.metaData == null || f6132m != 0) {
                return;
            }
            m15408a(applicationInfo.metaData.getInt("com.facebook.sdk.WebDialogTheme"));
        } catch (PackageManager.NameNotFoundException e) {
        }
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    /* renamed from: b */
    public void m15395b(int i) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.f6136e = new WebView(getContext()) { // from class: com.facebook.internal.z.3
            @Override // android.webkit.WebView, android.view.View
            public void onWindowFocusChanged(boolean z) {
                try {
                    super.onWindowFocusChanged(z);
                } catch (NullPointerException e) {
                }
            }
        };
        this.f6136e.setVerticalScrollBarEnabled(false);
        this.f6136e.setHorizontalScrollBarEnabled(false);
        this.f6136e.setWebViewClient(new C2091b());
        this.f6136e.getSettings().setJavaScriptEnabled(true);
        this.f6136e.loadUrl(this.f6133b);
        this.f6136e.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f6136e.setVisibility(4);
        this.f6136e.getSettings().setSavePassword(false);
        this.f6136e.getSettings().setSaveFormData(false);
        this.f6136e.setFocusable(true);
        this.f6136e.setFocusableInTouchMode(true);
        this.f6136e.setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.internal.z.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (!view.hasFocus()) {
                    view.requestFocus();
                    return false;
                }
                return false;
            }
        });
        linearLayout.setPadding(i, i, i, i);
        linearLayout.addView(this.f6136e);
        linearLayout.setBackgroundColor(-872415232);
        this.f6139h.addView(linearLayout);
    }

    /* renamed from: f */
    private void m15386f() {
        this.f6138g = new ImageView(getContext());
        this.f6138g.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.internal.z.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DialogC2085z.this.cancel();
            }
        });
        this.f6138g.setImageDrawable(getContext().getResources().getDrawable(C1974a.C1976b.com_facebook_close));
        this.f6138g.setVisibility(4);
    }

    /* renamed from: a */
    protected Bundle mo15398a(String str) {
        Uri parse = Uri.parse(str);
        Bundle m15437d = C2079x.m15437d(parse.getQuery());
        m15437d.putAll(C2079x.m15437d(parse.getFragment()));
        return m15437d;
    }

    /* renamed from: a */
    protected void m15404a(Bundle bundle) {
        if (this.f6135d == null || this.f6141j) {
            return;
        }
        this.f6141j = true;
        this.f6135d.mo15062a(bundle, null);
        dismiss();
    }

    /* renamed from: a */
    public void m15403a(AbstractC2092c abstractC2092c) {
        this.f6135d = abstractC2092c;
    }

    /* renamed from: a */
    protected void m15397a(Throwable th) {
        if (this.f6135d == null || this.f6141j) {
            return;
        }
        this.f6141j = true;
        this.f6135d.mo15062a(null, th instanceof FacebookException ? (FacebookException) th : new FacebookException(th));
        dismiss();
    }

    /* renamed from: b */
    public void m15393b(String str) {
        this.f6134c = str;
    }

    /* renamed from: b */
    public boolean m15396b() {
        return this.f6141j;
    }

    /* renamed from: c */
    public boolean m15392c() {
        return this.f6143l;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        if (this.f6135d == null || this.f6141j) {
            return;
        }
        m15397a(new FacebookOperationCanceledException());
    }

    /* renamed from: d */
    public WebView m15390d() {
        return this.f6136e;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (this.f6136e != null) {
            this.f6136e.stopLoading();
        }
        if (!this.f6142k && this.f6137f != null && this.f6137f.isShowing()) {
            this.f6137f.dismiss();
        }
        super.dismiss();
    }

    /* renamed from: e */
    public void m15388e() {
        Display defaultDisplay = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        getWindow().setLayout(Math.min(m15407a(displayMetrics.widthPixels < displayMetrics.heightPixels ? displayMetrics.widthPixels : displayMetrics.heightPixels, displayMetrics.density, 480, 800), displayMetrics.widthPixels), Math.min(m15407a(displayMetrics.widthPixels < displayMetrics.heightPixels ? displayMetrics.heightPixels : displayMetrics.widthPixels, displayMetrics.density, 800, 1280), displayMetrics.heightPixels));
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        this.f6142k = false;
        if (C2079x.m15439d(getContext()) && this.f6144n != null && this.f6144n.token == null) {
            this.f6144n.token = getOwnerActivity().getWindow().getAttributes().token;
            C2079x.m15449b("FacebookSDK.WebDialog", "Set token on onAttachedToWindow(): " + this.f6144n.token);
        }
        super.onAttachedToWindow();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f6137f = new ProgressDialog(getContext());
        this.f6137f.requestWindowFeature(1);
        this.f6137f.setMessage(getContext().getString(C1974a.C1979e.com_facebook_loading));
        this.f6137f.setCanceledOnTouchOutside(false);
        this.f6137f.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.facebook.internal.z.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                DialogC2085z.this.cancel();
            }
        });
        requestWindowFeature(1);
        this.f6139h = new FrameLayout(getContext());
        m15388e();
        getWindow().setGravity(17);
        getWindow().setSoftInputMode(16);
        m15386f();
        if (this.f6133b != null) {
            m15395b((this.f6138g.getDrawable().getIntrinsicWidth() / 2) + 1);
        }
        this.f6139h.addView(this.f6138g, new ViewGroup.LayoutParams(-2, -2));
        setContentView(this.f6139h);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.f6142k = true;
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
    protected void onStart() {
        super.onStart();
        if (this.f6140i == null || this.f6140i.getStatus() != AsyncTask.Status.PENDING) {
            m15388e();
            return;
        }
        this.f6140i.execute(new Void[0]);
        this.f6137f.show();
    }

    @Override // android.app.Dialog
    protected void onStop() {
        if (this.f6140i != null) {
            this.f6140i.cancel(true);
            this.f6137f.dismiss();
        }
        super.onStop();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        if (layoutParams.token == null) {
            this.f6144n = layoutParams;
        }
        super.onWindowAttributesChanged(layoutParams);
    }
}
