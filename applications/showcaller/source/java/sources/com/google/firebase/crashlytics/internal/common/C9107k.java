package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7970j;
import com.google.firebase.C8849c;
import com.google.firebase.crashlytics.internal.settings.AbstractC9136d;
import com.google.firebase.crashlytics.p293d.AbstractC8897a;
import com.google.firebase.crashlytics.p293d.C8898b;
import com.google.firebase.crashlytics.p293d.p294e.AbstractC8903a;
import com.google.firebase.crashlytics.p293d.p295f.AbstractC8910b;
import com.google.firebase.crashlytics.p293d.p296g.C8913b;
import com.google.firebase.crashlytics.p293d.p300j.AbstractC9063h;
import com.google.firebase.crashlytics.p293d.p300j.C9064i;
import com.google.firebase.crashlytics.p293d.p302l.C9068a;
import com.google.firebase.crashlytics.p293d.p302l.C9070c;
import java.io.File;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: com.google.firebase.crashlytics.internal.common.k */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/k.class */
public class C9107k {

    /* renamed from: a */
    private final Context f39348a;

    /* renamed from: b */
    private final C8849c f39349b;

    /* renamed from: c */
    private final C9119q f39350c;

    /* renamed from: d */
    private final long f39351d = System.currentTimeMillis();

    /* renamed from: e */
    private C9113l f39352e;

    /* renamed from: f */
    private C9113l f39353f;

    /* renamed from: g */
    private boolean f39354g;

    /* renamed from: h */
    private C9095i f39355h;

    /* renamed from: i */
    private final C9125t f39356i;

    /* renamed from: j */
    private final AbstractC8910b f39357j;

    /* renamed from: k */
    private final AbstractC8903a f39358k;

    /* renamed from: l */
    private final ExecutorService f39359l;

    /* renamed from: m */
    private final C9090g f39360m;

    /* renamed from: n */
    private final AbstractC8897a f39361n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.crashlytics.internal.common.k$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/k$a.class */
    public class CallableC9108a implements Callable<AbstractC7966g<Void>> {

        /* renamed from: a */
        final /* synthetic */ AbstractC9136d f39362a;

        CallableC9108a(AbstractC9136d abstractC9136d) {
            C9107k.this = r4;
            this.f39362a = abstractC9136d;
        }

        /* renamed from: a */
        public AbstractC7966g<Void> call() {
            return C9107k.this.m1840f(this.f39362a);
        }
    }

    /* renamed from: com.google.firebase.crashlytics.internal.common.k$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/k$b.class */
    public class RunnableC9109b implements Runnable {

        /* renamed from: d */
        final /* synthetic */ AbstractC9136d f39364d;

        RunnableC9109b(AbstractC9136d abstractC9136d) {
            C9107k.this = r4;
            this.f39364d = abstractC9136d;
        }

        @Override // java.lang.Runnable
        public void run() {
            C9107k.this.m1840f(this.f39364d);
        }
    }

    /* renamed from: com.google.firebase.crashlytics.internal.common.k$c */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/k$c.class */
    public class CallableC9110c implements Callable<Boolean> {
        CallableC9110c() {
            C9107k.this = r4;
        }

        /* renamed from: a */
        public Boolean call() {
            try {
                boolean m1824d = C9107k.this.f39352e.m1824d();
                if (!m1824d) {
                    C8898b.m2397f().m2392k("Initialization marker file was not properly removed.");
                }
                return Boolean.valueOf(m1824d);
            } catch (Exception e) {
                C8898b.m2397f().m2398e("Problem encountered deleting Crashlytics initialization marker.", e);
                return Boolean.FALSE;
            }
        }
    }

    /* renamed from: com.google.firebase.crashlytics.internal.common.k$d */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/k$d.class */
    public class CallableC9111d implements Callable<Boolean> {
        CallableC9111d() {
            C9107k.this = r4;
        }

