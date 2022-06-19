package com.callerid.block.main;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import androidx.appcompat.app.AbstractC0086c;
import androidx.multidex.C0403a;
import com.android.boom.C0675a;
import com.callerid.block.R$style;
import com.callerid.block.p053i.p054a.C1070a;
import com.callerid.block.p053i.p054a.C1071b;
import com.callerid.block.util.AppOpenManager;
import com.callerid.block.util.C1169c0;
import com.callerid.block.util.C1199n0;
import com.callerid.block.util.C1205p0;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import com.callerid.block.util.C1235y;
import com.google.android.gms.ads.C1459l;
import com.google.android.play.core.missingsplits.b;
import com.rey.material.app.b;
import com.tencent.mmkv.MMKV;
import com.zhy.http.okhttp.OkHttpUtils;
import e.f.a.a.a;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLContext;
import okhttp3.OkHttpClient;
import p092e.p096e.p097a.C3085q;
/* loaded from: classes-dex2jar.jar:com/callerid/block/main/EZCallApplication.class */
public class EZCallApplication extends Application {

    /* renamed from: g */
    private static EZCallApplication f4576g;

    /* renamed from: d */
    public AppOpenManager f4579d;

    /* renamed from: b */
    public boolean f4577b = true;

    /* renamed from: c */
    public String f4578c = "en";

    /* renamed from: e */
    public boolean f4580e = true;

    /* renamed from: f */
    public boolean f4581f = true;

