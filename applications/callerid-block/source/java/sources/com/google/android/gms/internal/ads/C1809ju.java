package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.webkit.JavascriptInterface;
import com.google.android.gms.ads.internal.util.C1433l1;
import com.google.android.gms.ads.internal.util.y0;
import com.google.android.gms.internal.ads.AbstractC1824ku;
import com.google.android.gms.internal.ads.AbstractC1929ru;
import com.google.android.gms.internal.ads.AbstractC1965tu;
@TargetApi(17)
/* renamed from: com.google.android.gms.internal.ads.ju */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ju.class */
public final class C1809ju<WebViewT extends AbstractC1824ku & AbstractC1929ru & AbstractC1965tu> {

    /* renamed from: a */
    private final AbstractC1790iu f6938a;

    /* renamed from: b */
    private final WebViewT f6939b;

    public C1809ju(WebViewT webviewt, AbstractC1790iu abstractC1790iu) {
        this.f6938a = abstractC1790iu;
        this.f6939b = webviewt;
    }

    /* renamed from: a */
    public final /* synthetic */ void m6914a(String str) {
        this.f6938a.m7077a(Uri.parse(str));
    }

    @JavascriptInterface
    public String getClickSignals(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            str2 = "Click string is empty, not proceeding.";
        } else {
            zh2 m5859w = this.f6939b.m5859w();
            if (m5859w == null) {
                str2 = "Signal utils is empty, ignoring.";
            } else {
                xf2 m4633b = m5859w.m4633b();
                if (m4633b == null) {
                    str2 = "Signals object is empty, ignoring.";
                } else if (this.f6939b.getContext() != null) {
                    Context context = this.f6939b.getContext();
                    WebViewT webviewt = this.f6939b;
                    return m4633b.m4905e(context, str, (View) webviewt, webviewt.m6755h());
                } else {
                    str2 = "Context is null, ignoring.";
                }
            }
        }
        y0.k(str2);
        return "";
    }

    @JavascriptInterface
    public void notify(String str) {
        if (TextUtils.isEmpty(str)) {
            C1894po.m6180f("URL is empty, ignoring message");
        } else {
            C1433l1.f5594i.post(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.hu

                /* renamed from: b */
                private final C1809ju f6780b;

                /* renamed from: c */
                private final String f6781c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f6780b = this;
                    this.f6781c = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f6780b.m6914a(this.f6781c);
                }
            });
        }
    }
}
