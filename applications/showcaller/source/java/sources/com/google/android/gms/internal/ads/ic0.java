package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.common.C6086c;
import com.google.android.gms.common.p272k.C6198c;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ic0.class */
public final class ic0 implements kc0 {

    /* renamed from: a */
    private static final Object f24192a = new Object();

    /* renamed from: b */
    static kc0 f24193b;

    /* renamed from: c */
    static kc0 f24194c;

    /* renamed from: e */
    private final Context f24196e;

    /* renamed from: h */
    private final zzcgz f24199h;

    /* renamed from: d */
    private final Object f24195d = new Object();

    /* renamed from: f */
    private final WeakHashMap<Thread, Boolean> f24197f = new WeakHashMap<>();

    /* renamed from: g */
    private final ExecutorService f24198g = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool());

    protected ic0(Context context, zzcgz zzcgzVar) {
        yt2.m8686a();
        this.f24196e = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f24199h = zzcgzVar;
    }

    /* renamed from: c */
    public static kc0 m14453c(Context context) {
        synchronized (f24192a) {
            if (f24193b == null) {
                if (C6532gy.f23736e.m12799e().booleanValue()) {
                    if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25852z5)).booleanValue()) {
                        f24193b = new ic0(context, zzcgz.m8066k0());
                    }
                }
                f24193b = new jc0();
            }
        }
        return f24193b;
    }

    /* renamed from: d */
    public static kc0 m14452d(Context context, zzcgz zzcgzVar) {
        synchronized (f24192a) {
            if (f24194c == null) {
                if (C6532gy.f23736e.m12799e().booleanValue()) {
                    if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25852z5)).booleanValue()) {
                        ic0 ic0Var = new ic0(context, zzcgzVar);
                        Thread thread = Looper.getMainLooper().getThread();
                        if (thread != null) {
                            synchronized (ic0Var.f24195d) {
                                ic0Var.f24197f.put(thread, Boolean.TRUE);
                            }
                            thread.setUncaughtExceptionHandler(new hc0(ic0Var, thread.getUncaughtExceptionHandler()));
                        }
                        Thread.setDefaultUncaughtExceptionHandler(new gc0(ic0Var, Thread.getDefaultUncaughtExceptionHandler()));
                        f24194c = ic0Var;
                    }
                }
                f24194c = new jc0();
            }
        }
        return f24194c;
    }

    @Override // com.google.android.gms.internal.ads.kc0
    /* renamed from: a */
    public final void mo13922a(Throwable th, String str, float f) {
        boolean z;
        String str2;
        if (xh0.m9171g(th) == null) {
            return;
        }
        String name = th.getClass().getName();
        StringWriter stringWriter = new StringWriter();
        qc3.m11956c(th, new PrintWriter(stringWriter));
        String stringWriter2 = stringWriter.toString();
        double d = f;
        double random = Math.random();
        int i = f > 0.0f ? (int) (1.0f / f) : 1;
        if (random >= d) {
            return;
        }
        ArrayList<String> arrayList = new ArrayList();
        try {
            z = C6198c.m16885a(this.f24196e).m16887g();
        } catch (Throwable th2) {
            ei0.m15466d("Error fetching instant app info", th2);
            z = false;
        }
        try {
            str2 = this.f24196e.getPackageName();
        } catch (Throwable th3) {
            ei0.m15464f("Cannot obtain package name, proceeding.");
            str2 = "unknown";
        }
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("is_aia", Boolean.toString(z)).appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter("os", Build.VERSION.RELEASE).appendQueryParameter("api", String.valueOf(Build.VERSION.SDK_INT));
        String str3 = Build.MANUFACTURER;
        String str4 = Build.MODEL;
        if (!str4.startsWith(str3)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 1 + str4.length());
            sb.append(str3);
            sb.append(" ");
            sb.append(str4);
            str4 = sb.toString();
        }
        arrayList.add(appendQueryParameter.appendQueryParameter("device", str4).appendQueryParameter("js", this.f24199h.f33854d).appendQueryParameter("appid", str2).appendQueryParameter("exceptiontype", name).appendQueryParameter("stacktrace", stringWriter2).appendQueryParameter("eids", TextUtils.join(",", C6679kw.m13768c())).appendQueryParameter("exceptionkey", str).appendQueryParameter("cl", "407425155").appendQueryParameter("rc", "dev").appendQueryParameter("sampling_rate", Integer.toString(i)).appendQueryParameter("pb_tm", String.valueOf(C6532gy.f23734c.m12799e())).appendQueryParameter("gmscv", String.valueOf(C6086c.m17221f().m17226a(this.f24196e))).appendQueryParameter("lite", true != this.f24199h.f33858h ? "0" : "1").toString());
        for (String str5 : arrayList) {
            this.f24198g.execute(new Runnable(new ii0(null), str5) { // from class: com.google.android.gms.internal.ads.fc0

                /* renamed from: d */
                private final ii0 f22784d;

                /* renamed from: e */
                private final String f22785e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f22784d = ii0Var;
                    this.f22785e = str5;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f22784d.mo9583n(this.f22785e);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.kc0
    /* renamed from: b */
    public final void mo13921b(Throwable th, String str) {
        mo13922a(th, str, 1.0f);
    }

    /* renamed from: e */
    public final void m14451e(Thread thread, Throwable th) {
        StackTraceElement[] stackTrace;
        if (th != null) {
            boolean z = false;
            boolean z2 = false;
            for (Throwable th2 = th; th2 != null; th2 = th2.getCause()) {
                for (StackTraceElement stackTraceElement : th2.getStackTrace()) {
                    z |= xh0.m9170h(stackTraceElement.getClassName());
                    z2 |= ic0.class.getName().equals(stackTraceElement.getClassName());
                }
            }
            if (!z || z2) {
                return;
            }
            mo13922a(th, "", 1.0f);
        }
    }
}