    /* renamed from: com.callerid.block.main.EZCallApplication$c */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/main/EZCallApplication$c.class */
    public class RunnableC1093c implements Runnable {
        RunnableC1093c() {
            EZCallApplication.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            OkHttpClient build;
            try {
                Process.setThreadPriority(10);
                EZCallApplication eZCallApplication = EZCallApplication.this;
                eZCallApplication.f4577b = C1199n0.m9732V(eZCallApplication.getApplicationContext());
                C1227w.m9526b(EZCallApplication.this.getApplicationContext());
                C3085q.m296h(EZCallApplication.this.getApplicationContext());
                EZCallApplication.this.m10162d();
                EZCallApplication eZCallApplication2 = EZCallApplication.this;
                eZCallApplication2.f4578c = C1199n0.m9706f0(eZCallApplication2.getApplicationContext());
                try {
                    if (Build.VERSION.SDK_INT < 20) {
                        SSLContext sSLContext = SSLContext.getInstance("TLSv1");
                        sSLContext.init(null, null, null);
                        C1071b c1071b = new C1071b(sSLContext.getSocketFactory());
                        OkHttpClient.Builder builder = new OkHttpClient.Builder();
                        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                        build = builder.connectTimeout((long) OkHttpUtils.DEFAULT_MILLISECONDS, timeUnit).sslSocketFactory(c1071b, new C1070a()).readTimeout((long) OkHttpUtils.DEFAULT_MILLISECONDS, timeUnit).build();
                    } else {
                        OkHttpClient.Builder builder2 = new OkHttpClient.Builder();
                        TimeUnit timeUnit2 = TimeUnit.MILLISECONDS;
                        build = builder2.connectTimeout((long) OkHttpUtils.DEFAULT_MILLISECONDS, timeUnit2).readTimeout((long) OkHttpUtils.DEFAULT_MILLISECONDS, timeUnit2).build();
                    }
                    OkHttpUtils.initClient(build);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    /* renamed from: b */
    private void m10164b() {
        C1169c0.m9902a().f4994a.execute(new RunnableC1093c());
    }

    /* renamed from: c */
    public static EZCallApplication m10163c() {
        EZCallApplication eZCallApplication;
        synchronized (EZCallApplication.class) {
            try {
                if (f4576g == null) {
                    f4576g = new EZCallApplication();
                }
                eZCallApplication = f4576g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return eZCallApplication;
    }

    /* renamed from: d */
    public void m10162d() {
        Context context;
        String str;
        Context applicationContext;
        Context applicationContext2;
        String str2;
        if (C1199n0.m9703g0(getApplicationContext())) {
            C1199n0.m9663t1(getApplicationContext(), false);
            String m9557t = C1216t0.m9557t();
            if (m9557t != null && !"".equals(m9557t)) {
                String str3 = "hi";
                if (!m9557t.equals("hi")) {
                    str3 = "ru";
                    if (!m9557t.equals("ru")) {
                        str3 = "in";
                        if (!m9557t.equals("in")) {
                            str3 = "es";
                            if (!m9557t.equals("es")) {
                                str3 = "ar";
                                if (!m9557t.equals("ar")) {
                                    str3 = "fr";
                                    if (!m9557t.equals("fr")) {
                                        str3 = "de";
                                        if (!m9557t.equals("de")) {
                                            str3 = "pt";
                                            if (!m9557t.equals("pt")) {
                                                str3 = "it";
                                                if (!m9557t.equals("it")) {
                                                    str3 = "vi";
                                                    if (!m9557t.equals("vi")) {
                                                        str3 = "ur";
                                                        if (!m9557t.equals("ur")) {
                                                            str3 = "bn";
                                                            if (!m9557t.equals("bn")) {
                                                                str3 = "ta";
                                                                if (!m9557t.equals("ta")) {
                                                                    str3 = "te";
                                                                    if (!m9557t.equals("te")) {
                                                                        str3 = "kn";
                                                                        if (!m9557t.equals("kn")) {
                                                                            str3 = "gu";
                                                                            if (!m9557t.equals("gu")) {
                                                                                str3 = "mr";
                                                                                if (!m9557t.equals("mr")) {
                                                                                    str3 = "ml";
                                                                                    if (!m9557t.equals("ml")) {
                                                                                        str3 = "pa";
                                                                                        if (!m9557t.equals("pa")) {
                                                                                            str3 = "iw";
                                                                                            if (!m9557t.equals("iw")) {
                                                                                                if (m9557t.equals("cs")) {
                                                                                                    context = getApplicationContext();
                                                                                                    str = "cs";
                                                                                                } else if (m9557t.equals("ms")) {
                                                                                                    context = getApplicationContext();
                                                                                                    str = "ms";
                                                                                                } else if (m9557t.equals("th")) {
                                                                                                    context = getApplicationContext();
                                                                                                    str = "th";
                                                                                                } else if (m9557t.equals("tr")) {
                                                                                                    context = getApplicationContext();
                                                                                                    str = "tr";
                                                                                                } else if (m9557t.equals("am")) {
                                                                                                    context = getApplicationContext();
                                                                                                    str = "am";
                                                                                                } else {
                                                                                                    try {
                                                                                                        String m9558s = C1216t0.m9558s();
                                                                                                        if (m9558s != null && !"".equals(m9558s)) {
                                                                                                            if (m9558s.equals("GB")) {
                                                                                                                applicationContext2 = getApplicationContext();
                                                                                                                str2 = "en_GB";
                                                                                                            } else if (m9558s.equals("CA")) {
                                                                                                                applicationContext2 = getApplicationContext();
                                                                                                                str2 = "en_CA";
                                                                                                            } else {
                                                                                                                applicationContext = getApplicationContext();
                                                                                                            }
                                                                                                            C1199n0.m9666s1(applicationContext2, str2);
                                                                                                            return;
                                                                                                        }
                                                                                                        applicationContext = getApplicationContext();
                                                                                                        C1199n0.m9666s1(applicationContext, "en");
                                                                                                        return;
                                                                                                    } catch (Exception e) {
                                                                                                        e.printStackTrace();
                                                                                                    }
                                                                                                }
                                                                                                C1199n0.m9666s1(context, str);
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                C1199n0.m9666s1(getApplicationContext(), str3);
                return;
            }
            context = getApplicationContext();
            str = "en";
            C1199n0.m9666s1(context, str);
        }
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        if (C1227w.f5084a) {
            C1227w.m9527a("wbb", "Application开始");
        }
        try {
            C0403a.m12879k(this);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: e */
    public void m10161e() {
        boolean z = false;
        if (C1199n0.m9700h0()) {
            if (C1216t0.m9595Q(getApplicationContext())) {
                C1199n0.m9762G1(1);
            } else {
                C1199n0.m9762G1(0);
            }
        }
        int m9777B1 = C1199n0.m9777B1();
        if (m9777B1 == 1) {
            z = true;
        }
        AbstractC0086c.m14914F(z ? 2 : 1);
        if (m9777B1 == 0 || m9777B1 != 1) {
            C1205p0.m9634c(this, R$style.NormalTheme);
        } else {
            C1205p0.m9634c(this, R$style.BlackTheme);
        }
    }

    @Override // android.app.Application
    public void onCreate() {
        if (b.a(this).a()) {
            return;
        }
        super.onCreate();
        try {
            if (C1216t0.m9593S()) {
                a.a(this);
            }
            f4576g = this;
            C0675a.m11453b(this);
            C1459l.m8697a(this, new a(this));
            this.f4579d = new AppOpenManager(this);
            m10161e();
            com.rey.material.app.b.h(this, 2, 0, (b.a) null);
            MMKV.o(C1235y.f5092a, new b(this));
            m10164b();
            if (!C1227w.f5084a) {
                return;
            }
            C1227w.m9527a("wbb", "Application结束");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
