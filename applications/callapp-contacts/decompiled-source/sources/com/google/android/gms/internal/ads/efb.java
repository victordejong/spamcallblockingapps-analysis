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
import com.google.android.gms.common.util.n;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efb.class */
public final class efb extends Thread {

    /* renamed from: a  reason: collision with root package name */
    public boolean f27763a;

    /* renamed from: b  reason: collision with root package name */
    boolean f27764b;

    /* renamed from: c  reason: collision with root package name */
    public final Object f27765c;

    /* renamed from: d  reason: collision with root package name */
    final eey f27766d;
    final int e;
    final int f;
    final int g;
    final int h;
    final int i;
    final int j;
    final int k;
    final String l;
    final boolean m;
    final boolean n;
    final boolean o;
    private boolean p;
    private final int q;

    public efb() {
        this(new eey());
    }

    private efb(eey eeyVar) {
        this.f27763a = false;
        this.f27764b = false;
        this.p = false;
        this.f27766d = eeyVar;
        this.f27765c = new Object();
        this.e = cj.f25925d.a().intValue();
        this.f = cj.f25922a.a().intValue();
        this.g = cj.e.a().intValue();
        this.h = cj.f25924c.a().intValue();
        this.i = ((Integer) ekb.e().a(aq.L)).intValue();
        this.j = ((Integer) ekb.e().a(aq.M)).intValue();
        this.k = ((Integer) ekb.e().a(aq.N)).intValue();
        this.q = cj.f.a().intValue();
        this.l = (String) ekb.e().a(aq.P);
        this.m = ((Boolean) ekb.e().a(aq.Q)).booleanValue();
        this.n = ((Boolean) ekb.e().a(aq.R)).booleanValue();
        this.o = ((Boolean) ekb.e().a(aq.S)).booleanValue();
        setName("ContentFetchTask");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0069, code lost:
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0072, code lost:
        if (r0.importance != 100) goto L_0x00a4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0076, code lost:
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007c, code lost:
        if (r0.inKeyguardRestrictedInputMode() != false) goto L_0x00a4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x007f, code lost:
        r0 = (android.os.PowerManager) r0.getSystemService("power");
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x008a, code lost:
        if (r0 != null) goto L_0x0093;
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
        if (r10 == false) goto L_0x00a4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a1, code lost:
        r8 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a() {
        /*
            r0 = 0
            r4 = r0
            com.google.android.gms.internal.ads.eex r0 = com.google.android.gms.ads.internal.zzr.zzky()     // Catch: all -> 0x00a7
            android.content.Context r0 = r0.b()     // Catch: all -> 0x00a7
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L_0x000f
            r0 = 0
            return r0
        L_0x000f:
            r0 = r5
            java.lang.String r1 = "activity"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: all -> 0x00a7
            android.app.ActivityManager r0 = (android.app.ActivityManager) r0     // Catch: all -> 0x00a7
            r6 = r0
            r0 = r5
            java.lang.String r1 = "keyguard"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: all -> 0x00a7
            android.app.KeyguardManager r0 = (android.app.KeyguardManager) r0     // Catch: all -> 0x00a7
            r7 = r0
            r0 = r4
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L_0x00a4
            r0 = r7
            if (r0 != 0) goto L_0x0034
            r0 = r4
            r8 = r0
            goto L_0x00a4
        L_0x0034:
            r0 = r6
            java.util.List r0 = r0.getRunningAppProcesses()     // Catch: all -> 0x00a7
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x003f
            r0 = 0
            return r0
        L_0x003f:
            r0 = r6
            java.util.Iterator r0 = r0.iterator()     // Catch: all -> 0x00a7
            r6 = r0
        L_0x0046:
            r0 = r4
            r8 = r0
            r0 = r6
            boolean r0 = r0.hasNext()     // Catch: all -> 0x00a7
            if (r0 == 0) goto L_0x00a4
            r0 = r6
            java.lang.Object r0 = r0.next()     // Catch: all -> 0x00a7
            android.app.ActivityManager$RunningAppProcessInfo r0 = (android.app.ActivityManager.RunningAppProcessInfo) r0     // Catch: all -> 0x00a7
            r9 = r0
            int r0 = android.os.Process.myPid()     // Catch: all -> 0x00a7
            r1 = r9
            int r1 = r1.pid     // Catch: all -> 0x00a7
            if (r0 != r1) goto L_0x0046
            r0 = r4
            r8 = r0
            r0 = r9
            int r0 = r0.importance     // Catch: all -> 0x00a7
            r1 = 100
            if (r0 != r1) goto L_0x00a4
            r0 = r4
            r8 = r0
            r0 = r7
            boolean r0 = r0.inKeyguardRestrictedInputMode()     // Catch: all -> 0x00a7
            if (r0 != 0) goto L_0x00a4
            r0 = r5
            java.lang.String r1 = "power"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: all -> 0x00a7
            android.os.PowerManager r0 = (android.os.PowerManager) r0     // Catch: all -> 0x00a7
            r7 = r0
            r0 = r7
            if (r0 != 0) goto L_0x0093
            r0 = 0
            r10 = r0
            goto L_0x0099
        L_0x0093:
            r0 = r7
            boolean r0 = r0.isScreenOn()     // Catch: all -> 0x00a7
            r10 = r0
        L_0x0099:
            r0 = r4
            r8 = r0
            r0 = r10
            if (r0 == 0) goto L_0x00a4
            r0 = 1
            r8 = r0
        L_0x00a4:
            r0 = r8
            return r0
        L_0x00a7:
            r7 = move-exception
            com.google.android.gms.internal.ads.yd r0 = com.google.android.gms.ads.internal.zzr.zzkz()
            r1 = r7
            java.lang.String r2 = "ContentFetchTask.isInForeground"
            r0.a(r1, r2)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.efb.a():boolean");
    }

    private final void b() {
        synchronized (this.f27765c) {
            this.f27764b = true;
            StringBuilder sb = new StringBuilder(42);
            sb.append("ContentFetchThread: paused, mPause = ");
            sb.append(true);
            zzd.zzdz(sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final eff a(View view, eev eevVar) {
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
            eevVar.b(text.toString(), globalVisibleRect, view.getX(), view.getY(), view.getWidth(), view.getHeight());
            return new eff(this, 1, 0);
        } else if ((view instanceof WebView) && !(view instanceof adt)) {
            WebView webView = (WebView) view;
            if (!n.e()) {
                z = false;
            } else {
                synchronized (eevVar.f27747a) {
                    eevVar.f27750d++;
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
                eff a2 = a(viewGroup.getChildAt(i3), eevVar);
                i += a2.f27773a;
                i2 += a2.f27774b;
            }
            return new eff(this, i, i2);
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        while (true) {
            try {
                if (a()) {
                    Activity a2 = zzr.zzky().a();
                    if (a2 == null) {
                        zzd.zzdz("ContentFetchThread: no activity. Sleeping.");
                        b();
                    } else if (a2 != null) {
                        View view = null;
                        try {
                            if (a2.getWindow() != null) {
                                view = null;
                                if (a2.getWindow().getDecorView() != null) {
                                    view = a2.getWindow().getDecorView().findViewById(16908290);
                                }
                            }
                        } catch (Exception e) {
                            zzr.zzkz().a(e, "ContentFetchTask.extractContent");
                            zzd.zzdz("Failed getting root view of activity. Content not extracted.");
                            view = null;
                        }
                        if (!(view == null || view == null)) {
                            view.post(new efe(this, view));
                        }
                    }
                } else {
                    zzd.zzdz("ContentFetchTask: sleeping");
                    b();
                }
                Thread.sleep(this.q * 1000);
            } catch (InterruptedException e2) {
                zzd.zzc("Error in ContentFetchTask", e2);
            } catch (Exception e3) {
                zzd.zzc("Error in ContentFetchTask", e3);
                zzr.zzkz().a(e3, "ContentFetchTask.run");
            }
            synchronized (this.f27765c) {
                while (this.f27764b) {
                    try {
                        zzd.zzdz("ContentFetchTask: waiting");
                        this.f27765c.wait();
                    } catch (InterruptedException e4) {
                    }
                }
            }
        }
    }
}
