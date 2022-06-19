package com.allinone.callerid.main;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.os.StrictMode;
import androidx.appcompat.app.AbstractC0149c;
import androidx.multidex.C0885a;
import com.allinone.callerid.R$style;
import com.allinone.callerid.p144d.p154f.C2576d;
import com.allinone.callerid.p157f.p158j.C2641b;
import com.allinone.callerid.p197j.p198b.C3030a;
import com.allinone.callerid.p197j.p198b.C3031b;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.p202gg.AppOpenManager;
import com.android.boom.C3947a;
import com.danikula.videocache.C4425f;
import com.getkeepsafe.relinker.C4465b;
import com.google.android.play.core.missingsplits.C8531b;
import com.tencent.mmkv.MMKV;
import com.zhy.http.okhttp.OkHttpUtils;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLContext;
import okhttp3.OkHttpClient;
import org.xutils.C9682x;
import p078c.p122d.p123a.C2058q;
import p078c.p129e.p130a.p131a.C2071a;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/main/EZCallApplication.class */
public class EZCallApplication extends Application {

    /* renamed from: d */
    public static boolean f9910d = false;

    /* renamed from: e */
    private static EZCallApplication f9911e;

    /* renamed from: j */
    public AppOpenManager f9916j;

    /* renamed from: l */
    private C4425f f9918l;

    /* renamed from: f */
    public boolean f9912f = false;

    /* renamed from: g */
    public boolean f9913g = false;

    /* renamed from: h */
    public String f9914h = "en";

    /* renamed from: i */
    public boolean f9915i = true;

    /* renamed from: k */
    public boolean f9917k = true;

    /* renamed from: com.allinone.callerid.main.EZCallApplication$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/main/EZCallApplication$a.class */
    class C3054a implements MMKV.AbstractC9418b {
        C3054a() {
            EZCallApplication.this = r4;
        }

        @Override // com.tencent.mmkv.MMKV.AbstractC9418b
        /* renamed from: a */
        public void mo582a(String str) {
            try {
                C4465b.m22413a(EZCallApplication.this.getApplicationContext(), str);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.main.EZCallApplication$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/main/EZCallApplication$b.class */
    public class RunnableC3055b implements Runnable {
        RunnableC3055b() {
            EZCallApplication.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Process.setThreadPriority(10);
                C9682x.Ext.init(EZCallApplication.f9911e);
                C2641b.m26981a().m26980b();
                int i = Build.VERSION.SDK_INT;
                if (i >= 18) {
                    StrictMode.VmPolicy.Builder builder = new StrictMode.VmPolicy.Builder();
                    StrictMode.setVmPolicy(builder.build());
                    builder.detectFileUriExposure();
                }
                if (C3767h1.m24236m0()) {
                    C2071a.m28105a(EZCallApplication.f9911e);
                }
                EZCallApplication.this.f9914h = C3711a1.m24471x0();
                EZCallApplication.this.f9915i = C3711a1.m24507o0();
                C3718c0.m24435b(EZCallApplication.this.getApplicationContext());
                C2058q.m28151h(EZCallApplication.this.getApplicationContext());
                try {
                    if (i < 20) {
                        SSLContext sSLContext = SSLContext.getInstance("TLSv1");
                        sSLContext.init(null, null, null);
                        C3031b c3031b = new C3031b(sSLContext.getSocketFactory());
                        OkHttpClient.Builder builder2 = new OkHttpClient.Builder();
                        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                        OkHttpUtils.initClient(builder2.connectTimeout(OkHttpUtils.DEFAULT_MILLISECONDS, timeUnit).sslSocketFactory(c3031b, new C3030a()).readTimeout(OkHttpUtils.DEFAULT_MILLISECONDS, timeUnit).build());
                    } else {
                        OkHttpClient.Builder builder3 = new OkHttpClient.Builder();
                        TimeUnit timeUnit2 = TimeUnit.MILLISECONDS;
                        OkHttpUtils.initClient(builder3.connectTimeout(OkHttpUtils.DEFAULT_MILLISECONDS, timeUnit2).readTimeout(OkHttpUtils.DEFAULT_MILLISECONDS, timeUnit2).build());
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    /* renamed from: b */
    private void m26147b() {
        C3772i0.m24190a().f12015b.execute(new RunnableC3055b());
    }

    /* renamed from: c */
    public static EZCallApplication m26146c() {
        EZCallApplication eZCallApplication;
        synchronized (EZCallApplication.class) {
            try {
                if (f9911e == null) {
                    f9911e = new EZCallApplication();
                }
                eZCallApplication = f9911e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return eZCallApplication;
    }

    /* renamed from: d */
    public static C4425f m26145d(Context context) {
        EZCallApplication eZCallApplication = (EZCallApplication) context.getApplicationContext();
        C4425f c4425f = eZCallApplication.f9918l;
        C4425f c4425f2 = c4425f;
        if (c4425f == null) {
            c4425f2 = eZCallApplication.m26143f();
            eZCallApplication.f9918l = c4425f2;
        }
        return c4425f2;
    }

    /* renamed from: f */
    private C4425f m26143f() {
        return new C4425f.C4427b(this).m22502d(1073741824L).m22503c(new C2576d()).m22505a();
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        try {
            C0885a.m32205l(this);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: e */
    public void m26144e() {
        boolean z = false;
        if (C3711a1.m24467y0()) {
            if (C3767h1.m24244i0(getApplicationContext())) {
                C3711a1.m24588S2(1);
            } else {
                C3711a1.m24588S2(0);
            }
        }
        int m24461z2 = C3711a1.m24461z2();
        if (m24461z2 == 1) {
            z = true;
        }
        AbstractC0149c.m35550F(z ? 2 : 1);
        if (m24461z2 == 0) {
            C3719c1.m24430c(this, R$style.NormalTheme);
        } else if (m24461z2 != 1) {
            C3719c1.m24430c(this, R$style.NormalTheme);
        } else {
            C3719c1.m24430c(this, R$style.BlackTheme);
        }
    }

    @Override // android.app.Application
    public void onCreate() {
        try {
            if (C8531b.m3406a(this).mo3400a()) {
                return;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        super.onCreate();
        if (C3718c0.f11914a) {
            C3718c0.m24436a("tony", "Application--onCreate");
        }
        try {
            f9911e = this;
            C3947a.m23744b(this);
            this.f9916j = new AppOpenManager(this);
            m26144e();
            MMKV.m589p(getFilesDir().getAbsolutePath() + "/mmkv", new C3054a());
            m26147b();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
