package com.google.firebase.installations;

import android.text.TextUtils;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.tasks.AbstractC4469g;
import com.google.android.gms.tasks.C4470h;
import com.google.firebase.C4865b;
import com.google.firebase.installations.FirebaseInstallationsException;
import com.google.firebase.installations.p167a.AbstractC5010d;
import com.google.firebase.installations.p167a.C5007b;
import com.google.firebase.installations.p167a.C5008c;
import com.google.firebase.installations.p168b.AbstractC5020d;
import com.google.firebase.installations.p168b.AbstractC5023e;
import com.google.firebase.installations.p168b.C5019c;
import com.google.firebase.p162b.AbstractC4873c;
import com.google.firebase.p165e.AbstractC4935h;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.firebase.installations.c */
/* loaded from: classes-dex2jar.jar:com/google/firebase/installations/c.class */
public class C5026c implements AbstractC5033h {

    /* renamed from: k */
    private static final Object f21266k = new Object();

    /* renamed from: l */
    private static final ThreadFactory f21267l = new ThreadFactory() { // from class: com.google.firebase.installations.c.1

        /* renamed from: a */
        private final AtomicInteger f21278a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(this.f21278a.getAndIncrement())));
        }
    };

    /* renamed from: a */
    private final C4865b f21268a;

    /* renamed from: b */
    private final C5019c f21269b;

    /* renamed from: c */
    private final C5008c f21270c;

    /* renamed from: d */
    private final C5041o f21271d;

    /* renamed from: e */
    private final C5007b f21272e;

    /* renamed from: f */
    private final C5039m f21273f;

    /* renamed from: g */
    private final Object f21274g;

    /* renamed from: h */
    private final ExecutorService f21275h;

    /* renamed from: i */
    private final ExecutorService f21276i;

    /* renamed from: j */
    private final List<AbstractC5040n> f21277j;

    /* renamed from: com.google.firebase.installations.c$2 */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/installations/c$2.class */
    public static /* synthetic */ class C50282 {

        /* renamed from: a */
        static final /* synthetic */ int[] f21279a;

        /* renamed from: b */
        static final /* synthetic */ int[] f21280b = new int[AbstractC5023e.EnumC5025b.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004e -> B:21:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0052 -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0056 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005a -> B:25:0x0014). Please submit an issue!!! */
        static {
            try {
                f21280b[AbstractC5023e.EnumC5025b.OK.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f21280b[AbstractC5023e.EnumC5025b.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f21280b[AbstractC5023e.EnumC5025b.AUTH_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            f21279a = new int[AbstractC5020d.EnumC5022b.values().length];
            try {
                f21279a[AbstractC5020d.EnumC5022b.OK.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f21279a[AbstractC5020d.EnumC5022b.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public C5026c(C4865b c4865b, AbstractC4935h abstractC4935h, AbstractC4873c abstractC4873c) {
        this(new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), f21267l), c4865b, new C5019c(c4865b.m2160a(), abstractC4935h, abstractC4873c), new C5008c(c4865b), new C5041o(), new C5007b(c4865b), new C5039m());
    }

    C5026c(ExecutorService executorService, C4865b c4865b, C5019c c5019c, C5008c c5008c, C5041o c5041o, C5007b c5007b, C5039m c5039m) {
        this.f21274g = new Object();
        this.f21277j = new ArrayList();
        this.f21268a = c4865b;
        this.f21269b = c5019c;
        this.f21270c = c5008c;
        this.f21271d = c5041o;
        this.f21272e = c5007b;
        this.f21273f = c5039m;
        this.f21275h = executorService;
        this.f21276i = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), f21267l);
    }

    /* renamed from: a */
    private void m1806a(AbstractC5010d abstractC5010d) {
        synchronized (this.f21274g) {
            Iterator<AbstractC5040n> it = this.f21277j.iterator();
            while (it.hasNext()) {
                if (it.next().mo1767a(abstractC5010d)) {
                    it.remove();
                }
            }
        }
    }

    /* renamed from: a */
    private void m1805a(AbstractC5010d abstractC5010d, Exception exc) {
        synchronized (this.f21274g) {
            Iterator<AbstractC5040n> it = this.f21277j.iterator();
            while (it.hasNext()) {
                if (it.next().mo1766a(abstractC5010d, exc)) {
                    it.remove();
                }
            }
        }
    }

    /* renamed from: b */
    private String m1801b(AbstractC5010d abstractC5010d) {
        String str;
        if ((this.f21268a.m2150b().equals("CHIME_ANDROID_SDK") || this.f21268a.m2145f()) && abstractC5010d.m1852m()) {
            String m1875b = this.f21272e.m1875b();
            str = m1875b;
            if (TextUtils.isEmpty(m1875b)) {
                str = this.f21273f.m1770a();
            }
        } else {
            str = this.f21273f.m1770a();
        }
        return str;
    }

    /* renamed from: b */
    private final void m1799b(boolean z) {
        AbstractC5010d m1787k = m1787k();
        AbstractC5010d abstractC5010d = m1787k;
        if (z) {
            abstractC5010d = m1787k.m1850o();
        }
        m1806a(abstractC5010d);
        this.f21276i.execute(RunnableC5032g.m1783a(this, z));
    }

    /* renamed from: c */
    private AbstractC5010d m1797c(AbstractC5010d abstractC5010d) {
        AbstractC5010d m1863b;
        String str = null;
        if (abstractC5010d.mo1868a().length() == 11) {
            str = this.f21272e.m1880a();
        }
        AbstractC5020d m1834a = this.f21269b.m1834a(m1798c(), abstractC5010d.mo1868a(), m1807a(), m1802b(), str);
        switch (C50282.f21279a[m1834a.mo1823e().ordinal()]) {
            case 1:
                m1863b = abstractC5010d.m1865a(m1834a.mo1826b(), m1834a.mo1825c(), this.f21271d.m1765a(), m1834a.mo1824d().mo1815a(), m1834a.mo1824d().mo1814b());
                break;
            case 2:
                m1863b = abstractC5010d.m1863b("BAD CONFIG");
                break;
            default:
                throw new IOException();
        }
        return m1863b;
    }

    /* renamed from: c */
    public void m1795c(boolean z) {
        AbstractC5010d abstractC5010d;
        AbstractC5010d m1787k = m1787k();
        try {
            if (m1787k.m1855j() || m1787k.m1854k()) {
                abstractC5010d = m1797c(m1787k);
            } else if (!z && !this.f21271d.m1764a(m1787k)) {
                return;
            } else {
                abstractC5010d = m1794d(m1787k);
            }
            this.f21270c.m1870a(abstractC5010d);
            if (abstractC5010d.m1855j()) {
                m1805a(abstractC5010d, new FirebaseInstallationsException(FirebaseInstallationsException.EnumC5000a.BAD_CONFIG));
            } else if (abstractC5010d.m1853l()) {
                m1805a(abstractC5010d, new IOException("cleared fid due to auth error"));
            } else {
                m1806a(abstractC5010d);
            }
        } catch (IOException e) {
            m1805a(m1787k, e);
        }
    }

    /* renamed from: d */
    private AbstractC5010d m1794d(AbstractC5010d abstractC5010d) {
        AbstractC5010d m1851n;
        AbstractC5023e m1835a = this.f21269b.m1835a(m1798c(), abstractC5010d.mo1868a(), m1807a(), abstractC5010d.mo1861d());
        switch (C50282.f21280b[m1835a.mo1813c().ordinal()]) {
            case 1:
                m1851n = abstractC5010d.m1866a(m1835a.mo1815a(), m1835a.mo1814b(), this.f21271d.m1765a());
                break;
            case 2:
                m1851n = abstractC5010d.m1863b("BAD CONFIG");
                break;
            case 3:
                m1851n = abstractC5010d.m1851n();
                break;
            default:
                throw new IOException();
        }
        return m1851n;
    }

    /* renamed from: e */
    private void m1793e() {
        C2662s.m13979a(m1802b());
        C2662s.m13979a(m1807a());
        C2662s.m13979a(m1798c());
    }

    /* renamed from: f */
    private AbstractC4469g<String> m1792f() {
        C4470h c4470h = new C4470h();
        C5036k c5036k = new C5036k(c4470h);
        synchronized (this.f21274g) {
            this.f21277j.add(c5036k);
        }
        return c4470h.m3889a();
    }

    /* renamed from: g */
    private AbstractC4469g<AbstractC5037l> m1791g() {
        C4470h c4470h = new C4470h();
        C5035j c5035j = new C5035j(this.f21271d, c4470h);
        synchronized (this.f21274g) {
            this.f21277j.add(c5035j);
        }
        return c4470h.m3889a();
    }

    /* renamed from: h */
    public final void m1790h() {
        m1799b(false);
    }

    /* renamed from: i */
    public final void m1789i() {
        m1799b(false);
    }

    /* renamed from: j */
    public final void m1788j() {
        m1799b(true);
    }

    /* renamed from: k */
    private AbstractC5010d m1787k() {
        AbstractC5010d abstractC5010d;
        synchronized (f21266k) {
            C5012b m1839a = C5012b.m1839a(this.f21268a.m2160a(), "generatefid.lock");
            AbstractC5010d m1871a = this.f21270c.m1871a();
            abstractC5010d = m1871a;
            if (m1871a.m1853l()) {
                abstractC5010d = this.f21270c.m1870a(m1871a.m1867a(m1801b(m1871a)));
            }
            if (m1839a != null) {
                m1839a.m1840a();
            }
        }
        return abstractC5010d;
    }

    @Override // com.google.firebase.installations.AbstractC5033h
    /* renamed from: a */
    public AbstractC4469g<AbstractC5037l> mo1782a(boolean z) {
        m1793e();
        AbstractC4469g<AbstractC5037l> m1791g = m1791g();
        if (z) {
            this.f21275h.execute(RunnableC5030e.m1785a(this));
        } else {
            this.f21275h.execute(RunnableC5031f.m1784a(this));
        }
        return m1791g;
    }

    /* renamed from: a */
    String m1807a() {
        return TextUtils.isEmpty(this.f21268a.m2148c().m2046d()) ? this.f21268a.m2148c().m2047c() : this.f21268a.m2148c().m2046d();
    }

    /* renamed from: b */
    String m1802b() {
        return this.f21268a.m2148c().m2048b();
    }

    /* renamed from: c */
    String m1798c() {
        return this.f21268a.m2148c().m2050a();
    }

    @Override // com.google.firebase.installations.AbstractC5033h
    /* renamed from: d */
    public AbstractC4469g<String> mo1781d() {
        m1793e();
        AbstractC4469g<String> m1792f = m1792f();
        this.f21275h.execute(RunnableC5029d.m1786a(this));
        return m1792f;
    }
}
