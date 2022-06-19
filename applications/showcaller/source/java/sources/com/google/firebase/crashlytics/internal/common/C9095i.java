package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import com.google.android.gms.tasks.AbstractC7964f;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7968h;
import com.google.android.gms.tasks.C7970j;
import com.google.firebase.crashlytics.internal.common.C9116o;
import com.google.firebase.crashlytics.internal.settings.AbstractC9136d;
import com.google.firebase.crashlytics.internal.settings.p304h.C9140a;
import com.google.firebase.crashlytics.p293d.AbstractC8897a;
import com.google.firebase.crashlytics.p293d.AbstractC8902d;
import com.google.firebase.crashlytics.p293d.C8898b;
import com.google.firebase.crashlytics.p293d.p294e.AbstractC8903a;
import com.google.firebase.crashlytics.p293d.p296g.C8913b;
import com.google.firebase.crashlytics.p293d.p300j.AbstractC9063h;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.firebase.crashlytics.internal.common.i */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/i.class */
public class C9095i {

    /* renamed from: a */
    static final FilenameFilter f39306a = C9094h.m1903a();

    /* renamed from: b */
    private final Context f39307b;

    /* renamed from: c */
    private final C9119q f39308c;

    /* renamed from: d */
    private final C9113l f39309d;

    /* renamed from: e */
    private final C9082d0 f39310e;

    /* renamed from: f */
    private final C9090g f39311f;

    /* renamed from: g */
    private final C9125t f39312g;

    /* renamed from: h */
    private final AbstractC9063h f39313h;

    /* renamed from: i */
    private final C9075a f39314i;

    /* renamed from: j */
    private final C8913b.AbstractC8915b f39315j;

    /* renamed from: k */
    private final C8913b f39316k;

    /* renamed from: l */
    private final AbstractC8897a f39317l;

    /* renamed from: m */
    private final String f39318m;

    /* renamed from: n */
    private final AbstractC8903a f39319n;

    /* renamed from: o */
    private final C9078b0 f39320o;

    /* renamed from: p */
    private C9116o f39321p;

    /* renamed from: q */
    final C7968h<Boolean> f39322q = new C7968h<>();

    /* renamed from: r */
    final C7968h<Boolean> f39323r = new C7968h<>();

    /* renamed from: s */
    final C7968h<Void> f39324s = new C7968h<>();

    /* renamed from: t */
    final AtomicBoolean f39325t = new AtomicBoolean(false);

    /* renamed from: com.google.firebase.crashlytics.internal.common.i$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/i$a.class */
    public class CallableC9096a implements Callable<Void> {

        /* renamed from: a */
        final /* synthetic */ long f39326a;

        CallableC9096a(long j) {
            C9095i.this = r5;
            this.f39326a = j;
        }

