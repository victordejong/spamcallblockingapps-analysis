package com.p488vk.api.sdk.p498ui;

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
import com.p488vk.api.sdk.AbstractC17689i;
import com.p488vk.api.sdk.C17587a;
import com.p488vk.api.sdk.C17601b;
import com.p488vk.api.sdk.p492a.C17597d;
import com.p488vk.api.sdk.p492a.EnumC17600f;
import com.p488vk.api.sdk.p496e.C17679i;
import io.bidmachine.BidMachineFetcher;
import java.util.ArrayList;
import java.util.Map;
import kotlin.C18538n;
import kotlin.C20126t;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18240ab;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018�� \u001a2\u00020\u0001:\u0002\u001a\u001bB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0003J\u0014\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0011H\u0014J\b\u0010\u0012\u001a\u00020\u000fH\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0002J\u0012\u0010\u0015\u001a\u00020\u000f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\b\u0010\u0018\u001a\u00020\u000fH\u0014J\b\u0010\u0019\u001a\u00020\u000fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n��R\u001c\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\b0\b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\rX\u0082.¢\u0006\u0002\n��¨\u0006\u001c"}, m4298d2 = {"Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;", "Landroid/app/Activity;", "()V", "params", "Lcom/vk/api/sdk/auth/VKAuthParams;", EventConstants.PROGRESS, "Landroid/widget/ProgressBar;", "redirectUrl", "", "kotlin.jvm.PlatformType", "getRedirectUrl", "()Ljava/lang/String;", "webView", "Landroid/webkit/WebView;", "configureWebView", "", "getUrlParams", "", "loadUrl", "needValidationResult", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "showWebView", "Companion", "OAuthWebViewClient", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.ui.VKWebViewAuthActivity */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKWebViewAuthActivity.class */
public class VKWebViewAuthActivity extends Activity {

    /* renamed from: a */
    public static final C17725a f62576a = new C17725a(null);

    /* renamed from: e */
    private static AbstractC17689i.C17691b f62577e;

    /* renamed from: b */
    private WebView f62578b;

    /* renamed from: c */
    private ProgressBar f62579c;

    /* renamed from: d */
    private C17597d f62580d;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0016\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0019"}, m4298d2 = {"Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$Companion;", "", "()V", "VK_EXTRA_AUTH_PARAMS", "", "VK_EXTRA_VALIDATION_URL", "VK_RESULT_INTENT_NAME", "validationResult", "Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;", "getValidationResult", "()Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;", "setValidationResult", "(Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;)V", "startForAuth", "", "activity", "Landroid/app/Activity;", "params", "Lcom/vk/api/sdk/auth/VKAuthParams;", "code", "", "startForValidation", "context", "Landroid/content/Context;", "validationUrl", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.ui.VKWebViewAuthActivity$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKWebViewAuthActivity$a.class */
    public static final class C17725a {
        private C17725a() {
        }

        public /* synthetic */ C17725a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0004\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0002J\u001c\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J&\u0010\f\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J&\u0010\u000f\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0017J.\u0010\u000f\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u00072\b\u0010\u0017\u001a\u0004\u0018\u00010\u0007H\u0016J\u001c\u0010\u0018\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0017J\u001c\u0010\u0018\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u001c\u0010\u0019\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0007H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u001a"}, m4298d2 = {"Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$OAuthWebViewClient;", "Landroid/webkit/WebViewClient;", "(Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;)V", "hasError", "", "handleUrl", "url", "", "onPageFinished", "", "view", "Landroid/webkit/WebView;", "onPageStarted", "favicon", "Landroid/graphics/Bitmap;", "onReceivedError", "request", "Landroid/webkit/WebResourceRequest;", "error", "Landroid/webkit/WebResourceError;", "errorCode", "", "description", "failingUrl", "shouldOverrideUrlLoading", "showError", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.ui.VKWebViewAuthActivity$b */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKWebViewAuthActivity$b.class */
    public final class C17726b extends WebViewClient {

