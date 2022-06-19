package com.google.firebase.installations;

import android.text.TextUtils;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7968h;
import com.google.android.gms.tasks.C7970j;
import com.google.firebase.C8849c;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.installations.FirebaseInstallationsException;
import com.google.firebase.installations.local.AbstractC9225c;
import com.google.firebase.installations.local.C9224b;
import com.google.firebase.installations.local.PersistedInstallation;
import com.google.firebase.installations.p310o.AbstractC9229a;
import com.google.firebase.installations.remote.C9240c;
import com.google.firebase.installations.remote.InstallationResponse;
import com.google.firebase.installations.remote.TokenResult;
import com.google.firebase.p313k.AbstractC9247b;
import com.google.firebase.p315m.AbstractC9258i;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.firebase.installations.f */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/f.class */
public class C9211f implements AbstractC9214g {

    /* renamed from: a */
    private static final Object f39592a = new Object();

    /* renamed from: b */
    private static final ThreadFactory f39593b = new ThreadFactoryC9212a();

    /* renamed from: c */
    private final C8849c f39594c;

    /* renamed from: d */
    private final C9240c f39595d;

    /* renamed from: e */
    private final PersistedInstallation f39596e;

    /* renamed from: f */
    private final C9228n f39597f;

    /* renamed from: g */
    private final C9224b f39598g;

    /* renamed from: h */
    private final C9220l f39599h;

    /* renamed from: i */
    private final Object f39600i;

    /* renamed from: j */
    private final ExecutorService f39601j;

    /* renamed from: k */
    private final ExecutorService f39602k;

    /* renamed from: l */
    private String f39603l;

    /* renamed from: m */
    private Set<AbstractC9229a> f39604m;

    /* renamed from: n */
    private final List<AbstractC9227m> f39605n;

    /* renamed from: com.google.firebase.installations.f$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/f$a.class */
    class ThreadFactoryC9212a implements ThreadFactory {

        /* renamed from: a */
        private final AtomicInteger f39606a = new AtomicInteger(1);

