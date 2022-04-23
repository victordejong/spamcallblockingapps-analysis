package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzbbu;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import p131c.p161d.p170b.p224d.p252g.p253a.C3939q3;
import p131c.p161d.p170b.p224d.p252g.p253a.C3979r3;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzasf.class */
public final class zzasf implements zzasj {

    /* renamed from: f */
    public static final Object f24318f = new Object();
    @VisibleForTesting

    /* renamed from: g */
    public static zzasj f24319g;
    @VisibleForTesting

    /* renamed from: h */
    public static zzasj f24320h;

    /* renamed from: a */
    public final Object f24321a;

    /* renamed from: b */
    public final Context f24322b;

    /* renamed from: c */
    public final WeakHashMap<Thread, Boolean> f24323c;

    /* renamed from: d */
    public final ExecutorService f24324d;

    /* renamed from: e */
    public final zzbbx f24325e;

    public zzasf(Context context) {
        this(context, zzbbx.m15844f());
    }

    public zzasf(Context context, zzbbx zzbbxVar) {
        this.f24321a = new Object();
        this.f24323c = new WeakHashMap<>();
        this.f24324d = zzdvg.m13110a().mo13119a(zzdvl.f27899b);
        this.f24322b = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f24325e = zzbbxVar;
    }

    /* renamed from: a */
    public static zzasj m16390a(Context context) {
        synchronized (f24318f) {
            if (f24319g == null) {
                if (zzadb.f24007e.mo16862a().booleanValue()) {
                    if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23732Q3)).booleanValue()) {
                        f24319g = new zzasf(context);
                    }
                }
                f24319g = new zzasi();
            }
        }
        return f24319g;
    }

    /* renamed from: a */
    public static zzasj m16389a(Context context, zzbbx zzbbxVar) {
        synchronized (f24318f) {
            if (f24320h == null) {
                if (zzadb.f24007e.mo16862a().booleanValue()) {
                    if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23732Q3)).booleanValue()) {
                        zzasf zzasfVar = new zzasf(context, zzbbxVar);
                        Thread thread = Looper.getMainLooper().getThread();
                        if (thread != null) {
                            synchronized (zzasfVar.f24321a) {
                                zzasfVar.f24323c.put(thread, true);
                            }
                            thread.setUncaughtExceptionHandler(new C3939q3(zzasfVar, thread.getUncaughtExceptionHandler()));
                        }
                        Thread.setDefaultUncaughtExceptionHandler(new C3979r3(zzasfVar, Thread.getDefaultUncaughtExceptionHandler()));
                        f24320h = zzasfVar;
                    }
                }
                f24320h = new zzasi();
            }
        }
        return f24320h;
    }

    @VisibleForTesting
    /* renamed from: a */
    public final Uri.Builder m16387a(String str, String str2, String str3, int i) {
        boolean z;
        String str4;
        try {
            z = Wrappers.m17026b(this.f24322b).m17036a();
        } catch (Throwable th) {
            zzbbq.m15855b("Error fetching instant app info", th);
            z = false;
        }
        try {
            str4 = this.f24322b.getPackageName();
        } catch (Throwable th2) {
            zzbbq.m15852d("Cannot obtain package name, proceeding.");
            str4 = "unknown";
        }
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("is_aia", Boolean.toString(z)).appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter("os", Build.VERSION.RELEASE).appendQueryParameter("api", String.valueOf(Build.VERSION.SDK_INT));
        String str5 = Build.MANUFACTURER;
        String str6 = Build.MODEL;
        if (!str6.startsWith(str5)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str5).length() + 1 + String.valueOf(str6).length());
            sb.append(str5);
            sb.append(" ");
            sb.append(str6);
            str6 = sb.toString();
        }
        Uri.Builder appendQueryParameter2 = appendQueryParameter.appendQueryParameter("device", str6).appendQueryParameter("js", this.f24325e.f24759a).appendQueryParameter("appid", str4).appendQueryParameter("exceptiontype", str).appendQueryParameter("stacktrace", str2).appendQueryParameter("eids", TextUtils.join(",", zzabb.m16917a())).appendQueryParameter("exceptionkey", str3).appendQueryParameter("cl", "330794610").appendQueryParameter("rc", "dev").appendQueryParameter("session_id", zzwm.m11165f()).appendQueryParameter("sampling_rate", Integer.toString(i)).appendQueryParameter("pb_tm", String.valueOf(zzadb.f24005c.mo16862a()));
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23689I0)).booleanValue()) {
            appendQueryParameter2.appendQueryParameter("gmscv", String.valueOf(GoogleApiAvailabilityLight.m17812a().m17803b(this.f24322b))).appendQueryParameter("lite", this.f24325e.f24763e ? "1" : "0");
        }
        return appendQueryParameter2;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m16386a(java.lang.Thread r6, java.lang.Throwable r7) {
        /*
            r5 = this;
            r0 = 1
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L_0x006d
            r0 = r7
            r6 = r0
            r0 = 0
            r9 = r0
            r0 = 0
            r10 = r0
        L_0x000e:
            r0 = r6
            if (r0 == 0) goto L_0x005d
            r0 = r6
            java.lang.StackTraceElement[] r0 = r0.getStackTrace()
            r11 = r0
            r0 = r11
            int r0 = r0.length
            r12 = r0
            r0 = 0
            r13 = r0
        L_0x0020:
            r0 = r13
            r1 = r12
            if (r0 >= r1) goto L_0x0055
            r0 = r11
            r1 = r13
            r0 = r0[r1]
            r14 = r0
            r0 = r14
            java.lang.String r0 = r0.getClassName()
            boolean r0 = com.google.android.gms.internal.ads.zzbbg.m15895b(r0)
            if (r0 == 0) goto L_0x003c
            r0 = 1
            r9 = r0
        L_0x003c:
            java.lang.Class<com.google.android.gms.internal.ads.zzasf> r0 = com.google.android.gms.internal.ads.zzasf.class
            java.lang.String r0 = r0.getName()
            r1 = r14
            java.lang.String r1 = r1.getClassName()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x004f
            r0 = 1
            r10 = r0
        L_0x004f:
            int r13 = r13 + 1
            goto L_0x0020
        L_0x0055:
            r0 = r6
            java.lang.Throwable r0 = r0.getCause()
            r6 = r0
            goto L_0x000e
        L_0x005d:
            r0 = r9
            if (r0 == 0) goto L_0x006d
            r0 = r10
            if (r0 != 0) goto L_0x006d
            r0 = r8
            r13 = r0
            goto L_0x0070
        L_0x006d:
            r0 = 0
            r13 = r0
        L_0x0070:
            r0 = r13
            if (r0 == 0) goto L_0x007e
            r0 = r5
            r1 = r7
            java.lang.String r2 = ""
            r3 = 1065353216(0x3f800000, float:1.0)
            r0.mo16384a(r1, r2, r3)
        L_0x007e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzasf.m16386a(java.lang.Thread, java.lang.Throwable):void");
    }

    @Override // com.google.android.gms.internal.ads.zzasj
    /* renamed from: a */
    public final void mo16385a(Throwable th, String str) {
        mo16384a(th, str, 1.0f);
    }

    @Override // com.google.android.gms.internal.ads.zzasj
    /* renamed from: a */
    public final void mo16384a(Throwable th, String str, float f) {
        if (zzbbg.m15902a(th) != null) {
            String name = th.getClass().getName();
            StringWriter stringWriter = new StringWriter();
            zzehy.m12543a(th, new PrintWriter(stringWriter));
            String stringWriter2 = stringWriter.toString();
            int i = 0;
            int i2 = 1;
            boolean z = Math.random() < ((double) f);
            if (f > 0.0f) {
                i2 = (int) (1.0f / f);
            }
            if (z) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(m16387a(name, stringWriter2, str, i2).toString());
                int size = arrayList.size();
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    final String str2 = (String) obj;
                    final zzbbu zzbbuVar = new zzbbu();
                    this.f24324d.execute(new Runnable(zzbbuVar, str2) { // from class: c.d.b.d.g.a.p3

                        /* renamed from: a */
                        public final zzbbu f14382a;

                        /* renamed from: b */
                        public final String f14383b;

                        {
                            this.f14382a = zzbbuVar;
                            this.f14383b = str2;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f14382a.mo15845a(this.f14383b);
                        }
                    });
                }
            }
        }
    }
}
