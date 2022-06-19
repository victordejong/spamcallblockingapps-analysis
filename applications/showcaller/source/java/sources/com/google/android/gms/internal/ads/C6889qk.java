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
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.common.util.C6237o;
import org.json.JSONException;
import org.json.JSONObject;
@TargetApi(14)
/* renamed from: com.google.android.gms.internal.ads.qk */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qk.class */
public final class C6889qk extends Thread {

    /* renamed from: g */
    private final C6518gk f28525g;

    /* renamed from: d */
    private boolean f28522d = false;

    /* renamed from: e */
    private boolean f28523e = false;

    /* renamed from: f */
    private final Object f28524f = new Object();

    /* renamed from: i */
    private final int f28527i = C6976sx.f29725d.m12799e().intValue();

    /* renamed from: j */
    private final int f28528j = C6976sx.f29722a.m12799e().intValue();

    /* renamed from: k */
    private final int f28529k = C6976sx.f29726e.m12799e().intValue();

    /* renamed from: l */
    private final int f28530l = C6976sx.f29724c.m12799e().intValue();

    /* renamed from: m */
    private final int f28531m = ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25539N)).intValue();

    /* renamed from: n */
    private final int f28532n = ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25547O)).intValue();

    /* renamed from: o */
    private final int f28533o = ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25555P)).intValue();

    /* renamed from: h */
    private final int f28526h = C6976sx.f29727f.m12799e().intValue();

    /* renamed from: p */
    private final String f28534p = (String) C7192yr.m8714c().m14263c(C6679kw.f25571R);

    /* renamed from: q */
    private final boolean f28535q = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25579S)).booleanValue();

    /* renamed from: r */
    private final boolean f28536r = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25587T)).booleanValue();

    /* renamed from: s */
    private final boolean f28537s = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25595U)).booleanValue();

    public C6889qk() {
        C6518gk c6518gk = new C6518gk();
        this.f28525g = c6518gk;
        setName("ContentFetchTask");
    }

    /* renamed from: a */
    public final void m11867a() {
        synchronized (this.f28524f) {
            if (this.f28522d) {
                ei0.m15469a("Content hash thread already started, quiting...");
                return;
            }
            this.f28522d = true;
            start();
        }
    }

    /* renamed from: b */
    public final void m11866b(View view) {
        try {
            C6481fk c6481fk = new C6481fk(this.f28527i, this.f28528j, this.f28529k, this.f28530l, this.f28531m, this.f28532n, this.f28533o, this.f28536r);
            Context m13873e = C5667s.m18157g().m13873e();
            if (m13873e != null && !TextUtils.isEmpty(this.f28534p)) {
                String str = (String) view.getTag(m13873e.getResources().getIdentifier((String) C7192yr.m8714c().m14263c(C6679kw.f25563Q), "id", m13873e.getPackageName()));
                if (str != null && str.equals(this.f28534p)) {
                    return;
                }
            }
            C6852pk m11865c = m11865c(view, c6481fk);
            c6481fk.m15167k();
            if (m11865c.f28032a == 0 && m11865c.f28033b == 0) {
                return;
            }
            if (m11865c.f28033b == 0 && c6481fk.m15163o() == 0) {
                return;
            }
            if (m11865c.f28033b == 0 && this.f28525g.m14923b(c6481fk)) {
                return;
            }
            this.f28525g.m14921d(c6481fk);
        } catch (Exception e) {
            ei0.m15466d("Exception in fetchContentOnUIThread", e);
            C5667s.m18156h().m12235k(e, "ContentFetchTask.fetchContent");
        }
    }

    /* renamed from: c */
    final C6852pk m11865c(View view, C6481fk c6481fk) {
        if (view == null) {
            return new C6852pk(this, 0, 0);
        }
        boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
        if ((view instanceof TextView) && !(view instanceof EditText)) {
            CharSequence text = ((TextView) view).getText();
            if (TextUtils.isEmpty(text)) {
                return new C6852pk(this, 0, 0);
            }
            c6481fk.m15169i(text.toString(), globalVisibleRect, view.getX(), view.getY(), view.getWidth(), view.getHeight());
            return new C6852pk(this, 1, 0);
        } else if ((view instanceof WebView) && !(view instanceof wn0)) {
            WebView webView = (WebView) view;
            if (!C6237o.m16778f()) {
                return new C6852pk(this, 0, 0);
            }
            c6481fk.m15171g();
            webView.post(new RunnableC6815ok(this, c6481fk, webView, globalVisibleRect));
            return new C6852pk(this, 0, 1);
        } else if (!(view instanceof ViewGroup)) {
            return new C6852pk(this, 0, 0);
        } else {
            ViewGroup viewGroup = (ViewGroup) view;
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                C6852pk m11865c = m11865c(viewGroup.getChildAt(i3), c6481fk);
                i += m11865c.f28032a;
                i2 += m11865c.f28033b;
            }
            return new C6852pk(this, i, i2);
        }
    }

    /* renamed from: d */
    public final void m11864d(C6481fk c6481fk, WebView webView, String str, boolean z) {
        c6481fk.m15172f();
        try {
            if (!TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString("text");
                if (this.f28535q || TextUtils.isEmpty(webView.getTitle())) {
                    c6481fk.m15170h(optString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                } else {
                    String title = webView.getTitle();
                    StringBuilder sb = new StringBuilder(String.valueOf(title).length() + 1 + String.valueOf(optString).length());
                    sb.append(title);
                    sb.append("\n");
                    sb.append(optString);
                    c6481fk.m15170h(sb.toString(), z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                }
            }
            if (!c6481fk.m15177a()) {
                return;
            }
            this.f28525g.m14922c(c6481fk);
        } catch (JSONException e) {
            ei0.m15469a("Json string may be malformed.");
        } catch (Throwable th) {
            ei0.m15468b("Failed to get webview content.", th);
            C5667s.m18156h().m12235k(th, "ContentFetchTask.processWebViewContent");
        }
    }

    /* renamed from: e */
    public final C6481fk m11863e() {
        return this.f28525g.m14924a(this.f28537s);
    }

    /* renamed from: f */
    public final void m11862f() {
        synchronized (this.f28524f) {
            this.f28523e = false;
            this.f28524f.notifyAll();
            ei0.m15469a("ContentFetchThread: wakeup");
        }
    }

    /* renamed from: g */
    public final void m11861g() {
        synchronized (this.f28524f) {
            this.f28523e = true;
            StringBuilder sb = new StringBuilder(42);
            sb.append("ContentFetchThread: paused, mPause = ");
            sb.append(true);
            ei0.m15469a(sb.toString());
        }
    }

    /* renamed from: h */
    public final boolean m11860h() {
        return this.f28523e;
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x0138 A[EXC_TOP_SPLITTER, LOOP:2: B:63:0x0138->B:74:0x0138, LOOP_START, SYNTHETIC] */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C6889qk.run():void");
    }
}
