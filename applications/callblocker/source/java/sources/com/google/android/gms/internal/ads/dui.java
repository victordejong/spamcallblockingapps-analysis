package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.common.util.C2716m;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
@TargetApi(14)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dui.class */
public final class dui extends Thread {

    /* renamed from: a */
    private boolean f15790a;

    /* renamed from: b */
    private boolean f15791b;

    /* renamed from: c */
    private boolean f15792c;

    /* renamed from: d */
    private final Object f15793d;

    /* renamed from: e */
    private final duf f15794e;

    /* renamed from: f */
    private final int f15795f;

    /* renamed from: g */
    private final int f15796g;

    /* renamed from: h */
    private final int f15797h;

    /* renamed from: i */
    private final int f15798i;

    /* renamed from: j */
    private final int f15799j;

    /* renamed from: k */
    private final int f15800k;

    /* renamed from: l */
    private final int f15801l;

    /* renamed from: m */
    private final int f15802m;

    /* renamed from: n */
    private final String f15803n;

    /* renamed from: o */
    private final boolean f15804o;

    /* renamed from: p */
    private final boolean f15805p;

    /* renamed from: q */
    private final boolean f15806q;

    public dui() {
        this(new duf());
    }

    private dui(duf dufVar) {
        this.f15790a = false;
        this.f15791b = false;
        this.f15792c = false;
        this.f15794e = dufVar;
        this.f15793d = new Object();
        this.f15796g = C2773ak.f9860d.mo13599a().intValue();
        this.f15797h = C2773ak.f9857a.mo13599a().intValue();
        this.f15798i = C2773ak.f9861e.mo13599a().intValue();
        this.f15799j = C2773ak.f9859c.mo13599a().intValue();
        this.f15800k = ((Integer) dyx.m8158e().m7876a(edi.f16323I)).intValue();
        this.f15801l = ((Integer) dyx.m8158e().m7876a(edi.f16324J)).intValue();
        this.f15802m = ((Integer) dyx.m8158e().m7876a(edi.f16325K)).intValue();
        this.f15795f = C2773ak.f9862f.mo13599a().intValue();
        this.f15803n = (String) dyx.m8158e().m7876a(edi.f16327M);
        this.f15804o = ((Boolean) dyx.m8158e().m7876a(edi.f16328N)).booleanValue();
        this.f15805p = ((Boolean) dyx.m8158e().m7876a(edi.f16329O)).booleanValue();
        this.f15806q = ((Boolean) dyx.m8158e().m7876a(edi.f16330P)).booleanValue();
        setName("ContentFetchTask");
    }

