package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import com.appsflyer.AppsFlyerProperties;
import com.google.android.gms.common.C11941c;
import com.google.android.gms.common.p352d.C11946c;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.common.Constants;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.google.android.gms.internal.ads.sb */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/sb.class */
public final class C12898sb implements AbstractC12902sf {

    /* renamed from: a */
    private static final Object f49778a = new Object();

    /* renamed from: b */
    private static AbstractC12902sf f49779b;

    /* renamed from: c */
    private static AbstractC12902sf f49780c;

    /* renamed from: d */
    private final Object f49781d;

    /* renamed from: e */
    private final Context f49782e;

    /* renamed from: f */
    private final WeakHashMap<Thread, Boolean> f49783f;

    /* renamed from: g */
    private final ExecutorService f49784g;

    /* renamed from: h */
    private final zzbar f49785h;

    private C12898sb(Context context) {
        this(context, zzbar.zzaau());
    }

    private C12898sb(Context context, zzbar zzbarVar) {
        this.f49781d = new Object();
        this.f49783f = new WeakHashMap<>();
        cxa m17086a = cwz.m17086a();
        int i = cxh.f46724b;
        this.f49784g = m17086a.mo17085a();
        this.f49782e = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f49785h = zzbarVar;
    }

    /* renamed from: a */
    private final Uri.Builder m14199a(String str, String str2, String str3, int i) {
        boolean z;
        String str4;
        try {
            z = C11946c.m19258a(this.f49782e).m19265a();
        } catch (Throwable th) {
            C13088za.zzc("Error fetching instant app info", th);
            z = false;
        }
        try {
            str4 = this.f49782e.getPackageName();
        } catch (Throwable th2) {
            C13088za.zzez("Cannot obtain package name, proceeding.");
            str4 = "unknown";
        }
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme(Constants.HTTPS).path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("is_aia", Boolean.toString(z)).appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter("os", Build.VERSION.RELEASE).appendQueryParameter("api", String.valueOf(Build.VERSION.SDK_INT));
        String str5 = Build.MANUFACTURER;
        String str6 = Build.MODEL;
        if (!str6.startsWith(str5)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str5).length() + 1 + String.valueOf(str6).length());
            sb.append(str5);
            sb.append(StringUtils.SPACE);
            sb.append(str6);
            str6 = sb.toString();
        }
        Uri.Builder appendQueryParameter2 = appendQueryParameter.appendQueryParameter("device", str6).appendQueryParameter("js", this.f49785h.zzbrz).appendQueryParameter(AppsFlyerProperties.APP_ID, str4).appendQueryParameter("exceptiontype", str).appendQueryParameter("stacktrace", str2).appendQueryParameter("eids", TextUtils.join(",", C12187aq.m18475a())).appendQueryParameter("exceptionkey", str3).appendQueryParameter("cl", "360757573").appendQueryParameter("rc", "dev").appendQueryParameter("sampling_rate", Integer.toString(i)).appendQueryParameter("pb_tm", String.valueOf(C12286cu.f46540c.mo17481a()));
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42657aT)).booleanValue()) {
            C11941c.m19271b();
            appendQueryParameter2.appendQueryParameter("gmscv", String.valueOf(C11941c.m19268c(this.f49782e))).appendQueryParameter("lite", this.f49785h.zzekd ? "1" : "0");
        }
        return appendQueryParameter2;
    }

    /* renamed from: a */
    public static AbstractC12902sf m14202a(Context context) {
        synchronized (f49778a) {
            if (f49779b == null) {
                if (C12286cu.f46542e.mo17481a().booleanValue()) {
                    if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42898ew)).booleanValue()) {
                        f49779b = new C12898sb(context);
                    }
                }
                f49779b = new C12901se();
            }
        }
        return f49779b;
    }

    /* renamed from: a */
    public static AbstractC12902sf m14201a(Context context, zzbar zzbarVar) {
        synchronized (f49778a) {
            if (f49780c == null) {
                if (C12286cu.f46542e.mo17481a().booleanValue()) {
                    if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42898ew)).booleanValue()) {
                        C12898sb c12898sb = new C12898sb(context, zzbarVar);
                        Thread thread = Looper.getMainLooper().getThread();
                        if (thread != null) {
                            synchronized (c12898sb.f49781d) {
                                c12898sb.f49783f.put(thread, Boolean.TRUE);
                            }
                            thread.setUncaughtExceptionHandler(new C12899sc(c12898sb, thread.getUncaughtExceptionHandler()));
                        }
                        Thread.setDefaultUncaughtExceptionHandler(new C12900sd(c12898sb, Thread.getDefaultUncaughtExceptionHandler()));
                        f49780c = c12898sb;
                    }
                }
                f49780c = new C12901se();
            }
        }
        return f49780c;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m14198a(java.lang.Throwable r6) {
        /*
            r5 = this;
            r0 = 1
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L6f
            r0 = r6
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = 0
            r10 = r0
        Le:
            r0 = r8
            if (r0 == 0) goto L5f
            r0 = r8
            java.lang.StackTraceElement[] r0 = r0.getStackTrace()
            r11 = r0
            r0 = r11
            int r0 = r0.length
            r12 = r0
            r0 = 0
            r13 = r0
        L20:
            r0 = r13
            r1 = r12
            if (r0 >= r1) goto L57
            r0 = r11
            r1 = r13
            r0 = r0[r1]
            r14 = r0
            r0 = r14
            java.lang.String r0 = r0.getClassName()
            boolean r0 = com.google.android.gms.internal.ads.C13077yq.m13934b(r0)
            if (r0 == 0) goto L3c
            r0 = 1
            r9 = r0
        L3c:
            r0 = r5
            java.lang.Class r0 = r0.getClass()
            java.lang.String r0 = r0.getName()
            r1 = r14
            java.lang.String r1 = r1.getClassName()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L51
            r0 = 1
            r10 = r0
        L51:
            int r13 = r13 + 1
            goto L20
        L57:
            r0 = r8
            java.lang.Throwable r0 = r0.getCause()
            r8 = r0
            goto Le
        L5f:
            r0 = r9
            if (r0 == 0) goto L6f
            r0 = r10
            if (r0 != 0) goto L6f
            r0 = r7
            r13 = r0
            goto L72
        L6f:
            r0 = 0
            r13 = r0
        L72:
            r0 = r13
            if (r0 == 0) goto L80
            r0 = r5
            r1 = r6
            java.lang.String r2 = ""
            r3 = 1065353216(0x3f800000, float:1.0)
            r0.mo14196a(r1, r2, r3)
        L80:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C12898sb.m14198a(java.lang.Throwable):void");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12902sf
    /* renamed from: a */
    public final void mo14197a(Throwable th, String str) {
        mo14196a(th, str, 1.0f);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12902sf
    /* renamed from: a */
    public final void mo14196a(Throwable th, String str, float f) {
        if (C13077yq.m13941a(th) == null) {
            return;
        }
        String name = th.getClass().getName();
        StringWriter stringWriter = new StringWriter();
        dlf.m16512a(th, new PrintWriter(stringWriter));
        String stringWriter2 = stringWriter.toString();
        int i = 1;
        boolean z = Math.random() < ((double) f);
        if (f > BitmapDescriptorFactory.HUE_RED) {
            i = (int) (1.0f / f);
        }
        if (!z) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(m14199a(name, stringWriter2, str, i).toString());
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            i2++;
            this.f49784g.execute(new Runnable(new C13090zc(), (String) arrayList2.get(i2)) { // from class: com.google.android.gms.internal.ads.sa

                /* renamed from: a */
                private final C13090zc f49776a;

                /* renamed from: b */
                private final String f49777b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f49776a = c13090zc;
                    this.f49777b = str2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f49776a.zzen(this.f49777b);
                }
            });
        }
    }
}