        ThreadFactoryC9212a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(this.f39606a.getAndIncrement())));
        }
    }

    /* renamed from: com.google.firebase.installations.f$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/f$b.class */
    public static /* synthetic */ class C9213b {

        /* renamed from: a */
        static final /* synthetic */ int[] f39607a;

        /* renamed from: b */
        static final /* synthetic */ int[] f39608b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x004a -> B:19:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004e -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0052 -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0056 -> B:21:0x003e). Please submit an issue!!! */
        static {
            int[] iArr = new int[TokenResult.ResponseCode.values().length];
            f39608b = iArr;
            try {
                iArr[TokenResult.ResponseCode.OK.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f39608b[TokenResult.ResponseCode.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f39608b[TokenResult.ResponseCode.AUTH_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[InstallationResponse.ResponseCode.values().length];
            f39607a = iArr2;
            try {
                iArr2[InstallationResponse.ResponseCode.OK.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f39607a[InstallationResponse.ResponseCode.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public C9211f(C8849c c8849c, AbstractC9247b<AbstractC9258i> abstractC9247b, AbstractC9247b<HeartBeatInfo> abstractC9247b2) {
        this(new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), f39593b), c8849c, new C9240c(c8849c.m2533g(), abstractC9247b, abstractC9247b2), new PersistedInstallation(c8849c), C9228n.m1474c(), new C9224b(c8849c), new C9220l());
    }

    C9211f(ExecutorService executorService, C8849c c8849c, C9240c c9240c, PersistedInstallation persistedInstallation, C9228n c9228n, C9224b c9224b, C9220l c9220l) {
        this.f39600i = new Object();
        this.f39604m = new HashSet();
        this.f39605n = new ArrayList();
        this.f39594c = c8849c;
        this.f39595d = c9240c;
        this.f39596e = persistedInstallation;
        this.f39597f = c9228n;
        this.f39598g = c9224b;
        this.f39599h = c9220l;
        this.f39601j = executorService;
        this.f39602k = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), f39593b);
    }

    /* renamed from: b */
    private AbstractC7966g<AbstractC9218k> m1556b() {
        C7968h c7968h = new C7968h();
        m1554d(new C9216i(this.f39597f, c7968h));
        return c7968h.m5807a();
    }

    /* renamed from: c */
    private AbstractC7966g<String> m1555c() {
        C7968h c7968h = new C7968h();
        m1554d(new C9217j(c7968h));
        return c7968h.m5807a();
    }

    /* renamed from: d */
    private void m1554d(AbstractC9227m abstractC9227m) {
        synchronized (this.f39600i) {
            this.f39605n.add(abstractC9227m);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006a  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m1553e(boolean r6) {
        /*
            r5 = this;
            r0 = r5
            com.google.firebase.installations.local.c r0 = r0.m1545m()
            r7 = r0
            r0 = r7
            boolean r0 = r0.m1498i()     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L87
            if (r0 != 0) goto L32
            r0 = r7
            boolean r0 = r0.m1495l()     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L87
            if (r0 == 0) goto L16
            goto L32
        L16:
            r0 = r6
            if (r0 != 0) goto L29
            r0 = r5
            com.google.firebase.installations.n r0 = r0.f39597f     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L87
            r1 = r7
            boolean r0 = r0.m1471f(r1)     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L87
            if (r0 == 0) goto L28
            goto L29
        L28:
            return
        L29:
            r0 = r5
            r1 = r7
            com.google.firebase.installations.local.c r0 = r0.m1551g(r1)     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L87
            r8 = r0
            goto L38
        L32:
            r0 = r5
            r1 = r7
            com.google.firebase.installations.local.c r0 = r0.m1536v(r1)     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L87
            r8 = r0
        L38:
            r0 = r5
            r1 = r8
            r0.m1542p(r1)
            r0 = r5
            r1 = r7
            r2 = r8
            r0.m1532z(r1, r2)
            r0 = r8
            boolean r0 = r0.m1496k()
            if (r0 == 0) goto L52
            r0 = r5
            r1 = r8
            java.lang.String r1 = r1.mo1503d()
            r0.m1533y(r1)
        L52:
            r0 = r8
            boolean r0 = r0.m1498i()
            if (r0 == 0) goto L6a
            r0 = r5
            com.google.firebase.installations.FirebaseInstallationsException r1 = new com.google.firebase.installations.FirebaseInstallationsException
            r2 = r1
            com.google.firebase.installations.FirebaseInstallationsException$Status r3 = com.google.firebase.installations.FirebaseInstallationsException.Status.BAD_CONFIG
            r2.<init>(r3)
            r0.m1535w(r1)
            goto L86
        L6a:
            r0 = r8
            boolean r0 = r0.m1497j()
            if (r0 == 0) goto L81
            r0 = r5
            java.io.IOException r1 = new java.io.IOException
            r2 = r1
            java.lang.String r3 = "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."
            r2.<init>(r3)
            r0.m1535w(r1)
            goto L86
        L81:
            r0 = r5
            r1 = r8
            r0.m1534x(r1)
        L86:
            return
        L87:
            r8 = move-exception
            r0 = r5
            r1 = r8
            r0.m1535w(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.installations.C9211f.m1553e(boolean):void");
    }

    /* renamed from: f */
    public final void m1552f(boolean z) {
        AbstractC9225c m1544n = m1544n();
        AbstractC9225c abstractC9225c = m1544n;
        if (z) {
            abstractC9225c = m1544n.m1491p();
        }
        m1534x(abstractC9225c);
        this.f39602k.execute(RunnableC9210e.m1557a(this, z));
    }

    /* renamed from: g */
    private AbstractC9225c m1551g(AbstractC9225c abstractC9225c) {
        TokenResult m1441e = this.f39595d.m1441e(m1550h(), abstractC9225c.mo1503d(), m1543o(), abstractC9225c.mo1501f());
        int i = C9213b.f39608b[m1441e.mo1452b().ordinal()];
        if (i != 1) {
            if (i == 2) {
                return abstractC9225c.m1490q("BAD CONFIG");
            }
            if (i != 3) {
                throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
            }
            m1533y(null);
            return abstractC9225c.m1489r();
        }
        return abstractC9225c.m1492o(m1441e.mo1451c(), m1441e.mo1450d(), this.f39597f.m1475b());
    }

    /* renamed from: j */
    private String m1548j() {
        String str;
        synchronized (this) {
            str = this.f39603l;
        }
        return str;
    }

    /* renamed from: k */
    public static C9211f m1547k() {
        return m1546l(C8849c.m2532h());
    }

    /* renamed from: l */
    public static C9211f m1546l(C8849c c8849c) {
        C6155o.m17026b(c8849c != null, "Null is not a valid value of FirebaseApp.");
        return (C9211f) c8849c.m2534f(AbstractC9214g.class);
    }

    /* renamed from: m */
    private AbstractC9225c m1545m() {
        AbstractC9225c m1516c;
        synchronized (f39592a) {
            C9207b m1561a = C9207b.m1561a(this.f39594c.m2533g(), "generatefid.lock");
            m1516c = this.f39596e.m1516c();
            if (m1561a != null) {
                m1561a.m1560b();
            }
        }
        return m1516c;
    }

    /* renamed from: n */
    private AbstractC9225c m1544n() {
        AbstractC9225c abstractC9225c;
        synchronized (f39592a) {
            C9207b m1561a = C9207b.m1561a(this.f39594c.m2533g(), "generatefid.lock");
            AbstractC9225c m1516c = this.f39596e.m1516c();
            abstractC9225c = m1516c;
            if (m1516c.m1497j()) {
                abstractC9225c = this.f39596e.m1518a(m1516c.m1487t(m1537u(m1516c)));
            }
            if (m1561a != null) {
                m1561a.m1560b();
            }
        }
        return abstractC9225c;
    }

    /* renamed from: p */
    private void m1542p(AbstractC9225c abstractC9225c) {
        synchronized (f39592a) {
            C9207b m1561a = C9207b.m1561a(this.f39594c.m2533g(), "generatefid.lock");
            this.f39596e.m1518a(abstractC9225c);
            if (m1561a != null) {
                m1561a.m1560b();
            }
        }
    }

    /* renamed from: t */
    private void m1538t() {
        C6155o.m17021g(m1549i(), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        C6155o.m17021g(m1543o(), "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        C6155o.m17021g(m1550h(), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        C6155o.m17026b(C9228n.m1469h(m1549i()), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        C6155o.m17026b(C9228n.m1470g(m1550h()), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    /* renamed from: u */
    private String m1537u(AbstractC9225c abstractC9225c) {
        if ((this.f39594c.m2531i().equals("CHIME_ANDROID_SDK") || this.f39594c.m2523q()) && abstractC9225c.m1494m()) {
            String m1510f = this.f39598g.m1510f();
            String str = m1510f;
            if (TextUtils.isEmpty(m1510f)) {
                str = this.f39599h.m1521a();
            }
            return str;
        }
        return this.f39599h.m1521a();
    }

    /* renamed from: v */
    private AbstractC9225c m1536v(AbstractC9225c abstractC9225c) {
        InstallationResponse m1442d = this.f39595d.m1442d(m1550h(), abstractC9225c.mo1503d(), m1543o(), m1549i(), (abstractC9225c.mo1503d() == null || abstractC9225c.mo1503d().length() != 11) ? null : this.f39598g.m1507i());
        int i = C9213b.f39607a[m1442d.mo1460e().ordinal()];
        if (i != 1) {
            if (i != 2) {
                throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
            }
            return abstractC9225c.m1490q("BAD CONFIG");
        }
        return abstractC9225c.m1488s(m1442d.mo1462c(), m1442d.mo1461d(), this.f39597f.m1475b(), m1442d.mo1463b().mo1451c(), m1442d.mo1463b().mo1450d());
    }

    /* renamed from: w */
    private void m1535w(Exception exc) {
        synchronized (this.f39600i) {
            Iterator<AbstractC9227m> it = this.f39605n.iterator();
            while (it.hasNext()) {
                if (it.next().mo1478a(exc)) {
                    it.remove();
                }
            }
        }
    }

    /* renamed from: x */
    private void m1534x(AbstractC9225c abstractC9225c) {
        synchronized (this.f39600i) {
            Iterator<AbstractC9227m> it = this.f39605n.iterator();
            while (it.hasNext()) {
                if (it.next().mo1477b(abstractC9225c)) {
                    it.remove();
                }
            }
        }
    }

    /* renamed from: y */
    private void m1533y(String str) {
        synchronized (this) {
            this.f39603l = str;
        }
    }

    /* renamed from: z */
    private void m1532z(AbstractC9225c abstractC9225c, AbstractC9225c abstractC9225c2) {
        synchronized (this) {
            if (this.f39604m.size() != 0 && !abstractC9225c.mo1503d().equals(abstractC9225c2.mo1503d())) {
                for (AbstractC9229a abstractC9229a : this.f39604m) {
                    abstractC9229a.m1468a(abstractC9225c2.mo1503d());
                }
            }
        }
    }

    @Override // com.google.firebase.installations.AbstractC9214g
    /* renamed from: a */
    public AbstractC7966g<AbstractC9218k> mo1531a(boolean z) {
        m1538t();
        AbstractC7966g<AbstractC9218k> m1556b = m1556b();
        this.f39601j.execute(RunnableC9209d.m1558a(this, z));
        return m1556b;
    }

    @Override // com.google.firebase.installations.AbstractC9214g
    public AbstractC7966g<String> getId() {
        m1538t();
        String m1548j = m1548j();
        if (m1548j != null) {
            return C7970j.m5798e(m1548j);
        }
        AbstractC7966g<String> m1555c = m1555c();
        this.f39601j.execute(RunnableC9208c.m1559a(this));
        return m1555c;
    }

    /* renamed from: h */
    String m1550h() {
        return this.f39594c.m2530j().m1661b();
    }

    /* renamed from: i */
    String m1549i() {
        return this.f39594c.m2530j().m1660c();
    }

    /* renamed from: o */
    String m1543o() {
        return this.f39594c.m2530j().m1658e();
    }
}
