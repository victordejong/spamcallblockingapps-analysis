package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.webkit.JavascriptInterface;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.ads.internal.util.C5722o1;
import com.google.android.gms.internal.ads.ep0;
import com.google.android.gms.internal.ads.gp0;
import com.google.android.gms.internal.ads.xo0;
@TargetApi(17)
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wo0.class */
public final class wo0<WebViewT extends xo0 & ep0 & gp0> {

    /* renamed from: a */
    private final vo0 f31642a;

    /* renamed from: b */
    private final WebViewT f31643b;

    public wo0(WebViewT webviewt, vo0 vo0Var) {
        this.f31642a = vo0Var;
        this.f31643b = webviewt;
    }

    /* renamed from: a */
    public final /* synthetic */ void m9523a(String str) {
        this.f31642a.mo9923a(Uri.parse(str));
    }

    @JavascriptInterface
    public String getClickSignals(String str) {
        if (TextUtils.isEmpty(str)) {
            C5722o1.m17990k("Click string is empty, not proceeding.");
            return "";
        }
        C7016u mo7966A = this.f31643b.mo7966A();
        if (mo7966A == null) {
            C5722o1.m17990k("Signal utils is empty, ignoring.");
            return "";
        }
        AbstractC6868q m10450b = mo7966A.m10450b();
        if (m10450b == null) {
            C5722o1.m17990k("Signals object is empty, ignoring.");
            return "";
        } else if (this.f31643b.getContext() == null) {
            C5722o1.m17990k("Context is null, ignoring.");
            return "";
        } else {
            Context context = this.f31643b.getContext();
            WebViewT webviewt = this.f31643b;
            return m10450b.mo11748e(context, str, (View) webviewt, webviewt.mo7908g());
        }
    }

    @JavascriptInterface
    public void notify(String str) {
        if (TextUtils.isEmpty(str)) {
            ei0.m15464f("URL is empty, ignoring message");
        } else {
            C5679c2.f18451a.post(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.uo0

                /* renamed from: d */
                private final wo0 f30685d;

                /* renamed from: e */
                private final String f30686e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f30685d = this;
                    this.f30686e = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f30685d.m9523a(this.f30686e);
                }
            });
        }
    }
}
