package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.google.android.gms.internal.ads.AbstractC2764ads;
import com.google.android.gms.internal.ads.aea;
import com.google.android.gms.internal.ads.aec;
@TargetApi(17)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ado.class */
public final class ado<WebViewT extends AbstractC2764ads & aea & aec> {

    /* renamed from: a */
    private final adt f7966a;

    /* renamed from: b */
    private final WebViewT f7967b;

    private ado(WebViewT webviewt, adt adtVar) {
        this.f7966a = adtVar;
        this.f7967b = webviewt;
    }

    /* renamed from: a */
    public static ado<act> m13562a(act actVar) {
        return new ado<>(actVar, new adt(actVar) { // from class: com.google.android.gms.internal.ads.adr

            /* renamed from: a */
            private final act f7975a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7975a = actVar;
            }

            @Override // com.google.android.gms.internal.ads.adt
            /* renamed from: a */
            public final void mo13560a(Uri uri) {
                aef mo13426v = this.f7975a.mo13426v();
                if (mo13426v == null) {
                    C3556uu.m6749c("Unable to pass GMSG, no AdWebViewClient for AdWebView!");
                } else {
                    mo13426v.mo13533a(uri);
                }
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ void m13561a(String str) {
        this.f7966a.mo13560a(Uri.parse(str));
    }

    @JavascriptInterface
    public final String getClickSignals(String str) {
        String mo11048a;
        if (TextUtils.isEmpty(str)) {
            C3556uu.m7052a("Click string is empty, not proceeding.");
            mo11048a = "";
        } else {
            ctl mo13423y = this.f7967b.mo13423y();
            if (mo13423y == null) {
                C3556uu.m7052a("Signal utils is empty, ignoring.");
                mo11048a = "";
            } else {
                cjd m10670a = mo13423y.m10670a();
                if (m10670a == null) {
                    C3556uu.m7052a("Signals object is empty, ignoring.");
                    mo11048a = "";
                } else if (this.f7967b.getContext() == null) {
                    C3556uu.m7052a("Context is null, ignoring.");
                    mo11048a = "";
                } else {
                    mo11048a = m10670a.mo11048a(this.f7967b.getContext(), str, this.f7967b.getView(), this.f7967b.mo13444f());
                }
            }
        }
        return mo11048a;
    }

    @JavascriptInterface
    public final void notify(String str) {
        if (TextUtils.isEmpty(str)) {
            C3556uu.m6745e("URL is empty, ignoring message");
        } else {
            C3567ve.f17498a.post(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.adq

                /* renamed from: a */
                private final ado f7973a;

                /* renamed from: b */
                private final String f7974b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f7973a = this;
                    this.f7974b = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f7973a.m13561a(this.f7974b);
                }
            });
        }
    }
}