    /* renamed from: a */
    private final dum m8545a(View view, duc ducVar) {
        dum dumVar;
        boolean z;
        if (view == null) {
            dumVar = new dum(this, 0, 0);
        } else {
            boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
            if ((view instanceof TextView) && !(view instanceof EditText)) {
                CharSequence text = ((TextView) view).getText();
                if (!TextUtils.isEmpty(text)) {
                    ducVar.m8579b(text.toString(), globalVisibleRect, view.getX(), view.getY(), view.getWidth(), view.getHeight());
                    dumVar = new dum(this, 1, 0);
                } else {
                    dumVar = new dum(this, 0, 0);
                }
            } else if ((view instanceof WebView) && !(view instanceof act)) {
                WebView webView = (WebView) view;
                if (!C2716m.m13837f()) {
                    z = false;
                } else {
                    ducVar.m8573g();
                    webView.post(new duk(this, ducVar, webView, globalVisibleRect));
                    z = true;
                }
                dumVar = z ? new dum(this, 0, 1) : new dum(this, 0, 0);
            } else if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int i = 0;
                int i2 = 0;
                int i3 = 0;
                while (i < viewGroup.getChildCount()) {
                    dum m8545a = m8545a(viewGroup.getChildAt(i), ducVar);
                    i3 += m8545a.f15814a;
                    i++;
                    i2 += m8545a.f15815b;
                }
                dumVar = new dum(this, i3, i2);
            } else {
                dumVar = new dum(this, 0, 0);
            }
        }
        return dumVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x006c, code lost:
        if (r0.importance != 100) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0073, code lost:
        if (r0.inKeyguardRestrictedInputMode() != false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0076, code lost:
        r0 = (android.os.PowerManager) r0.getSystemService("power");
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0082, code lost:
        if (r0 != null) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0085, code lost:
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0088, code lost:
        if (r5 == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008b, code lost:
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0090, code lost:
        r5 = r0.isScreenOn();
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m8540e() {
        /*
            com.google.android.gms.internal.ads.due r0 = com.google.android.gms.ads.internal.C2341q.m14741f()     // Catch: java.lang.Throwable -> L9d
            android.content.Context r0 = r0.m8564b()     // Catch: java.lang.Throwable -> L9d
            r4 = r0
            r0 = r4
            if (r0 != 0) goto Lf
            r0 = 0
            r5 = r0
        Ld:
            r0 = r5
            return r0
        Lf:
            r0 = r4
            java.lang.String r1 = "activity"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: java.lang.Throwable -> L9d
            android.app.ActivityManager r0 = (android.app.ActivityManager) r0     // Catch: java.lang.Throwable -> L9d
            r6 = r0
            r0 = r4
            java.lang.String r1 = "keyguard"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: java.lang.Throwable -> L9d
            android.app.KeyguardManager r0 = (android.app.KeyguardManager) r0     // Catch: java.lang.Throwable -> L9d
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L2c
            r0 = r7
            if (r0 != 0) goto L31
        L2c:
            r0 = 0
            r5 = r0
            goto Ld
        L31:
            r0 = r6
            java.util.List r0 = r0.getRunningAppProcesses()     // Catch: java.lang.Throwable -> L9d
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L3f
            r0 = 0
            r5 = r0
            goto Ld
        L3f:
            r0 = r6
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L9d
            r6 = r0
        L46:
            r0 = r6
            boolean r0 = r0.hasNext()     // Catch: java.lang.Throwable -> L9d
            if (r0 == 0) goto L98
            r0 = r6
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L9d
            android.app.ActivityManager$RunningAppProcessInfo r0 = (android.app.ActivityManager.RunningAppProcessInfo) r0     // Catch: java.lang.Throwable -> L9d
            r8 = r0
            int r0 = android.os.Process.myPid()     // Catch: java.lang.Throwable -> L9d
            r1 = r8
            int r1 = r1.pid     // Catch: java.lang.Throwable -> L9d
            if (r0 != r1) goto L46
            r0 = r8
            int r0 = r0.importance     // Catch: java.lang.Throwable -> L9d
            r1 = 100
            if (r0 != r1) goto L98
            r0 = r7
            boolean r0 = r0.inKeyguardRestrictedInputMode()     // Catch: java.lang.Throwable -> L9d
            if (r0 != 0) goto L98
            r0 = r4
            java.lang.String r1 = "power"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: java.lang.Throwable -> L9d
            android.os.PowerManager r0 = (android.os.PowerManager) r0     // Catch: java.lang.Throwable -> L9d
            r7 = r0
            r0 = r7
            if (r0 != 0) goto L90
            r0 = 0
            r5 = r0
        L87:
            r0 = r5
            if (r0 == 0) goto L98
            r0 = 1
            r5 = r0
            goto Ld
        L90:
            r0 = r7
            boolean r0 = r0.isScreenOn()     // Catch: java.lang.Throwable -> L9d
            r5 = r0
            goto L87
        L98:
            r0 = 0
            r5 = r0
            goto Ld
        L9d:
            r7 = move-exception
            com.google.android.gms.internal.ads.ug r0 = com.google.android.gms.ads.internal.C2341q.m14740g()
            r1 = r7
            java.lang.String r2 = "ContentFetchTask.isInForeground"
            r0.m7095a(r1, r2)
            r0 = 0
            r5 = r0
            goto Ld
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dui.m8540e():boolean");
    }

    /* renamed from: f */
    private final void m8539f() {
        synchronized (this.f15793d) {
            this.f15791b = true;
            C3556uu.m6751b(new StringBuilder(42).append("ContentFetchThread: paused, mPause = ").append(this.f15791b).toString());
        }
    }

    /* renamed from: a */
    public final void m8547a() {
        synchronized (this.f15793d) {
            if (this.f15790a) {
                C3556uu.m6751b("Content hash thread already started, quiting...");
                return;
            }
            this.f15790a = true;
            start();
        }
    }

    /* renamed from: a */
    public final void m8546a(View view) {
        try {
            duc ducVar = new duc(this.f15796g, this.f15797h, this.f15798i, this.f15799j, this.f15800k, this.f15801l, this.f15802m, this.f15805p);
            Context m8564b = C2341q.m14741f().m8564b();
            if (m8564b != null && !TextUtils.isEmpty(this.f15803n)) {
                String str = (String) view.getTag(m8564b.getResources().getIdentifier((String) dyx.m8158e().m7876a(edi.f16326L), "id", m8564b.getPackageName()));
                if (str != null && str.equals(this.f15803n)) {
                    return;
                }
            }
            dum m8545a = m8545a(view, ducVar);
            ducVar.m8571i();
            if (m8545a.f15814a == 0 && m8545a.f15815b == 0) {
                return;
            }
            if (m8545a.f15815b == 0 && ducVar.m8569k() == 0) {
                return;
            }
            if (m8545a.f15815b == 0 && this.f15794e.m8562a(ducVar)) {
                return;
            }
            this.f15794e.m8559c(ducVar);
        } catch (Exception e) {
            C3556uu.m6748c("Exception in fetchContentOnUIThread", e);
            C2341q.m14740g().m7095a(e, "ContentFetchTask.fetchContent");
        }
    }

    /* renamed from: a */
    public final void m8544a(duc ducVar, WebView webView, String str, boolean z) {
        ducVar.m8574f();
        try {
            if (!TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString("text");
                if (this.f15804o || TextUtils.isEmpty(webView.getTitle())) {
                    ducVar.m8582a(optString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                } else {
                    String title = webView.getTitle();
                    ducVar.m8582a(new StringBuilder(String.valueOf(title).length() + 1 + String.valueOf(optString).length()).append(title).append("\n").append(optString).toString(), z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                }
            }
            if (!ducVar.m8585a()) {
                return;
            }
            this.f15794e.m8560b(ducVar);
        } catch (JSONException e) {
            C3556uu.m6751b("Json string may be malformed.");
        } catch (Throwable th) {
            C3556uu.m6750b("Failed to get webview content.", th);
            C2341q.m14740g().m7095a(th, "ContentFetchTask.processWebViewContent");
        }
    }

    /* renamed from: b */
    public final duc m8543b() {
        return this.f15794e.m8561a(this.f15806q);
    }

    /* renamed from: c */
    public final void m8542c() {
        synchronized (this.f15793d) {
            this.f15791b = false;
            this.f15793d.notifyAll();
            C3556uu.m6751b("ContentFetchThread: wakeup");
        }
    }

    /* renamed from: d */
    public final boolean m8541d() {
        return this.f15791b;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        while (true) {
            try {
                if (m8540e()) {
                    Activity m8567a = C2341q.m14741f().m8567a();
                    if (m8567a == null) {
                        C3556uu.m6751b("ContentFetchThread: no activity. Sleeping.");
                        m8539f();
                    } else if (m8567a != null) {
                        View view = null;
                        try {
                            if (m8567a.getWindow() != null) {
                                view = null;
                                if (m8567a.getWindow().getDecorView() != null) {
                                    view = m8567a.getWindow().getDecorView().findViewById(16908290);
                                }
                            }
                        } catch (Exception e) {
                            C2341q.m14740g().m7095a(e, "ContentFetchTask.extractContent");
                            C3556uu.m6751b("Failed getting root view of activity. Content not extracted.");
                            view = null;
                        }
                        if (view != null && view != null) {
                            view.post(new dul(this, view));
                        }
                    }
                } else {
                    C3556uu.m6751b("ContentFetchTask: sleeping");
                    m8539f();
                }
                Thread.sleep(this.f15795f * 1000);
            } catch (InterruptedException e2) {
                C3556uu.m6748c("Error in ContentFetchTask", e2);
            } catch (Exception e3) {
                C3556uu.m6748c("Error in ContentFetchTask", e3);
                C2341q.m14740g().m7095a(e3, "ContentFetchTask.run");
            }
            synchronized (this.f15793d) {
                while (this.f15791b) {
                    try {
                        C3556uu.m6751b("ContentFetchTask: waiting");
                        this.f15793d.wait();
                    } catch (InterruptedException e4) {
                    }
                }
            }
        }
    }
}
