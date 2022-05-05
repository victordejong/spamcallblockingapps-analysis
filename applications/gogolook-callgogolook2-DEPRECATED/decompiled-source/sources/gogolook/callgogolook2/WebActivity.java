package gogolook.callgogolook2;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.URLUtil;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import gogolook.callgogolook2.app.WhoscallActivity;
import p459j.p460a.C12376f;
import p459j.p460a.p518j.p520f.C12484b;
import p459j.p460a.p549o0.C13297a;
import p459j.p460a.p582w0.C14190u4;
import p459j.p460a.p582w0.C14217x3;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/WebActivity.class */
public class WebActivity extends WhoscallActivity {

    /* renamed from: e */
    public WebView f10616e;

    /* renamed from: f */
    public ProgressBar f10617f;

    /* renamed from: g */
    public C12484b f10618g;

    /* renamed from: h */
    public ValueCallback<Uri[]> f10619h = null;

    /* renamed from: i */
    public ValueCallback<Uri> f10620i = null;

    /* renamed from: j */
    public String f10621j = null;

    /* renamed from: k */
    public boolean f10622k = false;

    /* renamed from: l */
    public int f10623l = 0;

    /* renamed from: gogolook.callgogolook2.WebActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/WebActivity$a.class */
    public class View$OnTouchListenerC4380a implements View.OnTouchListener {
        public View$OnTouchListenerC4380a(WebActivity webActivity) {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if ((action != 0 && action != 1) || view.hasFocus()) {
                return false;
            }
            view.requestFocus();
            return false;
        }
    }

    /* renamed from: gogolook.callgogolook2.WebActivity$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/WebActivity$b.class */
    public class C4381b extends WebChromeClient {
        public C4381b() {
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            WebActivity.this.f10617f.setVisibility(0);
            WebActivity.this.f10617f.setProgress(i);
            if (i == 100) {
                WebActivity.this.f10617f.setVisibility(8);
            }
        }

        @Override // android.webkit.WebChromeClient
        @TargetApi(21)
        public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
            if (WebActivity.this.f10619h != null) {
                WebActivity.this.f10619h.onReceiveValue(null);
            }
            WebActivity.this.f10619h = valueCallback;
            WebActivity.this.m28882o();
            return true;
        }

        public void openFileChooser(ValueCallback<Uri> valueCallback) {
            WebActivity.this.f10620i = valueCallback;
            WebActivity.this.m28882o();
        }

        public void openFileChooser(ValueCallback<Uri> valueCallback, String str) {
            WebActivity.this.f10620i = valueCallback;
            WebActivity.this.m28882o();
        }

