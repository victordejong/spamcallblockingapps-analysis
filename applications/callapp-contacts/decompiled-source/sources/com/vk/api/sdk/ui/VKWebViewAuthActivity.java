package com.vk.api.sdk.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import com.vk.api.sdk.a;
import com.vk.api.sdk.a.d;
import com.vk.api.sdk.a.f;
import com.vk.api.sdk.i;
import io.bidmachine.BidMachineFetcher;
import java.util.ArrayList;
import java.util.Map;
import kotlin.Metadata;
import kotlin.a.ab;
import kotlin.a.ai;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.n;
import kotlin.t;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018�� \u001a2\u00020\u0001:\u0002\u001a\u001bB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0003J\u0014\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0011H\u0014J\b\u0010\u0012\u001a\u00020\u000fH\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0002J\u0012\u0010\u0015\u001a\u00020\u000f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\b\u0010\u0018\u001a\u00020\u000fH\u0014J\b\u0010\u0019\u001a\u00020\u000fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n��R\u001c\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\b0\b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\rX\u0082.¢\u0006\u0002\n��¨\u0006\u001c"}, d2 = {"Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;", "Landroid/app/Activity;", "()V", "params", "Lcom/vk/api/sdk/auth/VKAuthParams;", EventConstants.PROGRESS, "Landroid/widget/ProgressBar;", "redirectUrl", "", "kotlin.jvm.PlatformType", "getRedirectUrl", "()Ljava/lang/String;", "webView", "Landroid/webkit/WebView;", "configureWebView", "", "getUrlParams", "", "loadUrl", "needValidationResult", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "showWebView", "Companion", "OAuthWebViewClient", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKWebViewAuthActivity.class */
public class VKWebViewAuthActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    public static final a f36138a = new a(null);
    private static i.b e;

    /* renamed from: b  reason: collision with root package name */
    private WebView f36139b;

    /* renamed from: c  reason: collision with root package name */
    private ProgressBar f36140c;

    /* renamed from: d  reason: collision with root package name */
    private d f36141d;

    @Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0016\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0019"}, d2 = {"Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$Companion;", "", "()V", "VK_EXTRA_AUTH_PARAMS", "", "VK_EXTRA_VALIDATION_URL", "VK_RESULT_INTENT_NAME", "validationResult", "Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;", "getValidationResult", "()Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;", "setValidationResult", "(Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;)V", "startForAuth", "", "activity", "Landroid/app/Activity;", "params", "Lcom/vk/api/sdk/auth/VKAuthParams;", "code", "", "startForValidation", "context", "Landroid/content/Context;", "validationUrl", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKWebViewAuthActivity$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0004\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0002J\u001c\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J&\u0010\f\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J&\u0010\u000f\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0017J.\u0010\u000f\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u00072\b\u0010\u0017\u001a\u0004\u0018\u00010\u0007H\u0016J\u001c\u0010\u0018\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0017J\u001c\u0010\u0018\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u001c\u0010\u0019\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0007H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u001a"}, d2 = {"Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$OAuthWebViewClient;", "Landroid/webkit/WebViewClient;", "(Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;)V", "hasError", "", "handleUrl", "url", "", "onPageFinished", "", "view", "Landroid/webkit/WebView;", "onPageStarted", "favicon", "Landroid/graphics/Bitmap;", "onReceivedError", "request", "Landroid/webkit/WebResourceRequest;", "error", "Landroid/webkit/WebResourceError;", "errorCode", "", "description", "failingUrl", "shouldOverrideUrlLoading", "showError", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKWebViewAuthActivity$b.class */
    public final class b extends WebViewClient {

        /* renamed from: b  reason: collision with root package name */
        private boolean f36143b;

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Landroid/content/DialogInterface;", "kotlin.jvm.PlatformType", "<anonymous parameter 1>", "", "onClick"}, k = 3, mv = {1, 4, 2})
        /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKWebViewAuthActivity$b$a.class */
        public static final class a implements DialogInterface.OnClickListener {
            a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                b.this.f36143b = false;
                VKWebViewAuthActivity.this.b();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Landroid/content/DialogInterface;", "kotlin.jvm.PlatformType", "<anonymous parameter 1>", "", "onClick"}, k = 3, mv = {1, 4, 2})
        /* renamed from: com.vk.api.sdk.ui.VKWebViewAuthActivity$b$b  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKWebViewAuthActivity$b$b.class */
        public static final class DialogInterface$OnClickListenerC0582b implements DialogInterface.OnClickListener {
            DialogInterface$OnClickListenerC0582b() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                VKWebViewAuthActivity.this.setResult(0);
                VKWebViewAuthActivity.this.finish();
            }
        }

        public b() {
        }

        private final void a(WebView webView, String str) {
            this.f36143b = true;
            try {
                new AlertDialog.Builder(webView != null ? webView.getContext() : null).setMessage(str).setPositiveButton(a.c.vk_retry, new a()).setNegativeButton(17039360, new DialogInterface$OnClickListenerC0582b()).show();
            } catch (Exception e) {
                VKWebViewAuthActivity.this.setResult(0);
                VKWebViewAuthActivity.this.finish();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0093  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final boolean a(java.lang.String r8) {
            /*
                Method dump skipped, instructions count: 244
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.vk.api.sdk.ui.VKWebViewAuthActivity.b.a(java.lang.String):boolean");
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            if (!this.f36143b) {
                VKWebViewAuthActivity.c(VKWebViewAuthActivity.this);
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            a(str);
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            a(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            CharSequence description;
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            a(webView, (Build.VERSION.SDK_INT < 23 || webResourceError == null || (description = webResourceError.getDescription()) == null) ? null : description.toString());
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            return a(String.valueOf(webResourceRequest != null ? webResourceRequest.getUrl() : null));
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return a(str);
        }
    }

    public static final /* synthetic */ i.b a() {
        return e;
    }

    public static final /* synthetic */ String a(VKWebViewAuthActivity vKWebViewAuthActivity) {
        if (vKWebViewAuthActivity.c()) {
            return vKWebViewAuthActivity.getIntent().getStringExtra("vk_validation_url");
        }
        d dVar = vKWebViewAuthActivity.f36141d;
        if (dVar == null) {
            p.a("params");
        }
        return dVar.f35950c;
    }

    public static final /* synthetic */ void a(i.b bVar) {
        e = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b() {
        String str;
        try {
            if (c()) {
                str = getIntent().getStringExtra("vk_validation_url");
            } else {
                Uri.Builder buildUpon = Uri.parse("https://oauth.vk.com/authorize").buildUpon();
                d dVar = this.f36141d;
                if (dVar == null) {
                    p.a("params");
                }
                n a2 = t.a("client_id", String.valueOf(dVar.f35949b));
                d dVar2 = this.f36141d;
                if (dVar2 == null) {
                    p.a("params");
                }
                n a3 = t.a("scope", kotlin.a.n.a(dVar2.f35948a, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62));
                d dVar3 = this.f36141d;
                if (dVar3 == null) {
                    p.a("params");
                }
                for (Map.Entry entry : ai.a(a2, a3, t.a("redirect_uri", dVar3.f35950c), t.a("response_type", "token"), t.a(BidMachineFetcher.AD_TYPE_DISPLAY, "mobile"), t.a("v", com.vk.api.sdk.b.c()), t.a("revoke", "1")).entrySet()) {
                    buildUpon.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
                }
                str = buildUpon.build().toString();
            }
            WebView webView = this.f36139b;
            if (webView == null) {
                p.a("webView");
            }
            webView.loadUrl(str);
        } catch (Exception e2) {
            setResult(0);
            finish();
        }
    }

    public static final /* synthetic */ void c(VKWebViewAuthActivity vKWebViewAuthActivity) {
        ProgressBar progressBar = vKWebViewAuthActivity.f36140c;
        if (progressBar == null) {
            p.a(EventConstants.PROGRESS);
        }
        progressBar.setVisibility(8);
        WebView webView = vKWebViewAuthActivity.f36139b;
        if (webView == null) {
            p.a("webView");
        }
        webView.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean c() {
        return getIntent().getStringExtra("vk_validation_url") != null;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        d dVar;
        ab abVar;
        super.onCreate(bundle);
        setContentView(a.b.vk_webview_auth_dialog);
        View findViewById = findViewById(a.C0571a.webView);
        p.b(findViewById, "findViewById(R.id.webView)");
        this.f36139b = (WebView) findViewById;
        View findViewById2 = findViewById(a.C0571a.progress);
        p.b(findViewById2, "findViewById(R.id.progress)");
        this.f36140c = (ProgressBar) findViewById2;
        d.a aVar = d.f35947d;
        Bundle bundleExtra = getIntent().getBundleExtra("vk_auth_params");
        if (bundleExtra == null) {
            dVar = null;
        } else {
            int i = bundleExtra.getInt("vk_app_id");
            ArrayList<String> stringArrayList = bundleExtra.getStringArrayList("vk_app_scope");
            if (stringArrayList != null) {
                ArrayList<String> arrayList = stringArrayList;
                ArrayList arrayList2 = new ArrayList(kotlin.a.n.a((Iterable) arrayList, 10));
                for (String it2 : arrayList) {
                    p.b(it2, "it");
                    arrayList2.add(f.valueOf(it2));
                }
                abVar = arrayList2;
            } else {
                abVar = ab.f36567a;
            }
            String redirectUrl = bundleExtra.getString("vk_app_redirect_url", "https://oauth.vk.com/blank.html");
            p.b(redirectUrl, "redirectUrl");
            dVar = new d(i, redirectUrl, abVar);
        }
        if (dVar != null) {
            this.f36141d = dVar;
        } else if (!c()) {
            finish();
        }
        WebView webView = this.f36139b;
        if (webView == null) {
            p.a("webView");
        }
        webView.setWebViewClient(new b());
        webView.setVerticalScrollBarEnabled(false);
        webView.setVisibility(4);
        webView.setOverScrollMode(2);
        WebView webView2 = this.f36139b;
        if (webView2 == null) {
            p.a("webView");
        }
        webView2.getSettings().setJavaScriptEnabled(true);
        b();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        WebView webView = this.f36139b;
        if (webView == null) {
            p.a("webView");
        }
        webView.destroy();
        com.vk.api.sdk.e.i iVar = com.vk.api.sdk.e.i.f36069a;
        com.vk.api.sdk.e.i.b();
        super.onDestroy();
    }
}
