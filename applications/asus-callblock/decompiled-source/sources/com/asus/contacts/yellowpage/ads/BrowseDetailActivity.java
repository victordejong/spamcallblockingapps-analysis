package com.asus.contacts.yellowpage.ads;

import android.app.ActionBar;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.asus.contacts.yellowpage.utils.b;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/ads/BrowseDetailActivity.class */
public class BrowseDetailActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    protected static final String f2792a = BrowseDetailActivity.class.getSimpleName();
    private WebView c;
    private LinearLayout d;
    private LinearLayout e;
    private ImageView f;
    private String i;
    private String j;
    private ProgressBar k;
    private boolean g = false;
    private boolean h = false;

    /* renamed from: b  reason: collision with root package name */
    Handler f2793b = new Handler() { // from class: com.asus.contacts.yellowpage.ads.BrowseDetailActivity.4
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    BrowseDetailActivity.b(BrowseDetailActivity.this);
                    return;
                case 1:
                    BrowseDetailActivity.c(BrowseDetailActivity.this);
                    return;
                default:
                    return;
            }
        }
    };

    static /* synthetic */ void b(BrowseDetailActivity browseDetailActivity) {
        if (browseDetailActivity.d != null && browseDetailActivity.g && browseDetailActivity.h) {
            browseDetailActivity.d.setVisibility(0);
            if (browseDetailActivity.f2793b != null) {
                browseDetailActivity.f2793b.sendMessageDelayed(browseDetailActivity.f2793b.obtainMessage(1), 1000L);
            }
        }
    }

    static /* synthetic */ void c(BrowseDetailActivity browseDetailActivity) {
        if (browseDetailActivity.f != null) {
            browseDetailActivity.f.setVisibility(0);
            browseDetailActivity.f.setOnClickListener(new View.OnClickListener() { // from class: com.asus.contacts.yellowpage.ads.BrowseDetailActivity.5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BrowseDetailActivity.d(BrowseDetailActivity.this);
                }
            });
        }
    }

    static /* synthetic */ void d(BrowseDetailActivity browseDetailActivity) {
        if (browseDetailActivity.d != null) {
            browseDetailActivity.d.setVisibility(8);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131427730);
        if (bundle != null) {
            this.i = bundle.getString("KEY_TITLE");
            this.j = bundle.getString("KEY_URL");
        } else {
            this.i = getIntent().getStringExtra("KEY_TITLE");
            this.j = getIntent().getStringExtra("KEY_URL");
        }
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setTitle(BuildConfig.FLAVOR);
            actionBar.setDisplayShowHomeEnabled(false);
            actionBar.setDisplayHomeAsUpEnabled(true);
        }
        this.k = new ProgressBar(this, null, 16842872);
        this.k.setIndeterminate(true);
        this.k.setLayoutParams(new ActionBar.LayoutParams(-1, 20));
        this.k.setProgress(0);
        this.k.setMax(100);
        final ViewGroup viewGroup = (ViewGroup) getWindow().getDecorView();
        viewGroup.addView(this.k);
        this.k.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.asus.contacts.yellowpage.ads.BrowseDetailActivity.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                BrowseDetailActivity.this.k.setY(viewGroup.findViewById(16908290).getY() - 10.0f);
                BrowseDetailActivity.this.k.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            }
        });
        this.c = (WebView) findViewById(2131297554);
        this.f = (ImageView) findViewById(2131296290);
        this.d = (LinearLayout) findViewById(2131296291);
        this.e = (LinearLayout) findViewById(2131296292);
        this.f.setVisibility(4);
        this.e.setVisibility(0);
        this.d.setVisibility(8);
        this.g = false;
        this.h = false;
        this.c.getSettings().setJavaScriptEnabled(true);
        this.c.setWebChromeClient(new WebChromeClient() { // from class: com.asus.contacts.yellowpage.ads.BrowseDetailActivity.2
            @Override // android.webkit.WebChromeClient
            public final void onProgressChanged(WebView webView, int i) {
                BrowseDetailActivity.this.k.setProgress(i);
                if (i >= 100) {
                    BrowseDetailActivity.this.k.setVisibility(8);
                }
            }
        });
        this.c.setWebViewClient(new WebViewClient() { // from class: com.asus.contacts.yellowpage.ads.BrowseDetailActivity.3
            @Override // android.webkit.WebViewClient
            public final void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                BrowseDetailActivity.this.g = true;
                Log.d(BrowseDetailActivity.f2792a, "onPageFinished url=" + str);
                if (BrowseDetailActivity.this.f2793b != null) {
                    BrowseDetailActivity.this.f2793b.removeMessages(0);
                    BrowseDetailActivity.this.f2793b.sendMessage(BrowseDetailActivity.this.f2793b.obtainMessage(0));
                }
            }

            @Override // android.webkit.WebViewClient
            public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                super.onPageStarted(webView, str, bitmap);
                BrowseDetailActivity.this.g = false;
                Log.d(BrowseDetailActivity.f2792a, "onPageStarted url=" + str);
            }

            @Override // android.webkit.WebViewClient
            public final void onReceivedError(WebView webView, int i, String str, String str2) {
                Log.e(BrowseDetailActivity.f2792a, "onReceivedError:" + str);
            }

            /* JADX WARN: Code restructure failed: missing block: B:15:0x003f, code lost:
                if (r7.startsWith("mailto:") != false) goto L_0x0042;
             */
            @Override // android.webkit.WebViewClient
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final boolean shouldOverrideUrlLoading(android.webkit.WebView r6, java.lang.String r7) {
                /*
                    r5 = this;
                    r0 = 0
                    r8 = r0
                    r0 = r8
                    r9 = r0
                    r0 = r7
                    if (r0 == 0) goto L_0x0081
                    r0 = r7
                    java.lang.String r1 = "tel:"
                    boolean r0 = r0.startsWith(r1)
                    if (r0 != 0) goto L_0x0042
                    r0 = r7
                    java.lang.String r1 = "sms:"
                    boolean r0 = r0.startsWith(r1)
                    if (r0 != 0) goto L_0x0042
                    r0 = r7
                    java.lang.String r1 = "smsto:"
                    boolean r0 = r0.startsWith(r1)
                    if (r0 != 0) goto L_0x0042
                    r0 = r7
                    java.lang.String r1 = "mms:"
                    boolean r0 = r0.startsWith(r1)
                    if (r0 != 0) goto L_0x0042
                    r0 = r7
                    java.lang.String r1 = "mmsto:"
                    boolean r0 = r0.startsWith(r1)
                    if (r0 != 0) goto L_0x0042
                    r0 = r8
                    r9 = r0
                    r0 = r7
                    java.lang.String r1 = "mailto:"
                    boolean r0 = r0.startsWith(r1)
                    if (r0 == 0) goto L_0x0081
                L_0x0042:
                    r0 = r7
                    java.lang.String r1 = ":"
                    java.lang.String[] r0 = r0.split(r1)
                    r6 = r0
                    r0 = r6
                    if (r0 == 0) goto L_0x007e
                    r0 = r6
                    int r0 = r0.length
                    r1 = 1
                    if (r0 <= r1) goto L_0x007e
                    r0 = r6
                    r1 = 1
                    r0 = r0[r1]
                    boolean r0 = android.text.TextUtils.isEmpty(r0)
                    if (r0 != 0) goto L_0x007e
                    r0 = r6
                    r1 = 1
                    r0 = r0[r1]
                    java.lang.String r0 = r0.trim()
                    boolean r0 = android.text.TextUtils.isEmpty(r0)
                    if (r0 != 0) goto L_0x007e
                    android.content.Intent r0 = new android.content.Intent
                    r1 = r0
                    java.lang.String r2 = "android.intent.action.VIEW"
                    r3 = r7
                    android.net.Uri r3 = android.net.Uri.parse(r3)
                    r1.<init>(r2, r3)
                    r6 = r0
                    r0 = r5
                    com.asus.contacts.yellowpage.ads.BrowseDetailActivity r0 = com.asus.contacts.yellowpage.ads.BrowseDetailActivity.this
                    r1 = r6
                    r0.startActivity(r1)
                L_0x007e:
                    r0 = 1
                    r9 = r0
                L_0x0081:
                    java.lang.String r0 = com.asus.contacts.yellowpage.ads.BrowseDetailActivity.f2792a
                    java.lang.StringBuilder r1 = new java.lang.StringBuilder
                    r2 = r1
                    java.lang.String r3 = "shouldOverrideUrlLoading url="
                    r2.<init>(r3)
                    r2 = r7
                    java.lang.StringBuilder r1 = r1.append(r2)
                    java.lang.String r2 = ", result="
                    java.lang.StringBuilder r1 = r1.append(r2)
                    r2 = r9
                    java.lang.StringBuilder r1 = r1.append(r2)
                    java.lang.String r1 = r1.toString()
                    int r0 = android.util.Log.d(r0, r1)
                    r0 = r9
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.asus.contacts.yellowpage.ads.BrowseDetailActivity.AnonymousClass3.shouldOverrideUrlLoading(android.webkit.WebView, java.lang.String):boolean");
            }
        });
        this.c.loadUrl(this.j);
        b.a((Activity) this, "Web Page");
        b.b((Activity) this, "Web Page");
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(2131492913, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z = true;
        String url = this.c.getUrl();
        Log.v(f2792a, "onOptionsItemSelected. Url = " + url);
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                break;
            case 2131296281:
                if (TextUtils.isEmpty(url)) {
                    Log.e(f2792a, "url is empty or null");
                    break;
                } else {
                    try {
                        Intent intent = new Intent();
                        intent.setAction("android.intent.action.VIEW");
                        intent.addCategory("android.intent.category.BROWSABLE");
                        intent.setData(Uri.parse(url));
                        startActivity(intent);
                        break;
                    } catch (Exception e) {
                        Log.e(f2792a, "Open with browser failed!");
                        break;
                    }
                }
            case 2131296282:
                this.c.reload();
                break;
            case 2131296283:
                if (TextUtils.isEmpty(url)) {
                    Log.e(f2792a, "url is empty or null");
                    break;
                } else {
                    Intent intent2 = new Intent("android.intent.action.SEND");
                    intent2.setType("text/plain");
                    intent2.putExtra("android.intent.extra.TEXT", url);
                    intent2.putExtra("android.intent.extra.SUBJECT", this.c.getTitle());
                    try {
                        startActivity(Intent.createChooser(intent2, getString(2131755125)));
                        break;
                    } catch (ActivityNotFoundException e2) {
                        Log.e(f2792a, e2.toString());
                        break;
                    }
                }
            default:
                z = false;
                break;
        }
        return z;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        bundle.putString("KEY_TITLE", this.i);
        bundle.putString("KEY_URL", this.j);
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }
}