        /* renamed from: b */
        private boolean f62582b;

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n¢\u0006\u0002\b\u0007"}, m4298d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Landroid/content/DialogInterface;", "kotlin.jvm.PlatformType", "<anonymous parameter 1>", "", "onClick"}, m4297k = 3, m4296mv = {1, 4, 2})
        /* renamed from: com.vk.api.sdk.ui.VKWebViewAuthActivity$b$a */
        /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKWebViewAuthActivity$b$a.class */
        public static final class DialogInterface$OnClickListenerC17727a implements DialogInterface.OnClickListener {
            DialogInterface$OnClickListenerC17727a() {
                C17726b.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                C17726b.this.f62582b = false;
                VKWebViewAuthActivity.this.m4780b();
            }
        }

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n¢\u0006\u0002\b\u0007"}, m4298d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Landroid/content/DialogInterface;", "kotlin.jvm.PlatformType", "<anonymous parameter 1>", "", "onClick"}, m4297k = 3, m4296mv = {1, 4, 2})
        /* renamed from: com.vk.api.sdk.ui.VKWebViewAuthActivity$b$b */
        /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKWebViewAuthActivity$b$b.class */
        public static final class DialogInterface$OnClickListenerC17728b implements DialogInterface.OnClickListener {
            DialogInterface$OnClickListenerC17728b() {
                C17726b.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                VKWebViewAuthActivity.this.setResult(0);
                VKWebViewAuthActivity.this.finish();
            }
        }

        public C17726b() {
            VKWebViewAuthActivity.this = r4;
        }

        /* renamed from: a */
        private final void m4775a(WebView webView, String str) {
            this.f62582b = true;
            try {
                new AlertDialog.Builder(webView != null ? webView.getContext() : null).setMessage(str).setPositiveButton(C17587a.C17590c.vk_retry, new DialogInterface$OnClickListenerC17727a()).setNegativeButton(17039360, new DialogInterface$OnClickListenerC17728b()).show();
            } catch (Exception e) {
                VKWebViewAuthActivity.this.setResult(0);
                VKWebViewAuthActivity.this.finish();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0093  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final boolean m4773a(java.lang.String r8) {
            /*
                Method dump skipped, instructions count: 244
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.p488vk.api.sdk.p498ui.VKWebViewAuthActivity.C17726b.m4773a(java.lang.String):boolean");
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            if (!this.f62582b) {
                VKWebViewAuthActivity.m4777c(VKWebViewAuthActivity.this);
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            m4773a(str);
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            m4775a(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            CharSequence description;
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            m4775a(webView, (Build.VERSION.SDK_INT < 23 || webResourceError == null || (description = webResourceError.getDescription()) == null) ? null : description.toString());
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            return m4773a(String.valueOf(webResourceRequest != null ? webResourceRequest.getUrl() : null));
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return m4773a(str);
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ AbstractC17689i.C17691b m4783a() {
        return f62577e;
    }

    /* renamed from: a */
    public static final /* synthetic */ String m4781a(VKWebViewAuthActivity vKWebViewAuthActivity) {
        if (vKWebViewAuthActivity.m4778c()) {
            return vKWebViewAuthActivity.getIntent().getStringExtra("vk_validation_url");
        }
        C17597d c17597d = vKWebViewAuthActivity.f62580d;
        if (c17597d == null) {
            C18524p.m3848a("params");
        }
        return c17597d.f62330c;
    }

    /* renamed from: a */
    public static final /* synthetic */ void m4782a(AbstractC17689i.C17691b c17691b) {
        f62577e = c17691b;
    }

    /* renamed from: b */
    public final void m4780b() {
        String str;
        try {
            if (m4778c()) {
                str = getIntent().getStringExtra("vk_validation_url");
            } else {
                Uri.Builder buildUpon = Uri.parse("https://oauth.vk.com/authorize").buildUpon();
                C17597d c17597d = this.f62580d;
                if (c17597d == null) {
                    C18524p.m3848a("params");
                }
                C18538n m1103a = C20126t.m1103a("client_id", String.valueOf(c17597d.f62329b));
                C17597d c17597d2 = this.f62580d;
                if (c17597d2 == null) {
                    C18524p.m3848a("params");
                }
                C18538n m1103a2 = C20126t.m1103a("scope", C18282n.m4148a(c17597d2.f62328a, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62));
                C17597d c17597d3 = this.f62580d;
                if (c17597d3 == null) {
                    C18524p.m3848a("params");
                }
                for (Map.Entry entry : C18247ai.m4251a(m1103a, m1103a2, C20126t.m1103a("redirect_uri", c17597d3.f62330c), C20126t.m1103a("response_type", "token"), C20126t.m1103a(BidMachineFetcher.AD_TYPE_DISPLAY, "mobile"), C20126t.m1103a("v", C17601b.m4882c()), C20126t.m1103a("revoke", "1")).entrySet()) {
                    buildUpon.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
                }
                str = buildUpon.build().toString();
            }
            WebView webView = this.f62578b;
            if (webView == null) {
                C18524p.m3848a("webView");
            }
            webView.loadUrl(str);
        } catch (Exception e) {
            setResult(0);
            finish();
        }
    }

    /* renamed from: c */
    public static final /* synthetic */ void m4777c(VKWebViewAuthActivity vKWebViewAuthActivity) {
        ProgressBar progressBar = vKWebViewAuthActivity.f62579c;
        if (progressBar == null) {
            C18524p.m3848a(EventConstants.PROGRESS);
        }
        progressBar.setVisibility(8);
        WebView webView = vKWebViewAuthActivity.f62578b;
        if (webView == null) {
            C18524p.m3848a("webView");
        }
        webView.setVisibility(0);
    }

    /* renamed from: c */
    public final boolean m4778c() {
        return getIntent().getStringExtra("vk_validation_url") != null;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        C17597d c17597d;
        ArrayList arrayList;
        super.onCreate(bundle);
        setContentView(C17587a.C17589b.vk_webview_auth_dialog);
        View findViewById = findViewById(C17587a.C17588a.webView);
        C18524p.m3843b(findViewById, "findViewById(R.id.webView)");
        this.f62578b = (WebView) findViewById;
        View findViewById2 = findViewById(C17587a.C17588a.progress);
        C18524p.m3843b(findViewById2, "findViewById(R.id.progress)");
        this.f62579c = (ProgressBar) findViewById2;
        C17597d.C17598a c17598a = C17597d.f62327d;
        Bundle bundleExtra = getIntent().getBundleExtra("vk_auth_params");
        if (bundleExtra == null) {
            c17597d = null;
        } else {
            int i = bundleExtra.getInt("vk_app_id");
            ArrayList<String> stringArrayList = bundleExtra.getStringArrayList("vk_app_scope");
            if (stringArrayList != null) {
                ArrayList<String> arrayList2 = stringArrayList;
                ArrayList arrayList3 = new ArrayList(C18282n.m4163a((Iterable) arrayList2, 10));
                for (String it2 : arrayList2) {
                    C18524p.m3843b(it2, "it");
                    arrayList3.add(EnumC17600f.valueOf(it2));
                }
                arrayList = arrayList3;
            } else {
                arrayList = C18240ab.f63351a;
            }
            String redirectUrl = bundleExtra.getString("vk_app_redirect_url", "https://oauth.vk.com/blank.html");
            C18524p.m3843b(redirectUrl, "redirectUrl");
            c17597d = new C17597d(i, redirectUrl, arrayList);
        }
        if (c17597d != null) {
            this.f62580d = c17597d;
        } else if (!m4778c()) {
            finish();
        }
        WebView webView = this.f62578b;
        if (webView == null) {
            C18524p.m3848a("webView");
        }
        webView.setWebViewClient(new C17726b());
        webView.setVerticalScrollBarEnabled(false);
        webView.setVisibility(4);
        webView.setOverScrollMode(2);
        WebView webView2 = this.f62578b;
        if (webView2 == null) {
            C18524p.m3848a("webView");
        }
        webView2.getSettings().setJavaScriptEnabled(true);
        m4780b();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        WebView webView = this.f62578b;
        if (webView == null) {
            C18524p.m3848a("webView");
        }
        webView.destroy();
        C17679i c17679i = C17679i.f62490a;
        C17679i.m4832b();
        super.onDestroy();
    }
}
