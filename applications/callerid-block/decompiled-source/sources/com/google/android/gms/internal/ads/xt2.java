package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.common.util.C1617n;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
@TargetApi(14)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xt2.class */
public final class xt2 extends Thread {

    /* renamed from: e */
    private final nt2 f9169e;

    /* renamed from: b */
    private boolean f9166b = false;

    /* renamed from: c */
    private boolean f9167c = false;

    /* renamed from: d */
    private final Object f9168d = new Object();

    /* renamed from: g */
    private final int f9171g = C1970u4.f8773d.m6222e().intValue();

    /* renamed from: h */
    private final int f9172h = C1970u4.f8770a.m6222e().intValue();

    /* renamed from: i */
    private final int f9173i = C1970u4.f8774e.m6222e().intValue();

    /* renamed from: j */
    private final int f9174j = C1970u4.f8772c.m6222e().intValue();

    /* renamed from: k */
    private final int f9175k = ((Integer) C1674c.m7906c().m6878b(C1842m3.f7274K)).intValue();

    /* renamed from: l */
    private final int f9176l = ((Integer) C1674c.m7906c().m6878b(C1842m3.f7280L)).intValue();

    /* renamed from: m */
    private final int f9177m = ((Integer) C1674c.m7906c().m6878b(C1842m3.f7286M)).intValue();

    /* renamed from: f */
    private final int f9170f = C1970u4.f8775f.m6222e().intValue();

    /* renamed from: n */
    private final String f9178n = (String) C1674c.m7906c().m6878b(C1842m3.f7298O);

    /* renamed from: o */
    private final boolean f9179o = ((Boolean) C1674c.m7906c().m6878b(C1842m3.f7304P)).booleanValue();

    /* renamed from: p */
    private final boolean f9180p = ((Boolean) C1674c.m7906c().m6878b(C1842m3.f7310Q)).booleanValue();

    /* renamed from: q */
    private final boolean f9181q = ((Boolean) C1674c.m7906c().m6878b(C1842m3.f7316R)).booleanValue();

    public xt2() {
        nt2 nt2Var = new nt2();
        this.f9169e = nt2Var;
        setName("ContentFetchTask");
    }

    /* renamed from: a */
    public final void m4843a() {
        synchronized (this.f9168d) {
            if (this.f9166b) {
                C1894po.m6185a("Content hash thread already started, quiting...");
                return;
            }
            this.f9166b = true;
            start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m4842b(View view) {
        try {
            mt2 mt2Var = new mt2(this.f9171g, this.f9172h, this.f9173i, this.f9174j, this.f9175k, this.f9176l, this.f9177m, this.f9180p);
            Context e = C1407r.m8917g().m5584e();
            if (e != null && !TextUtils.isEmpty(this.f9178n)) {
                String str = (String) view.getTag(e.getResources().getIdentifier((String) C1674c.m7906c().m6878b(C1842m3.f7292N), "id", e.getPackageName()));
                if (str != null && str.equals(this.f9178n)) {
                    return;
                }
            }
            wt2 c = m4841c(view, mt2Var);
            mt2Var.m6484k();
            if (c.f9068a == 0 && c.f9069b == 0) {
                return;
            }
            if (c.f9069b == 0 && mt2Var.m6480o() == 0) {
                return;
            }
            if (c.f9069b == 0 && this.f9169e.m6387b(mt2Var)) {
                return;
            }
            this.f9169e.m6385d(mt2Var);
        } catch (Exception e2) {
            C1894po.m6182d("Exception in fetchContentOnUIThread", e2);
            C1407r.m8916h().m4590g(e2, "ContentFetchTask.fetchContent");
        }
    }

    /* renamed from: c */
    final wt2 m4841c(View view, mt2 mt2Var) {
        if (view == null) {
            return new wt2(this, 0, 0);
        }
        boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
        if ((view instanceof TextView) && !(view instanceof EditText)) {
            CharSequence text = ((TextView) view).getText();
            if (TextUtils.isEmpty(text)) {
                return new wt2(this, 0, 0);
            }
            mt2Var.m6486i(text.toString(), globalVisibleRect, view.getX(), view.getY(), view.getWidth(), view.getHeight());
            return new wt2(this, 1, 0);
        } else if ((view instanceof WebView) && !(view instanceof jt)) {
            WebView webView = (WebView) view;
            if (!C1617n.m8212f()) {
                return new wt2(this, 0, 0);
            }
            mt2Var.m6488g();
            webView.post(new vt2(this, mt2Var, webView, globalVisibleRect));
            return new wt2(this, 0, 1);
        } else if (!(view instanceof ViewGroup)) {
            return new wt2(this, 0, 0);
        } else {
            ViewGroup viewGroup = (ViewGroup) view;
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                wt2 c = m4841c(viewGroup.getChildAt(i3), mt2Var);
                i += c.f9068a;
                i2 += c.f9069b;
            }
            return new wt2(this, i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final void m4840d(mt2 mt2Var, WebView webView, String str, boolean z) {
        mt2Var.m6489f();
        try {
            if (!TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString("text");
                if (this.f9179o || TextUtils.isEmpty(webView.getTitle())) {
                    mt2Var.m6487h(optString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                } else {
                    String title = webView.getTitle();
                    StringBuilder sb = new StringBuilder(String.valueOf(title).length() + 1 + String.valueOf(optString).length());
                    sb.append(title);
                    sb.append("\n");
                    sb.append(optString);
                    mt2Var.m6487h(sb.toString(), z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                }
            }
            if (mt2Var.m6494a()) {
                this.f9169e.m6386c(mt2Var);
            }
        } catch (JSONException e) {
            C1894po.m6185a("Json string may be malformed.");
        } catch (Throwable th) {
            C1894po.m6184b("Failed to get webview content.", th);
            C1407r.m8916h().m4590g(th, "ContentFetchTask.processWebViewContent");
        }
    }

    /* renamed from: e */
    public final mt2 m4839e() {
        return this.f9169e.m6388a(this.f9181q);
    }

    /* renamed from: f */
    public final void m4838f() {
        synchronized (this.f9168d) {
            this.f9167c = false;
            this.f9168d.notifyAll();
            C1894po.m6185a("ContentFetchThread: wakeup");
        }
    }

    /* renamed from: g */
    public final void m4837g() {
        synchronized (this.f9168d) {
            this.f9167c = true;
            StringBuilder sb = new StringBuilder(42);
            sb.append("ContentFetchThread: paused, mPause = ");
            sb.append(true);
            C1894po.m6185a(sb.toString());
        }
    }

    /* renamed from: h */
    public final boolean m4836h() {
        return this.f9167c;
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x0137 A[EXC_TOP_SPLITTER, LOOP:2: B:67:0x0137->B:76:0x0137, LOOP_START, SYNTHETIC] */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.xt2.run():void");
    }
}