        /* renamed from: a */
        public Void call() {
            Bundle bundle = new Bundle();
            bundle.putInt("fatal", 1);
            bundle.putLong("timestamp", this.f39326a);
            C9095i.this.f39319n.mo2374a("_ae", bundle);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.crashlytics.internal.common.i$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/i$b.class */
    public class C9097b implements C9116o.AbstractC9117a {
        C9097b() {
            C9095i.this = r4;
        }

        @Override // com.google.firebase.crashlytics.internal.common.C9116o.AbstractC9117a
        /* renamed from: a */
        public void mo1798a(AbstractC9136d abstractC9136d, Thread thread, Throwable th) {
            C9095i.this.m1898E(abstractC9136d, thread, th);
        }
    }

    /* renamed from: com.google.firebase.crashlytics.internal.common.i$c */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/i$c.class */
    public class CallableC9098c implements Callable<AbstractC7966g<Void>> {

        /* renamed from: a */
        final /* synthetic */ Date f39329a;

        /* renamed from: b */
        final /* synthetic */ Throwable f39330b;

        /* renamed from: c */
        final /* synthetic */ Thread f39331c;

        /* renamed from: d */
        final /* synthetic */ AbstractC9136d f39332d;

        /* renamed from: com.google.firebase.crashlytics.internal.common.i$c$a */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/i$c$a.class */
        public class C9099a implements AbstractC7964f<C9140a, Void> {

            /* renamed from: a */
            final /* synthetic */ Executor f39334a;

            C9099a(Executor executor) {
                CallableC9098c.this = r4;
                this.f39334a = executor;
            }

            /* renamed from: b */
            public AbstractC7966g<Void> mo1607a(C9140a c9140a) {
                if (c9140a == null) {
                    C8898b.m2397f().m2392k("Received null app settings, cannot send reports at crash time.");
                    return C7970j.m5798e(null);
                }
                return C7970j.m5796g(C9095i.this.m1891L(), C9095i.this.f39320o.m1933n(this.f39334a));
            }
        }

        CallableC9098c(Date date, Throwable th, Thread thread, AbstractC9136d abstractC9136d) {
            C9095i.this = r4;
            this.f39329a = date;
            this.f39330b = th;
            this.f39331c = thread;
            this.f39332d = abstractC9136d;
        }

        /* renamed from: a */
        public AbstractC7966g<Void> call() {
            long m1899D = C9095i.m1899D(this.f39329a);
            String m1858y = C9095i.this.m1858y();
            if (m1858y == null) {
                C8898b.m2397f().m2399d("Tried to write a fatal exception while no session was open.");
                return C7970j.m5798e(null);
            }
            C9095i.this.f39309d.m1827a();
            C9095i.this.f39320o.m1935l(this.f39330b, this.f39331c, m1858y, m1899D);
            C9095i.this.m1865r(this.f39329a.getTime());
            C9095i.this.m1868o();
            C9095i.this.m1866q();
            if (!C9095i.this.f39308c.m1793d()) {
                return C7970j.m5798e(null);
            }
            Executor m1910c = C9095i.this.f39311f.m1910c();
            return this.f39332d.mo1736a().mo5808s(m1910c, new C9099a(m1910c));
        }
    }

    /* renamed from: com.google.firebase.crashlytics.internal.common.i$d */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/i$d.class */
    public class C9100d implements AbstractC7964f<Void, Boolean> {
        C9100d() {
            C9095i.this = r4;
        }

        /* renamed from: b */
        public AbstractC7966g<Boolean> mo1607a(Void r3) {
            return C7970j.m5798e(Boolean.TRUE);
        }
    }

    /* renamed from: com.google.firebase.crashlytics.internal.common.i$e */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/i$e.class */
    public class C9101e implements AbstractC7964f<Boolean, Void> {

        /* renamed from: a */
        final /* synthetic */ AbstractC7966g f39337a;

        /* renamed from: com.google.firebase.crashlytics.internal.common.i$e$a */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/i$e$a.class */
        public class CallableC9102a implements Callable<AbstractC7966g<Void>> {

            /* renamed from: a */
            final /* synthetic */ Boolean f39339a;

            /* renamed from: com.google.firebase.crashlytics.internal.common.i$e$a$a */
            /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/i$e$a$a.class */
            public class C9103a implements AbstractC7964f<C9140a, Void> {

                /* renamed from: a */
                final /* synthetic */ Executor f39341a;

                C9103a(Executor executor) {
                    CallableC9102a.this = r4;
                    this.f39341a = executor;
                }

                /* renamed from: b */
                public AbstractC7966g<Void> mo1607a(C9140a c9140a) {
                    if (c9140a == null) {
                        C8898b.m2397f().m2392k("Received null app settings at app startup. Cannot send cached reports");
                        return C7970j.m5798e(null);
                    }
                    C9095i.this.m1891L();
                    C9095i.this.f39320o.m1933n(this.f39341a);
                    C9095i.this.f39324s.m5803e(null);
                    return C7970j.m5798e(null);
                }
            }

            CallableC9102a(Boolean bool) {
                C9101e.this = r4;
                this.f39339a = bool;
            }

            /* renamed from: a */
            public AbstractC7966g<Void> call() {
                if (!this.f39339a.booleanValue()) {
                    C8898b.m2397f().m2394i("Deleting cached crash reports...");
                    C9095i.m1870m(C9095i.this.m1895H());
                    C9095i.this.f39320o.m1934m();
                    C9095i.this.f39324s.m5803e(null);
                    return C7970j.m5798e(null);
                }
                C8898b.m2397f().m2401b("Sending cached crash reports...");
                C9095i.this.f39308c.m1794c(this.f39339a.booleanValue());
                Executor m1910c = C9095i.this.f39311f.m1910c();
                return C9101e.this.f39337a.mo5808s(m1910c, new C9103a(m1910c));
            }
        }

        C9101e(AbstractC7966g abstractC7966g) {
            C9095i.this = r4;
            this.f39337a = abstractC7966g;
        }

        /* renamed from: b */
        public AbstractC7966g<Void> mo1607a(Boolean bool) {
            return C9095i.this.f39311f.m1905h(new CallableC9102a(bool));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.crashlytics.internal.common.i$f */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/i$f.class */
    public class CallableC9104f implements Callable<Void> {

        /* renamed from: a */
        final /* synthetic */ long f39343a;

        /* renamed from: b */
        final /* synthetic */ String f39344b;

        CallableC9104f(long j, String str) {
            C9095i.this = r5;
            this.f39343a = j;
            this.f39344b = str;
        }

        /* renamed from: a */
        public Void call() {
            if (!C9095i.this.m1897F()) {
                C9095i.this.f39316k.m2366g(this.f39343a, this.f39344b);
                return null;
            }
            return null;
        }
    }

    /* renamed from: com.google.firebase.crashlytics.internal.common.i$g */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/i$g.class */
    public class CallableC9105g implements Callable<Void> {
        CallableC9105g() {
            C9095i.this = r4;
        }

        /* renamed from: a */
        public Void call() {
            C9095i.this.m1866q();
            return null;
        }
    }

    public C9095i(Context context, C9090g c9090g, C9125t c9125t, C9119q c9119q, AbstractC9063h abstractC9063h, C9113l c9113l, C9075a c9075a, C9082d0 c9082d0, C8913b c8913b, C8913b.AbstractC8915b abstractC8915b, C9078b0 c9078b0, AbstractC8897a abstractC8897a, AbstractC8903a abstractC8903a) {
        this.f39307b = context;
        this.f39311f = c9090g;
        this.f39312g = c9125t;
        this.f39308c = c9119q;
        this.f39313h = abstractC9063h;
        this.f39309d = c9113l;
        this.f39314i = c9075a;
        this.f39310e = c9082d0;
        this.f39316k = c8913b;
        this.f39315j = abstractC8915b;
        this.f39317l = abstractC8897a;
        this.f39318m = c9075a.f39273g.mo1978a();
        this.f39319n = abstractC8903a;
        this.f39320o = c9078b0;
    }

    /* renamed from: B */
    static List<AbstractC9129x> m1901B(AbstractC8902d abstractC8902d, String str, File file, byte[] bArr) {
        C9128w c9128w = new C9128w(file);
        File m1768b = c9128w.m1768b(str);
        File m1769a = c9128w.m1769a(str);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C9083e("logs_file", "logs", bArr));
        arrayList.add(new C9124s("crash_meta_file", "metadata", abstractC8902d.mo2377f()));
        arrayList.add(new C9124s("session_meta_file", "session", abstractC8902d.mo2378e()));
        arrayList.add(new C9124s("app_meta_file", "app", abstractC8902d.mo2382a()));
        arrayList.add(new C9124s("device_meta_file", "device", abstractC8902d.mo2380c()));
        arrayList.add(new C9124s("os_meta_file", "os", abstractC8902d.mo2381b()));
        arrayList.add(new C9124s("minidump_file", "minidump", abstractC8902d.mo2379d()));
        arrayList.add(new C9124s("user_meta_file", "user", m1768b));
        arrayList.add(new C9124s("keys_file", "keys", m1769a));
        return arrayList;
    }

    /* renamed from: D */
    public static long m1899D(Date date) {
        return date.getTime() / 1000;
    }

    /* renamed from: I */
    private static File[] m1894I(File file, FilenameFilter filenameFilter) {
        return m1863t(file.listFiles(filenameFilter));
    }

    /* renamed from: J */
    private File[] m1893J(FilenameFilter filenameFilter) {
        return m1894I(m1902A(), filenameFilter);
    }

    /* renamed from: K */
    private AbstractC7966g<Void> m1892K(long j) {
        if (m1860w()) {
            C8898b.m2397f().m2392k("Skipping logging Crashlytics event to Firebase, FirebaseCrash exists");
            return C7970j.m5798e(null);
        }
        C8898b.m2397f().m2401b("Logging app exception event to Firebase Analytics");
        return C7970j.m5800c(new ScheduledThreadPoolExecutor(1), new CallableC9096a(j));
    }

    /* renamed from: L */
    public AbstractC7966g<Void> m1891L() {
        File[] m1895H;
        ArrayList arrayList = new ArrayList();
        for (File file : m1895H()) {
            try {
                arrayList.add(m1892K(Long.parseLong(file.getName().substring(3))));
            } catch (NumberFormatException e) {
                C8898b.m2397f().m2392k("Could not parse app exception timestamp from file " + file.getName());
            }
            file.delete();
        }
        return C7970j.m5797f(arrayList);
    }

    /* renamed from: O */
    private AbstractC7966g<Boolean> m1888O() {
        if (this.f39308c.m1793d()) {
            C8898b.m2397f().m2401b("Automatic data collection is enabled. Allowing upload.");
            this.f39322q.m5803e(Boolean.FALSE);
            return C7970j.m5798e(Boolean.TRUE);
        }
        C8898b.m2397f().m2401b("Automatic data collection is disabled.");
        C8898b.m2397f().m2394i("Notifying that unsent reports are available.");
        this.f39322q.m5803e(Boolean.TRUE);
        AbstractC7966g<TContinuationResult> mo5809r = this.f39308c.m1790g().mo5809r(new C9100d());
        C8898b.m2397f().m2401b("Waiting for send/deleteUnsentReports to be called.");
        return C9086f0.m1915d(mo5809r, this.f39323r.m5807a());
    }

    /* renamed from: P */
    private void m1887P(String str, long j) {
        this.f39317l.mo2387d(str, String.format(Locale.US, "Crashlytics Android SDK/%s", C9107k.m1837i()), j);
    }

    /* renamed from: Q */
    private void m1886Q(String str) {
        String m1779d = this.f39312g.m1779d();
        C9075a c9075a = this.f39314i;
        this.f39317l.mo2385f(str, m1779d, c9075a.f39271e, c9075a.f39272f, this.f39312g.mo1772a(), DeliveryMechanism.determineFrom(this.f39314i.f39269c).getId(), this.f39318m);
    }

    /* renamed from: R */
    private void m1885R(String str) {
        Context m1859x = m1859x();
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        int m1963l = CommonUtils.m1963l();
        String str2 = Build.MODEL;
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        long m1955t = CommonUtils.m1955t();
        long blockCount = statFs.getBlockCount();
        this.f39317l.mo2388c(str, m1963l, str2, availableProcessors, m1955t, statFs.getBlockSize() * blockCount, CommonUtils.m1950y(m1859x), CommonUtils.m1962m(m1859x), Build.MANUFACTURER, Build.PRODUCT);
    }

    /* renamed from: S */
    private void m1884S(String str) {
        this.f39317l.mo2384g(str, Build.VERSION.RELEASE, Build.VERSION.CODENAME, CommonUtils.m1949z(m1859x()));
    }

    /* renamed from: m */
    public static void m1870m(File[] fileArr) {
        if (fileArr == null) {
            return;
        }
        for (File file : fileArr) {
            file.delete();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: p */
    private void m1867p(boolean z) {
        List<String> m1939h = this.f39320o.m1939h();
        if (m1939h.size() <= z) {
            C8898b.m2397f().m2394i("No open sessions to be closed.");
            return;
        }
        String str = m1939h.get(z ? 1 : 0);
        if (this.f39317l.mo2386e(str)) {
            m1862u(str);
            if (!this.f39317l.mo2390a(str)) {
                C8898b.m2397f().m2392k("Could not finalize native session: " + str);
            }
        }
        String str2 = null;
        if (z != 0) {
            str2 = m1939h.get(0);
        }
        this.f39320o.m1943d(m1857z(), str2);
    }

    /* renamed from: q */
    public void m1866q() {
        long m1857z = m1857z();
        String c9085f = new C9085f(this.f39312g).toString();
        C8898b m2397f = C8898b.m2397f();
        m2397f.m2401b("Opening a new session with ID " + c9085f);
        this.f39317l.mo2383h(c9085f);
        m1887P(c9085f, m1857z);
        m1886Q(c9085f);
        m1884S(c9085f);
        m1885R(c9085f);
        this.f39316k.m2368e(c9085f);
        this.f39320o.m1938i(c9085f, m1857z);
    }

    /* renamed from: r */
    public void m1865r(long j) {
        try {
            File m1902A = m1902A();
            new File(m1902A, ".ae" + j).createNewFile();
        } catch (IOException e) {
            C8898b.m2397f().m2391l("Could not create app exception marker file.", e);
        }
    }

    /* renamed from: t */
    private static File[] m1863t(File[] fileArr) {
        File[] fileArr2 = fileArr;
        if (fileArr == null) {
            fileArr2 = new File[0];
        }
        return fileArr2;
    }

    /* renamed from: u */
    private void m1862u(String str) {
        C8898b m2397f = C8898b.m2397f();
        m2397f.m2394i("Finalizing native report for session " + str);
        AbstractC8902d mo2389b = this.f39317l.mo2389b(str);
        File mo2379d = mo2389b.mo2379d();
        if (mo2379d == null || !mo2379d.exists()) {
            C8898b m2397f2 = C8898b.m2397f();
            m2397f2.m2392k("No minidump data found for session " + str);
            return;
        }
        long lastModified = mo2379d.lastModified();
        C8913b c8913b = new C8913b(this.f39307b, this.f39315j, str);
        File file = new File(m1900C(), str);
        if (!file.mkdirs()) {
            C8898b.m2397f().m2392k("Couldn't create directory to store native session files, aborting.");
            return;
        }
        m1865r(lastModified);
        List<AbstractC9129x> m1901B = m1901B(mo2389b, str, m1902A(), c8913b.m2371b());
        C9130y.m1763b(file, m1901B);
        this.f39320o.m1944c(str, m1901B);
        c8913b.m2372a();
    }

    /* renamed from: w */
    private static boolean m1860w() {
        try {
            Class.forName("com.google.firebase.crash.FirebaseCrash");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* renamed from: x */
    private Context m1859x() {
        return this.f39307b;
    }

    /* renamed from: y */
    public String m1858y() {
        List<String> m1939h = this.f39320o.m1939h();
        return !m1939h.isEmpty() ? m1939h.get(0) : null;
    }

    /* renamed from: z */
    private static long m1857z() {
        return m1899D(new Date());
    }

    /* renamed from: A */
    File m1902A() {
        return this.f39313h.mo1991b();
    }

    /* renamed from: C */
    File m1900C() {
        return new File(m1902A(), "native-sessions");
    }

    /* renamed from: E */
    void m1898E(AbstractC9136d abstractC9136d, Thread thread, Throwable th) {
        synchronized (this) {
            C8898b m2397f = C8898b.m2397f();
            m2397f.m2401b("Handling uncaught exception \"" + th + "\" from thread " + thread.getName());
            try {
                C9086f0.m1918a(this.f39311f.m1905h(new CallableC9098c(new Date(), th, thread, abstractC9136d)));
            } catch (Exception e) {
                C8898b.m2397f().m2398e("Error handling uncaught exception", e);
            }
        }
    }

    /* renamed from: F */
    boolean m1897F() {
        C9116o c9116o = this.f39321p;
        return c9116o != null && c9116o.m1799a();
    }

    /* renamed from: H */
    File[] m1895H() {
        return m1893J(f39306a);
    }

    /* renamed from: M */
    void m1890M() {
        this.f39311f.m1906g(new CallableC9105g());
    }

    /* renamed from: N */
    public AbstractC7966g<Void> m1889N(AbstractC7966g<C9140a> abstractC7966g) {
        if (this.f39320o.m1941f()) {
            C8898b.m2397f().m2394i("Crash reports are available to be sent.");
            return m1888O().mo5809r(new C9101e(abstractC7966g));
        }
        C8898b.m2397f().m2394i("No crash reports are available to be sent.");
        this.f39322q.m5803e(Boolean.FALSE);
        return C7970j.m5798e(null);
    }

    /* renamed from: T */
    public void m1883T(long j, String str) {
        this.f39311f.m1906g(new CallableC9104f(j, str));
    }

    /* renamed from: n */
    public boolean m1869n() {
        boolean z = true;
        if (this.f39309d.m1825c()) {
            C8898b.m2397f().m2394i("Found previous crash marker.");
            this.f39309d.m1824d();
            return true;
        }
        String m1858y = m1858y();
        if (m1858y == null || !this.f39317l.mo2386e(m1858y)) {
            z = false;
        }
        return z;
    }

    /* renamed from: o */
    void m1868o() {
        m1867p(false);
    }

    /* renamed from: s */
    public void m1864s(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, AbstractC9136d abstractC9136d) {
        m1890M();
        C9116o c9116o = new C9116o(new C9097b(), abstractC9136d, uncaughtExceptionHandler);
        this.f39321p = c9116o;
        Thread.setDefaultUncaughtExceptionHandler(c9116o);
    }

    /* renamed from: v */
    public boolean m1861v() {
        this.f39311f.m1911b();
        if (m1897F()) {
            C8898b.m2397f().m2392k("Skipping session finalization because a crash has already occurred.");
            return false;
        }
        C8898b.m2397f().m2394i("Finalizing previously open sessions.");
        try {
            m1867p(true);
            C8898b.m2397f().m2394i("Closed all previously open sessions.");
            return true;
        } catch (Exception e) {
            C8898b.m2397f().m2398e("Unable to finalize previously open sessions.", e);
            return false;
        }
    }
}
