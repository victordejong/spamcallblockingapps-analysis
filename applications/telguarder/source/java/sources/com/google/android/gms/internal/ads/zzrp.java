package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.PlatformVersion;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzrp.class */
public final class zzrp extends Thread {
    private final Object lock;
    private boolean started;
    private final int zzbsi;
    private final int zzbsk;
    private final boolean zzbsl;
    private boolean zzbti;
    private boolean zzbtj;
    private final zzri zzbtk;
    private final int zzbtl;
    private final int zzbtm;
    private final int zzbtn;
    private final int zzbto;
    private final int zzbtp;
    private final int zzbtq;
    private final String zzbtr;
    private final boolean zzbts;
    private final boolean zzbtt;

    public zzrp() {
        this(new zzri());
    }

    private zzrp(zzri zzriVar) {
        this.started = false;
        this.zzbti = false;
        this.zzbtj = false;
        this.zzbtk = zzriVar;
        this.lock = new Object();
        this.zzbsi = zzadc.zzdcv.get().intValue();
        this.zzbtm = zzadc.zzdcs.get().intValue();
        this.zzbsk = zzadc.zzdcw.get().intValue();
        this.zzbtn = zzadc.zzdcu.get().intValue();
        this.zzbto = ((Integer) zzwr.zzqr().zzd(zzabp.zzcnv)).intValue();
        this.zzbtp = ((Integer) zzwr.zzqr().zzd(zzabp.zzcnw)).intValue();
        this.zzbtq = ((Integer) zzwr.zzqr().zzd(zzabp.zzcnx)).intValue();
        this.zzbtl = zzadc.zzdcx.get().intValue();
        this.zzbtr = (String) zzwr.zzqr().zzd(zzabp.zzcnz);
        this.zzbts = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcoa)).booleanValue();
        this.zzbsl = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcob)).booleanValue();
        this.zzbtt = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcoc)).booleanValue();
        setName("ContentFetchTask");
    }

    private final zzrt zza(View view, zzrj zzrjVar) {
        boolean z;
        if (view == null) {
            return new zzrt(this, 0, 0);
        }
        boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
        if ((view instanceof TextView) && !(view instanceof EditText)) {
            CharSequence text = ((TextView) view).getText();
            if (TextUtils.isEmpty(text)) {
                return new zzrt(this, 0, 0);
            }
            zzrjVar.zzb(text.toString(), globalVisibleRect, view.getX(), view.getY(), view.getWidth(), view.getHeight());
            return new zzrt(this, 1, 0);
        } else if ((view instanceof WebView) && !(view instanceof zzbeb)) {
            WebView webView = (WebView) view;
            if (!PlatformVersion.isAtLeastKitKat()) {
                z = false;
            } else {
                zzrjVar.zzme();
                webView.post(new zzrr(this, zzrjVar, webView, globalVisibleRect));
                z = true;
            }
            return z ? new zzrt(this, 0, 1) : new zzrt(this, 0, 0);
        } else if (!(view instanceof ViewGroup)) {
            return new zzrt(this, 0, 0);
        } else {
            ViewGroup viewGroup = (ViewGroup) view;
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                zzrt zza = zza(viewGroup.getChildAt(i3), zzrjVar);
                i += zza.zzbua;
                i2 += zza.zzbub;
            }
            return new zzrt(this, i, i2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x006c, code lost:
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0074, code lost:
        if (r0.importance != 100) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0078, code lost:
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007e, code lost:
        if (r0.inKeyguardRestrictedInputMode() != false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0081, code lost:
        r0 = (android.os.PowerManager) r0.getSystemService("power");
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x008d, code lost:
        if (r0 != null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0090, code lost:
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0096, code lost:
        r10 = r0.isScreenOn();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x009d, code lost:
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a1, code lost:
        if (r10 == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a4, code lost:
        r8 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean zzmj() {
        /*
            r0 = 0
            r4 = r0
            com.google.android.gms.internal.ads.zzrl r0 = com.google.android.gms.ads.internal.zzr.zzku()     // Catch: java.lang.Throwable -> Laa
            android.content.Context r0 = r0.getContext()     // Catch: java.lang.Throwable -> Laa
            r5 = r0
            r0 = r5
            if (r0 != 0) goto Lf
            r0 = 0
            return r0
        Lf:
            r0 = r5
            java.lang.String r1 = "activity"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: java.lang.Throwable -> Laa
            android.app.ActivityManager r0 = (android.app.ActivityManager) r0     // Catch: java.lang.Throwable -> Laa
            r6 = r0
            r0 = r5
            java.lang.String r1 = "keyguard"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: java.lang.Throwable -> Laa
            android.app.KeyguardManager r0 = (android.app.KeyguardManager) r0     // Catch: java.lang.Throwable -> Laa
            r7 = r0
            r0 = r4
            r8 = r0
            r0 = r6
            if (r0 == 0) goto La7
            r0 = r7
            if (r0 != 0) goto L36
            r0 = r4
            r8 = r0
            goto La7
        L36:
            r0 = r6
            java.util.List r0 = r0.getRunningAppProcesses()     // Catch: java.lang.Throwable -> Laa
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L41
            r0 = 0
            return r0
        L41:
            r0 = r6
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> Laa
            r9 = r0
        L49:
            r0 = r4
            r8 = r0
            r0 = r9
            boolean r0 = r0.hasNext()     // Catch: java.lang.Throwable -> Laa
            if (r0 == 0) goto La7
            r0 = r9
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> Laa
            android.app.ActivityManager$RunningAppProcessInfo r0 = (android.app.ActivityManager.RunningAppProcessInfo) r0     // Catch: java.lang.Throwable -> Laa
            r6 = r0
            int r0 = android.os.Process.myPid()     // Catch: java.lang.Throwable -> Laa
            r1 = r6
            int r1 = r1.pid     // Catch: java.lang.Throwable -> Laa
            if (r0 != r1) goto L49
            r0 = r4
            r8 = r0
            r0 = r6
            int r0 = r0.importance     // Catch: java.lang.Throwable -> Laa
            r1 = 100
            if (r0 != r1) goto La7
            r0 = r4
            r8 = r0
            r0 = r7
            boolean r0 = r0.inKeyguardRestrictedInputMode()     // Catch: java.lang.Throwable -> Laa
            if (r0 != 0) goto La7
            r0 = r5
            java.lang.String r1 = "power"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: java.lang.Throwable -> Laa
            android.os.PowerManager r0 = (android.os.PowerManager) r0     // Catch: java.lang.Throwable -> Laa
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L96
            r0 = 0
            r10 = r0
            goto L9c
        L96:
            r0 = r5
            boolean r0 = r0.isScreenOn()     // Catch: java.lang.Throwable -> Laa
            r10 = r0
        L9c:
            r0 = r4
            r8 = r0
            r0 = r10
            if (r0 == 0) goto La7
            r0 = 1
            r8 = r0
        La7:
            r0 = r8
            return r0
        Laa:
            r5 = move-exception
            com.google.android.gms.internal.ads.zzayo r0 = com.google.android.gms.ads.internal.zzr.zzkv()
            r1 = r5
            java.lang.String r2 = "ContentFetchTask.isInForeground"
            r0.zza(r1, r2)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrp.zzmj():boolean");
    }

    private final void zzml() {
        synchronized (this.lock) {
            this.zzbti = true;
            StringBuilder sb = new StringBuilder(42);
            sb.append("ContentFetchThread: paused, mPause = ");
            sb.append(true);
            zzd.zzdy(sb.toString());
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        while (true) {
            try {
                if (zzmj()) {
                    Activity activity = zzr.zzku().getActivity();
                    if (activity == null) {
                        zzd.zzdy("ContentFetchThread: no activity. Sleeping.");
                        zzml();
                    } else if (activity != null) {
                        View view = null;
                        try {
                            if (activity.getWindow() != null) {
                                view = null;
                                if (activity.getWindow().getDecorView() != null) {
                                    view = activity.getWindow().getDecorView().findViewById(16908290);
                                }
                            }
                        } catch (Exception e) {
                            zzr.zzkv().zza(e, "ContentFetchTask.extractContent");
                            zzd.zzdy("Failed getting root view of activity. Content not extracted.");
                            view = null;
                        }
                        if (view != null && view != null) {
                            view.post(new zzro(this, view));
                        }
                    }
                } else {
                    zzd.zzdy("ContentFetchTask: sleeping");
                    zzml();
                }
                Thread.sleep(this.zzbtl * 1000);
            } catch (InterruptedException e2) {
                zzd.zzc("Error in ContentFetchTask", e2);
            } catch (Exception e3) {
                zzd.zzc("Error in ContentFetchTask", e3);
                zzr.zzkv().zza(e3, "ContentFetchTask.run");
            }
            synchronized (this.lock) {
                while (this.zzbti) {
                    try {
                        zzd.zzdy("ContentFetchTask: waiting");
                        this.lock.wait();
                    } catch (InterruptedException e4) {
                    }
                }
            }
        }
    }

    public final void wakeup() {
        synchronized (this.lock) {
            this.zzbti = false;
            this.lock.notifyAll();
            zzd.zzdy("ContentFetchThread: wakeup");
        }
    }

    public final void zza(zzrj zzrjVar, WebView webView, String str, boolean z) {
        zzrjVar.zzmd();
        try {
            if (!TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString("text");
                if (this.zzbts || TextUtils.isEmpty(webView.getTitle())) {
                    zzrjVar.zza(optString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                } else {
                    String title = webView.getTitle();
                    StringBuilder sb = new StringBuilder(String.valueOf(title).length() + 1 + String.valueOf(optString).length());
                    sb.append(title);
                    sb.append("\n");
                    sb.append(optString);
                    zzrjVar.zza(sb.toString(), z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                }
            }
            if (!zzrjVar.zzly()) {
                return;
            }
            this.zzbtk.zzb(zzrjVar);
        } catch (JSONException e) {
            zzd.zzdy("Json string may be malformed.");
        } catch (Throwable th) {
            zzd.zzb("Failed to get webview content.", th);
            zzr.zzkv().zza(th, "ContentFetchTask.processWebViewContent");
        }
    }

    public final void zzj(View view) {
        try {
            zzrj zzrjVar = new zzrj(this.zzbsi, this.zzbtm, this.zzbsk, this.zzbtn, this.zzbto, this.zzbtp, this.zzbtq, this.zzbsl);
            Context context = zzr.zzku().getContext();
            if (context != null && !TextUtils.isEmpty(this.zzbtr)) {
                String str = (String) view.getTag(context.getResources().getIdentifier((String) zzwr.zzqr().zzd(zzabp.zzcny), "id", context.getPackageName()));
                if (str != null && str.equals(this.zzbtr)) {
                    return;
                }
            }
            zzrt zza = zza(view, zzrjVar);
            zzrjVar.zzmg();
            if (zza.zzbua == 0 && zza.zzbub == 0) {
                return;
            }
            if (zza.zzbub == 0 && zzrjVar.zzmh() == 0) {
                return;
            }
            if (zza.zzbub == 0 && this.zzbtk.zza(zzrjVar)) {
                return;
            }
            this.zzbtk.zzc(zzrjVar);
        } catch (Exception e) {
            zzd.zzc("Exception in fetchContentOnUIThread", e);
            zzr.zzkv().zza(e, "ContentFetchTask.fetchContent");
        }
    }

    public final void zzmi() {
        synchronized (this.lock) {
            if (this.started) {
                zzd.zzdy("Content hash thread already started, quiting...");
                return;
            }
            this.started = true;
            start();
        }
    }

    public final zzrj zzmk() {
        return this.zzbtk.zzo(this.zzbtt);
    }

    public final boolean zzmm() {
        return this.zzbti;
    }
}