        /* renamed from: a */
        public Boolean call() {
            return Boolean.valueOf(C9107k.this.f39355h.m1869n());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.firebase.crashlytics.internal.common.k$e */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/k$e.class */
    public static final class C9112e implements C8913b.AbstractC8915b {

        /* renamed from: a */
        private final AbstractC9063h f39368a;

        public C9112e(AbstractC9063h abstractC9063h) {
            this.f39368a = abstractC9063h;
        }

        @Override // com.google.firebase.crashlytics.p293d.p296g.C8913b.AbstractC8915b
        /* renamed from: a */
        public File mo1828a() {
            File file = new File(this.f39368a.mo1991b(), "log-files");
            if (!file.exists()) {
                file.mkdirs();
            }
            return file;
        }
    }

    public C9107k(C8849c c8849c, C9125t c9125t, AbstractC8897a abstractC8897a, C9119q c9119q, AbstractC8910b abstractC8910b, AbstractC8903a abstractC8903a, ExecutorService executorService) {
        this.f39349b = c8849c;
        this.f39350c = c9119q;
        this.f39348a = c8849c.m2533g();
        this.f39356i = c9125t;
        this.f39361n = abstractC8897a;
        this.f39357j = abstractC8910b;
        this.f39358k = abstractC8903a;
        this.f39359l = executorService;
        this.f39360m = new C9090g(executorService);
    }

    /* renamed from: d */
    private void m1842d() {
        try {
            this.f39354g = Boolean.TRUE.equals((Boolean) C9086f0.m1918a(this.f39360m.m1906g(new CallableC9111d())));
        } catch (Exception e) {
            this.f39354g = false;
        }
    }

    /* renamed from: f */
    public AbstractC7966g<Void> m1840f(AbstractC9136d abstractC9136d) {
        m1833m();
        try {
            this.f39357j.mo2373a(C9106j.m1846b(this));
            if (!abstractC9136d.mo1735b().mo1727a().f39436a) {
                C8898b.m2397f().m2401b("Collection of crash reports disabled in Crashlytics settings.");
                return C7970j.m5799d(new RuntimeException("Collection of crash reports disabled in Crashlytics settings."));
            }
            if (!this.f39355h.m1861v()) {
                C8898b.m2397f().m2392k("Previous sessions could not be finalized.");
            }
            return this.f39355h.m1889N(abstractC9136d.mo1736a());
        } catch (Exception e) {
            C8898b.m2397f().m2398e("Crashlytics encountered a problem during asynchronous initialization.", e);
            return C7970j.m5799d(e);
        } finally {
            m1834l();
        }
    }

    /* renamed from: h */
    private void m1838h(AbstractC9136d abstractC9136d) {
        Future<?> submit = this.f39359l.submit(new RunnableC9109b(abstractC9136d));
        C8898b.m2397f().m2401b("Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
        try {
            submit.get(4L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            C8898b.m2397f().m2398e("Crashlytics was interrupted during initialization.", e);
        } catch (ExecutionException e2) {
            C8898b.m2397f().m2398e("Crashlytics encountered a problem during initialization.", e2);
        } catch (TimeoutException e3) {
            C8898b.m2397f().m2398e("Crashlytics timed out during initialization.", e3);
        }
    }

    /* renamed from: i */
    public static String m1837i() {
        return "17.4.1";
    }

    /* renamed from: j */
    static boolean m1836j(String str, boolean z) {
        if (!z) {
            C8898b.m2397f().m2394i("Configured not to require a build ID.");
            return true;
        } else if (!TextUtils.isEmpty(str)) {
            return true;
        } else {
            Log.e("FirebaseCrashlytics", ".");
            Log.e("FirebaseCrashlytics", ".     |  | ");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".   \\ |  | /");
            Log.e("FirebaseCrashlytics", ".    \\    /");
            Log.e("FirebaseCrashlytics", ".     \\  /");
            Log.e("FirebaseCrashlytics", ".      \\/");
            Log.e("FirebaseCrashlytics", ".");
            Log.e("FirebaseCrashlytics", "The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app's build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account.");
            Log.e("FirebaseCrashlytics", ".");
            Log.e("FirebaseCrashlytics", ".      /\\");
            Log.e("FirebaseCrashlytics", ".     /  \\");
            Log.e("FirebaseCrashlytics", ".    /    \\");
            Log.e("FirebaseCrashlytics", ".   / |  | \\");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".");
            return false;
        }
    }

    /* renamed from: e */
    boolean m1841e() {
        return this.f39352e.m1825c();
    }

    /* renamed from: g */
    public AbstractC7966g<Void> m1839g(AbstractC9136d abstractC9136d) {
        return C9086f0.m1917b(this.f39359l, new CallableC9108a(abstractC9136d));
    }

    /* renamed from: k */
    public void m1835k(String str) {
        this.f39355h.m1883T(System.currentTimeMillis() - this.f39351d, str);
    }

    /* renamed from: l */
    void m1834l() {
        this.f39360m.m1906g(new CallableC9110c());
    }

    /* renamed from: m */
    void m1833m() {
        this.f39360m.m1911b();
        this.f39352e.m1827a();
        C8898b.m2397f().m2394i("Initialization marker file was created.");
    }

    /* renamed from: n */
    public boolean m1832n(C9075a c9075a, AbstractC9136d abstractC9136d) {
        if (m1836j(c9075a.f39268b, CommonUtils.m1964k(this.f39348a, "com.crashlytics.RequireBuildId", true))) {
            try {
                C9064i c9064i = new C9064i(this.f39348a);
                this.f39353f = new C9113l("crash_marker", c9064i);
                this.f39352e = new C9113l("initialization_marker", c9064i);
                C9082d0 c9082d0 = new C9082d0();
                C9112e c9112e = new C9112e(c9064i);
                C8913b c8913b = new C8913b(this.f39348a, c9112e);
                this.f39355h = new C9095i(this.f39348a, this.f39360m, this.f39356i, this.f39350c, c9064i, this.f39353f, c9075a, c9082d0, c8913b, c9112e, C9078b0.m1945b(this.f39348a, this.f39356i, c9064i, c9075a, c8913b, c9082d0, new C9068a(1024, new C9070c(10)), abstractC9136d), this.f39361n, this.f39358k);
                boolean m1841e = m1841e();
                m1842d();
                this.f39355h.m1864s(Thread.getDefaultUncaughtExceptionHandler(), abstractC9136d);
                if (!m1841e || !CommonUtils.m1972c(this.f39348a)) {
                    C8898b.m2397f().m2401b("Successfully configured exception handler.");
                    return true;
                }
                C8898b.m2397f().m2401b("Crashlytics did not finish previous background initialization. Initializing synchronously.");
                m1838h(abstractC9136d);
                return false;
            } catch (Exception e) {
                C8898b.m2397f().m2398e("Crashlytics was not started due to an exception during initialization", e);
                this.f39355h = null;
                return false;
            }
        }
        throw new IllegalStateException("The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app's build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account.");
    }
}
