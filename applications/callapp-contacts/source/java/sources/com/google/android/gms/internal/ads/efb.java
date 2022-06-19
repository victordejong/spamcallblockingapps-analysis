package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.C12110n;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efb.class */
public final class efb extends Thread {

    /* renamed from: a */
    public boolean f48929a;

    /* renamed from: b */
    boolean f48930b;

    /* renamed from: c */
    public final Object f48931c;

    /* renamed from: d */
    final eey f48932d;

    /* renamed from: e */
    final int f48933e;

    /* renamed from: f */
    final int f48934f;

    /* renamed from: g */
    final int f48935g;

    /* renamed from: h */
    final int f48936h;

    /* renamed from: i */
    final int f48937i;

    /* renamed from: j */
    final int f48938j;

    /* renamed from: k */
    final int f48939k;

    /* renamed from: l */
    final String f48940l;

    /* renamed from: m */
    final boolean f48941m;

    /* renamed from: n */
    final boolean f48942n;

    /* renamed from: o */
    final boolean f48943o;

    /* renamed from: p */
    private boolean f48944p;

    /* renamed from: q */
    private final int f48945q;

    public efb() {
        this(new eey());
    }

    private efb(eey eeyVar) {
        this.f48929a = false;
        this.f48930b = false;
        this.f48944p = false;
        this.f48932d = eeyVar;
        this.f48931c = new Object();
        this.f48933e = C12274cj.f45890d.mo17481a().intValue();
        this.f48934f = C12274cj.f45887a.mo17481a().intValue();
        this.f48935g = C12274cj.f45891e.mo17481a().intValue();
        this.f48936h = C12274cj.f45889c.mo17481a().intValue();
        this.f48937i = ((Integer) ekb.m14831e().m18571a(C12187aq.f42622L)).intValue();
        this.f48938j = ((Integer) ekb.m14831e().m18571a(C12187aq.f42623M)).intValue();
        this.f48939k = ((Integer) ekb.m14831e().m18571a(C12187aq.f42624N)).intValue();
        this.f48945q = C12274cj.f45892f.mo17481a().intValue();
        this.f48940l = (String) ekb.m14831e().m18571a(C12187aq.f42626P);
        this.f48941m = ((Boolean) ekb.m14831e().m18571a(C12187aq.f42627Q)).booleanValue();
        this.f48942n = ((Boolean) ekb.m14831e().m18571a(C12187aq.f42628R)).booleanValue();
        this.f48943o = ((Boolean) ekb.m14831e().m18571a(C12187aq.f42629S)).booleanValue();
        setName("ContentFetchTask");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0069, code lost:
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0072, code lost:
        if (r0.importance != 100) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0076, code lost:
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007c, code lost:
        if (r0.inKeyguardRestrictedInputMode() != false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x007f, code lost:
        r0 = (android.os.PowerManager) r0.getSystemService("power");
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x008a, code lost:
        if (r0 != null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x008d, code lost:
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0093, code lost:
        r10 = r0.isScreenOn();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x009a, code lost:
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x009e, code lost:
        if (r10 == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a1, code lost:
        r8 = true;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m15098a() {
        /*
            r0 = 0
            r4 = r0
            com.google.android.gms.internal.ads.eex r0 = com.google.android.gms.ads.internal.zzr.zzky()     // Catch: java.lang.Throwable -> La7
            android.content.Context r0 = r0.m15112b()     // Catch: java.lang.Throwable -> La7
            r5 = r0
            r0 = r5
            if (r0 != 0) goto Lf
            r0 = 0
            return r0
        Lf:
            r0 = r5
            java.lang.String r1 = "activity"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: java.lang.Throwable -> La7
            android.app.ActivityManager r0 = (android.app.ActivityManager) r0     // Catch: java.lang.Throwable -> La7
            r6 = r0
            r0 = r5
            java.lang.String r1 = "keyguard"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: java.lang.Throwable -> La7
            android.app.KeyguardManager r0 = (android.app.KeyguardManager) r0     // Catch: java.lang.Throwable -> La7
            r7 = r0
            r0 = r4
            r8 = r0
            r0 = r6
            if (r0 == 0) goto La4
            r0 = r7
            if (r0 != 0) goto L34
            r0 = r4
            r8 = r0
            goto La4
        L34:
            r0 = r6
            java.util.List r0 = r0.getRunningAppProcesses()     // Catch: java.lang.Throwable -> La7
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L3f
            r0 = 0
            return r0
        L3f:
            r0 = r6
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> La7
            r6 = r0
        L46:
            r0 = r4
            r8 = r0
            r0 = r6
            boolean r0 = r0.hasNext()     // Catch: java.lang.Throwable -> La7
            if (r0 == 0) goto La4
            r0 = r6
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> La7
            android.app.ActivityManager$RunningAppProcessInfo r0 = (android.app.ActivityManager.RunningAppProcessInfo) r0     // Catch: java.lang.Throwable -> La7
            r9 = r0
            int r0 = android.os.Process.myPid()     // Catch: java.lang.Throwable -> La7
            r1 = r9
            int r1 = r1.pid     // Catch: java.lang.Throwable -> La7
            if (r0 != r1) goto L46
            r0 = r4
            r8 = r0
            r0 = r9
            int r0 = r0.importance     // Catch: java.lang.Throwable -> La7
            r1 = 100
            if (r0 != r1) goto La4
            r0 = r4
            r8 = r0
            r0 = r7
            boolean r0 = r0.inKeyguardRestrictedInputMode()     // Catch: java.lang.Throwable -> La7
            if (r0 != 0) goto La4
            r0 = r5
            java.lang.String r1 = "power"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: java.lang.Throwable -> La7
            android.os.PowerManager r0 = (android.os.PowerManager) r0     // Catch: java.lang.Throwable -> La7
            r7 = r0
            r0 = r7
            if (r0 != 0) goto L93
            r0 = 0
            r10 = r0
            goto L99
        L93:
            r0 = r7
            boolean r0 = r0.isScreenOn()     // Catch: java.lang.Throwable -> La7
            r10 = r0
        L99:
            r0 = r4
            r8 = r0
            r0 = r10
            if (r0 == 0) goto La4
            r0 = 1
            r8 = r0
        La4:
            r0 = r8
            return r0
        La7:
            r7 = move-exception
            com.google.android.gms.internal.ads.yd r0 = com.google.android.gms.ads.internal.zzr.zzkz()
            r1 = r7
            java.lang.String r2 = "ContentFetchTask.isInForeground"
            r0.m13979a(r1, r2)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.efb.m15098a():boolean");
    }

    /* renamed from: b */
    private final void m15096b() {
        synchronized (this.f48931c) {
            this.f48930b = true;
            StringBuilder sb = new StringBuilder(42);
            sb.append("ContentFetchThread: paused, mPause = ");
            sb.append(true);
            zzd.zzdz(sb.toString());
        }
    }

    /* renamed from: a */
    public final eff m15097a(View view, eev eevVar) {
        boolean z;
        if (view == null) {
            return new eff(this, 0, 0);
        }
        boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
        if ((view instanceof TextView) && !(view instanceof EditText)) {
            CharSequence text = ((TextView) view).getText();
            if (TextUtils.isEmpty(text)) {
                return new eff(this, 0, 0);
            }
            eevVar.m15115b(text.toString(), globalVisibleRect, view.getX(), view.getY(), view.getWidth(), view.getHeight());
            return new eff(this, 1, 0);
        } else if ((view instanceof WebView) && !(view instanceof adt)) {
            WebView webView = (WebView) view;
            if (!C12110n.m19017e()) {
                z = false;
            } else {
                synchronized (eevVar.f48894a) {
                    eevVar.f48897d++;
                }
                webView.post(new efd(this, eevVar, webView, globalVisibleRect));
                z = true;
            }
            return z ? new eff(this, 0, 1) : new eff(this, 0, 0);
        } else if (!(view instanceof ViewGroup)) {
            return new eff(this, 0, 0);
        } else {
            ViewGroup viewGroup = (ViewGroup) view;
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                eff m15097a = m15097a(viewGroup.getChildAt(i3), eevVar);
                i += m15097a.f48953a;
                i2 += m15097a.f48954b;
            }
            return new eff(this, i, i2);
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        while (true) {
            try {
                if (m15098a()) {
                    Activity m15114a = zzr.zzky().m15114a();
                    if (m15114a == null) {
                        zzd.zzdz("ContentFetchThread: no activity. Sleeping.");
                        m15096b();
                    } else if (m15114a != null) {
                        View view = null;
                        try {
                            if (m15114a.getWindow() != null) {
                                view = null;
                                if (m15114a.getWindow().getDecorView() != null) {
                                    view = m15114a.getWindow().getDecorView().findViewById(16908290);
                                }
                            }
                        } catch (Exception e) {
                            zzr.zzkz().m13979a(e, "ContentFetchTask.extractContent");
                            zzd.zzdz("Failed getting root view of activity. Content not extracted.");
                            view = null;
                        }
                        if (view != null && view != null) {
                            view.post(new efe(this, view));
                        }
                    }
                } else {
                    zzd.zzdz("ContentFetchTask: sleeping");
                    m15096b();
                }
                Thread.sleep(this.f48945q * 1000);
            } catch (InterruptedException e2) {
                zzd.zzc("Error in ContentFetchTask", e2);
            } catch (Exception e3) {
                zzd.zzc("Error in ContentFetchTask", e3);
                zzr.zzkz().m13979a(e3, "ContentFetchTask.run");
            }
            synchronized (this.f48931c) {
                while (this.f48930b) {
                    try {
                        zzd.zzdz("ContentFetchTask: waiting");
                        this.f48931c.wait();
                    } catch (InterruptedException e4) {
                    }
                }
            }
        }
    }
}
