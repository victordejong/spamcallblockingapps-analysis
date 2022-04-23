package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import com.appsflyer.AppsFlyerProperties;
import com.google.android.gms.common.d.c;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.common.Constants;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/sb.class */
public final class sb implements sf {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f28371a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static sf f28372b;

    /* renamed from: c  reason: collision with root package name */
    private static sf f28373c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f28374d;
    private final Context e;
    private final WeakHashMap<Thread, Boolean> f;
    private final ExecutorService g;
    private final zzbar h;

    private sb(Context context) {
        this(context, zzbar.zzaau());
    }

    private sb(Context context, zzbar zzbarVar) {
        this.f28374d = new Object();
        this.f = new WeakHashMap<>();
        cxa a2 = cwz.a();
        int i = cxh.f26533b;
        this.g = a2.a();
        this.e = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.h = zzbarVar;
    }

    private final Uri.Builder a(String str, String str2, String str3, int i) {
        boolean z;
        String str4;
        try {
            z = c.a(this.e).a();
        } catch (Throwable th) {
            za.zzc("Error fetching instant app info", th);
            z = false;
        }
        try {
            str4 = this.e.getPackageName();
        } catch (Throwable th2) {
            za.zzez("Cannot obtain package name, proceeding.");
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
        Uri.Builder appendQueryParameter2 = appendQueryParameter.appendQueryParameter("device", str6).appendQueryParameter("js", this.h.zzbrz).appendQueryParameter(AppsFlyerProperties.APP_ID, str4).appendQueryParameter("exceptiontype", str).appendQueryParameter("stacktrace", str2).appendQueryParameter("eids", TextUtils.join(",", aq.a())).appendQueryParameter("exceptionkey", str3).appendQueryParameter("cl", "360757573").appendQueryParameter("rc", "dev").appendQueryParameter("sampling_rate", Integer.toString(i)).appendQueryParameter("pb_tm", String.valueOf(cu.f26394c.a()));
        if (((Boolean) ekb.e().a(aq.aT)).booleanValue()) {
            com.google.android.gms.common.c.b();
            appendQueryParameter2.appendQueryParameter("gmscv", String.valueOf(com.google.android.gms.common.c.c(this.e))).appendQueryParameter("lite", this.h.zzekd ? "1" : "0");
        }
        return appendQueryParameter2;
    }

    public static sf a(Context context) {
        synchronized (f28371a) {
            if (f28372b == null) {
                if (cu.e.a().booleanValue()) {
                    if (!((Boolean) ekb.e().a(aq.ew)).booleanValue()) {
                        f28372b = new sb(context);
                    }
                }
                f28372b = new se();
            }
        }
        return f28372b;
    }

    public static sf a(Context context, zzbar zzbarVar) {
        synchronized (f28371a) {
            if (f28373c == null) {
                if (cu.e.a().booleanValue()) {
                    if (!((Boolean) ekb.e().a(aq.ew)).booleanValue()) {
                        sb sbVar = new sb(context, zzbarVar);
                        Thread thread = Looper.getMainLooper().getThread();
                        if (thread != null) {
                            synchronized (sbVar.f28374d) {
                                sbVar.f.put(thread, Boolean.TRUE);
                            }
                            thread.setUncaughtExceptionHandler(new sc(sbVar, thread.getUncaughtExceptionHandler()));
                        }
                        Thread.setDefaultUncaughtExceptionHandler(new sd(sbVar, Thread.getDefaultUncaughtExceptionHandler()));
                        f28373c = sbVar;
                    }
                }
                f28373c = new se();
            }
        }
        return f28373c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.lang.Throwable r6) {
        /*
            r5 = this;
            r0 = 1
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L_0x006f
            r0 = r6
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = 0
            r10 = r0
        L_0x000e:
            r0 = r8
            if (r0 == 0) goto L_0x005f
            r0 = r8
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
            if (r0 >= r1) goto L_0x0057
            r0 = r11
            r1 = r13
            r0 = r0[r1]
            r14 = r0
            r0 = r14
            java.lang.String r0 = r0.getClassName()
            boolean r0 = com.google.android.gms.internal.ads.yq.b(r0)
            if (r0 == 0) goto L_0x003c
            r0 = 1
            r9 = r0
        L_0x003c:
            r0 = r5
            java.lang.Class r0 = r0.getClass()
            java.lang.String r0 = r0.getName()
            r1 = r14
            java.lang.String r1 = r1.getClassName()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0051
            r0 = 1
            r10 = r0
        L_0x0051:
            int r13 = r13 + 1
            goto L_0x0020
        L_0x0057:
            r0 = r8
            java.lang.Throwable r0 = r0.getCause()
            r8 = r0
            goto L_0x000e
        L_0x005f:
            r0 = r9
            if (r0 == 0) goto L_0x006f
            r0 = r10
            if (r0 != 0) goto L_0x006f
            r0 = r7
            r13 = r0
            goto L_0x0072
        L_0x006f:
            r0 = 0
            r13 = r0
        L_0x0072:
            r0 = r13
            if (r0 == 0) goto L_0x0080
            r0 = r5
            r1 = r6
            java.lang.String r2 = ""
            r3 = 1065353216(0x3f800000, float:1.0)
            r0.a(r1, r2, r3)
        L_0x0080:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.sb.a(java.lang.Throwable):void");
    }

    @Override // com.google.android.gms.internal.ads.sf
    public final void a(Throwable th, String str) {
        a(th, str, 1.0f);
    }

    @Override // com.google.android.gms.internal.ads.sf
    public final void a(Throwable th, String str, float f) {
        if (yq.a(th) != null) {
            String name = th.getClass().getName();
            StringWriter stringWriter = new StringWriter();
            dlf.a(th, new PrintWriter(stringWriter));
            String stringWriter2 = stringWriter.toString();
            int i = 0;
            int i2 = 1;
            boolean z = Math.random() < ((double) f);
            if (f > BitmapDescriptorFactory.HUE_RED) {
                i2 = (int) (1.0f / f);
            }
            if (z) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(a(name, stringWriter2, str, i2).toString());
                ArrayList arrayList2 = arrayList;
                int size = arrayList2.size();
                while (i < size) {
                    Object obj = arrayList2.get(i);
                    i++;
                    final String str2 = (String) obj;
                    final zc zcVar = new zc();
                    this.g.execute(new Runnable(zcVar, str2) { // from class: com.google.android.gms.internal.ads.sa

                        /* renamed from: a  reason: collision with root package name */
                        private final zc f28369a;

                        /* renamed from: b  reason: collision with root package name */
                        private final String f28370b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f28369a = zcVar;
                            this.f28370b = str2;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f28369a.zzen(this.f28370b);
                        }
                    });
                }
            }
        }
    }
}
