package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.common.p132c.C2586c;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.oy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/oy.class */
public final class C3398oy implements AbstractC3403pc {

    /* renamed from: a */
    private static final Object f17062a = new Object();

    /* renamed from: b */
    private static AbstractC3403pc f17063b = null;

    /* renamed from: c */
    private static AbstractC3403pc f17064c = null;

    /* renamed from: d */
    private final Object f17065d;

    /* renamed from: e */
    private final Context f17066e;

    /* renamed from: f */
    private final WeakHashMap<Thread, Boolean> f17067f;

    /* renamed from: g */
    private final ExecutorService f17068g;

    /* renamed from: h */
    private final C3647yd f17069h;

    private C3398oy(Context context) {
        this(context, C3647yd.m6741a());
    }

    private C3398oy(Context context, C3647yd c3647yd) {
        this.f17065d = new Object();
        this.f17067f = new WeakHashMap<>();
        this.f17068g = cnv.m10962a().mo10961a(cnw.f13422a);
        this.f17066e = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f17069h = c3647yd;
    }

    /* renamed from: a */
    private final Uri.Builder m7350a(String str, String str2, String str3, int i) {
        boolean z = false;
        try {
            z = C2586c.m14193a(this.f17066e).m14202a();
        } catch (Throwable th) {
            C3645yb.m6748c("Error fetching instant app info", th);
        }
        String str4 = "unknown";
        try {
            str4 = this.f17066e.getPackageName();
        } catch (Throwable th2) {
            C3645yb.m6745e("Cannot obtain package name, proceeding.");
        }
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("is_aia", Boolean.toString(z)).appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter("os", Build.VERSION.RELEASE).appendQueryParameter("api", String.valueOf(Build.VERSION.SDK_INT));
        String str5 = Build.MANUFACTURER;
        String str6 = Build.MODEL;
        if (!str6.startsWith(str5)) {
            str6 = new StringBuilder(String.valueOf(str5).length() + 1 + String.valueOf(str6).length()).append(str5).append(" ").append(str6).toString();
        }
        return appendQueryParameter.appendQueryParameter("device", str6).appendQueryParameter("js", this.f17069h.f17636a).appendQueryParameter("appid", str4).appendQueryParameter("exceptiontype", str).appendQueryParameter("stacktrace", str2).appendQueryParameter("eids", TextUtils.join(",", edi.m7867a())).appendQueryParameter("exceptionkey", str3).appendQueryParameter("cl", "305933803").appendQueryParameter("rc", "dev").appendQueryParameter("session_id", dyx.m8157f()).appendQueryParameter("sampling_rate", Integer.toString(i)).appendQueryParameter("pb_tm", String.valueOf(C2819aw.f10445c.mo13599a()));
    }

    /* renamed from: a */
    public static AbstractC3403pc m7353a(Context context) {
        synchronized (f17062a) {
            if (f17063b == null) {
                if (C2819aw.f10447e.mo13599a().booleanValue()) {
                    f17063b = new C3398oy(context);
                } else {
                    f17063b = new C3402pb();
                }
            }
        }
        return f17063b;
    }

    /* renamed from: a */
    public static AbstractC3403pc m7352a(Context context, C3647yd c3647yd) {
        synchronized (f17062a) {
            if (f17064c == null) {
                if (C2819aw.f10447e.mo13599a().booleanValue()) {
                    C3398oy c3398oy = new C3398oy(context, c3647yd);
                    Thread thread = Looper.getMainLooper().getThread();
                    if (thread != null) {
                        synchronized (c3398oy.f17065d) {
                            c3398oy.f17067f.put(thread, true);
                        }
                        thread.setUncaughtExceptionHandler(new C3399oz(c3398oy, thread.getUncaughtExceptionHandler()));
                    }
                    Thread.setDefaultUncaughtExceptionHandler(new C3401pa(c3398oy, Thread.getDefaultUncaughtExceptionHandler()));
                    f17064c = c3398oy;
                } else {
                    f17064c = new C3402pb();
                }
            }
        }
        return f17064c;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7349a(java.lang.Thread r6, java.lang.Throwable r7) {
        /*
            r5 = this;
            r0 = 1
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L7b
            r0 = 0
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r7
            r6 = r0
        Le:
            r0 = r6
            if (r0 == 0) goto L5f
            r0 = r6
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
            boolean r0 = com.google.android.gms.internal.ads.C3634xr.m6786b(r0)
            if (r0 == 0) goto L3c
            r0 = 1
            r10 = r0
        L3c:
            r0 = r5
            java.lang.Class r0 = r0.getClass()
            java.lang.String r0 = r0.getName()
            r1 = r14
            java.lang.String r1 = r1.getClassName()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L51
            r0 = 1
            r9 = r0
        L51:
            int r13 = r13 + 1
            goto L20
        L57:
            r0 = r6
            java.lang.Throwable r0 = r0.getCause()
            r6 = r0
            goto Le
        L5f:
            r0 = r10
            if (r0 == 0) goto L7b
            r0 = r9
            if (r0 != 0) goto L7b
            r0 = r8
            r13 = r0
        L6c:
            r0 = r13
            if (r0 == 0) goto L7a
            r0 = r5
            r1 = r7
            java.lang.String r2 = ""
            r3 = 1065353216(0x3f800000, float:1.0)
            r0.mo7344a(r1, r2, r3)
        L7a:
            return
        L7b:
            r0 = 0
            r13 = r0
            goto L6c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C3398oy.m7349a(java.lang.Thread, java.lang.Throwable):void");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3403pc
    /* renamed from: a */
    public final void mo7345a(Throwable th, String str) {
        mo7344a(th, str, 1.0f);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3403pc
    /* renamed from: a */
    public final void mo7344a(Throwable th, String str, float f) {
        if (C3634xr.m6793a(th) == null) {
            return;
        }
        String name = th.getClass().getName();
        StringWriter stringWriter = new StringWriter();
        dap.m10260a(th, new PrintWriter(stringWriter));
        String stringWriter2 = stringWriter.toString();
        boolean z = Math.random() < ((double) f);
        int i = f > 0.0f ? (int) (1.0f / f) : 1;
        if (!z) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(m7350a(name, stringWriter2, str, i).toString());
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            i2++;
            this.f17068g.execute(new Runnable(new C3649yf(), (String) arrayList2.get(i2)) { // from class: com.google.android.gms.internal.ads.ox

                /* renamed from: a */
                private final C3649yf f17060a;

                /* renamed from: b */
                private final String f17061b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f17060a = c3649yf;
                    this.f17061b = str2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f17060a.mo6739a(this.f17061b);
                }
            });
        }
    }
}