        public void openFileChooser(ValueCallback<Uri> valueCallback, String str, String str2) {
            WebActivity.this.f10620i = valueCallback;
            WebActivity.this.m28882o();
        }
    }

    /* renamed from: gogolook.callgogolook2.WebActivity$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/WebActivity$c.class */
    public class C4382c extends WebViewClient {
        public C4382c() {
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (str.startsWith("https://c3rpn") || str.startsWith("https://ze3ys")) {
                C14217x3.m2156c(WebActivity.this, new Intent("android.intent.action.VIEW", Uri.parse(str)));
                return true;
            } else if (!str.startsWith("http")) {
                Intent a = C13297a.m4310a(WebActivity.this, str, null);
                if (a == null) {
                    return false;
                }
                C14217x3.m2156c(WebActivity.this, a);
                return true;
            } else if (str.contains("play.google")) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse(str));
                C14217x3.m2156c(WebActivity.this, intent);
                return true;
            } else {
                Intent a2 = C13297a.m4311a(WebActivity.this, str);
                if (a2 == null) {
                    return false;
                }
                C14217x3.m2156c(WebActivity.this, a2);
                return true;
            }
        }
    }

    /* renamed from: a */
    public static Intent m28890a(Context context, String str, String str2, String str3) {
        return m28889a(context, false, str, str2, str3, 0);
    }

    /* renamed from: a */
    public static Intent m28889a(Context context, boolean z, String str, String str2, String str3, int i) {
        Intent intent = new Intent(context, WebActivity.class);
        intent.putExtra("title", str);
        if (!TextUtils.isEmpty(str2)) {
            intent.putExtra("subtitle", str2);
        }
        intent.putExtra("skip.navigating", z);
        intent.putExtra("url", str3);
        intent.putExtra("from", i);
        return intent;
    }

    /* renamed from: c */
    public final void m28883c(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f10617f = (ProgressBar) findViewById(2131363006);
            this.f10616e = (WebView) findViewById(2131363717);
            this.f10616e.setOnTouchListener(new View$OnTouchListenerC4380a(this));
            this.f10616e.getSettings().setDomStorageEnabled(true);
            this.f10616e.getSettings().setBuiltInZoomControls(true);
            this.f10616e.setScrollBarStyle(33554432);
            this.f10616e.setScrollbarFadingEnabled(false);
            if (str.contains("whoscall.com")) {
                this.f10616e.getSettings().setUserAgentString("whoscall|android");
            }
            this.f10616e.getSettings().setLoadWithOverviewMode(true);
            this.f10616e.getSettings().setUseWideViewPort(true);
            this.f10616e.setWebChromeClient(new C4381b());
            this.f10616e.setWebViewClient(new C4382c());
            C14190u4.m2263a(this.f10616e);
            this.f10616e.loadUrl(str);
        }
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity
    /* renamed from: m */
    public boolean mo28679m() {
        return !this.f10622k && super.mo28679m();
    }

    /* renamed from: o */
    public final void m28882o() {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("image/*");
        startActivityForResult(Intent.createChooser(intent, "File Chooser"), 1);
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        Uri[] uriArr;
        Uri uri;
        if (i != 1) {
            return;
        }
        if (this.f10620i != null) {
            if (intent == null || i2 != -1) {
                String str = this.f10621j;
                uri = str != null ? Uri.parse(str) : null;
            } else {
                uri = intent.getData();
            }
            this.f10620i.onReceiveValue(uri);
            this.f10620i = null;
        } else if (this.f10619h != null && Build.VERSION.SDK_INT >= 21) {
            if (i2 == -1 && intent != null) {
                ClipData clipData = intent.getClipData();
                String dataString = intent.getDataString();
                int i3 = 0;
                if (clipData != null) {
                    Uri[] uriArr2 = null;
                    while (true) {
                        uriArr = uriArr2;
                        if (i3 >= clipData.getItemCount()) {
                            break;
                        }
                        Uri[] uriArr3 = uriArr2;
                        if (uriArr2 == null) {
                            uriArr3 = new Uri[clipData.getItemCount()];
                        }
                        uriArr3[i3] = clipData.getItemAt(i3).getUri();
                        i3++;
                        uriArr2 = uriArr3;
                    }
                } else if (!TextUtils.isEmpty(dataString)) {
                    String str2 = this.f10621j;
                    if (str2 != null) {
                        uriArr = new Uri[]{Uri.parse(str2)};
                    } else {
                        uriArr = new Uri[]{Uri.parse(dataString)};
                        this.f10619h.onReceiveValue(uriArr);
                        this.f10619h = null;
                    }
                }
                this.f10619h.onReceiveValue(uriArr);
                this.f10619h = null;
            }
            uriArr = null;
            this.f10619h.onReceiveValue(uriArr);
            this.f10619h = null;
        }
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        this.f10618g = m28683i();
        this.f10618g.m6038b(WhoscallActivity.m28686b(R$string.newscenter));
        this.f10618g.m6028d(true);
        this.f10618g.m6043a(true);
        this.f10618g.m6032c(false);
        Bundle extras = getIntent().getExtras();
        setContentView(2131558932);
        if (extras != null) {
            this.f10622k = extras.getBoolean("skip.navigating", false);
            if (extras.getString("title") != null) {
                this.f10618g.m6038b(extras.getString("title"));
            }
            if (extras.getString("subtitle") != null) {
                this.f10618g.m6044a(extras.getString("subtitle"));
            }
            str = extras.getString("url");
            this.f10623l = extras.getInt("from");
        } else {
            finish();
            str = null;
        }
        if (URLUtil.isHttpsUrl(str)) {
            m28883c(str);
        } else {
            C14217x3.m2156c(this, new Intent("android.intent.action.VIEW", Uri.parse(str)));
            finish();
        }
        WebView.setWebContentsDebuggingEnabled(false);
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0 || i != 4) {
            return super.onKeyDown(i, keyEvent);
        }
        WebView webView = this.f10616e;
        if (webView == null || !webView.canGoBack()) {
            finish();
        } else {
            this.f10616e.goBack();
        }
        C12376f.f27901b.m6282a(0);
        return true;
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        C14217x3.m2167b((Activity) this);
        C12376f.f27901b.m6282a(0);
        return true;
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putAll(getIntent().getExtras());
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        C12376f.f27901b.m6281b(this.f10623l);
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        C12376f.f27901b.m6283a();
    }
}
