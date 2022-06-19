package com.google.firebase.installations;

import android.text.TextUtils;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14186i;
import com.google.android.gms.tasks.C14188k;
import com.google.firebase.C15601b;
import com.google.firebase.installations.FirebaseInstallationsException;
import com.google.firebase.installations.p396a.AbstractC15796d;
import com.google.firebase.installations.p396a.C15793b;
import com.google.firebase.installations.p396a.C15794c;
import com.google.firebase.installations.p397b.AbstractC15806d;
import com.google.firebase.installations.p397b.AbstractC15810f;
import com.google.firebase.installations.p397b.C15805c;
import com.google.firebase.p390c.AbstractC15616f;
import com.google.firebase.p391d.AbstractC15728b;
import com.google.firebase.p394f.AbstractC15754i;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
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
/* renamed from: com.google.firebase.installations.c */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/c.class */
public final class C15813c implements AbstractC15822h {

    /* renamed from: m */
    private static final Object f56232m = new Object();

    /* renamed from: n */
    private static final ThreadFactory f56233n = new ThreadFactory() { // from class: com.google.firebase.installations.c.1

        /* renamed from: a */
        private final AtomicInteger f56246a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(this.f56246a.getAndIncrement())));
        }
    };

    /* renamed from: a */
    private final C15601b f56234a;

    /* renamed from: b */
    private final C15805c f56235b;

    /* renamed from: c */
    private final C15794c f56236c;

    /* renamed from: d */
    private final C15830o f56237d;

    /* renamed from: e */
    private final C15793b f56238e;

    /* renamed from: f */
    private final C15828m f56239f;

    /* renamed from: g */
    private final Object f56240g;

    /* renamed from: h */
    private final ExecutorService f56241h;

    /* renamed from: i */
    private final ExecutorService f56242i;

    /* renamed from: j */
    private String f56243j;

    /* renamed from: k */
    private Set<Object> f56244k;

    /* renamed from: l */
    private final List<AbstractC15829n> f56245l;

    /* renamed from: com.google.firebase.installations.c$2 */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/c$2.class */
    public static final /* synthetic */ class C158152 {

        /* renamed from: a */
        static final /* synthetic */ int[] f56247a;

        /* renamed from: b */
        static final /* synthetic */ int[] f56248b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x004a -> B:19:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004e -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0052 -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0056 -> B:21:0x003e). Please submit an issue!!! */
        static {
            int[] iArr = new int[AbstractC15810f.EnumC15812b.values().length];
            f56248b = iArr;
            try {
                iArr[AbstractC15810f.EnumC15812b.OK.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f56248b[AbstractC15810f.EnumC15812b.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f56248b[AbstractC15810f.EnumC15812b.AUTH_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[AbstractC15806d.EnumC15808b.values().length];
            f56247a = iArr2;
            try {
                iArr2[AbstractC15806d.EnumC15808b.OK.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f56247a[AbstractC15806d.EnumC15808b.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public C15813c(C15601b c15601b, AbstractC15728b<AbstractC15754i> abstractC15728b, AbstractC15728b<AbstractC15616f> abstractC15728b2) {
        this(new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), f56233n), c15601b, new C15805c(c15601b.m8583a(), abstractC15728b, abstractC15728b2), new C15794c(c15601b), C15830o.m8272a(), new C15793b(c15601b), new C15828m());
    }

    C15813c(ExecutorService executorService, C15601b c15601b, C15805c c15805c, C15794c c15794c, C15830o c15830o, C15793b c15793b, C15828m c15828m) {
        this.f56240g = new Object();
        this.f56244k = new HashSet();
        this.f56245l = new ArrayList();
        this.f56234a = c15601b;
        this.f56235b = c15805c;
        this.f56236c = c15794c;
        this.f56237d = c15830o;
        this.f56238e = c15793b;
        this.f56239f = c15828m;
        this.f56241h = executorService;
        this.f56242i = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), f56233n);
    }

    /* renamed from: a */
    public static C15813c m8313a() {
        return m8312a(C15601b.m8573d());
    }

    /* renamed from: a */
    public static C15813c m8312a(C15601b c15601b) {
        C12045o.m19153b(c15601b != null, "Null is not a valid value of FirebaseApp.");
        return (C15813c) c15601b.m8577a(AbstractC15822h.class);
    }

    /* renamed from: a */
    private void m8311a(AbstractC15796d abstractC15796d) {
        synchronized (this.f56240g) {
            Iterator<AbstractC15829n> it2 = this.f56245l.iterator();
            while (it2.hasNext()) {
                if (it2.next().mo8274a(abstractC15796d)) {
                    it2.remove();
                }
            }
        }
    }

    /* renamed from: a */
    private void m8310a(AbstractC15796d abstractC15796d, AbstractC15796d abstractC15796d2) {
        synchronized (this) {
            if (this.f56244k.size() != 0 && !abstractC15796d.mo8377a().equals(abstractC15796d2.mo8377a())) {
                Iterator<Object> it2 = this.f56244k.iterator();
                while (it2.hasNext()) {
                    it2.next();
                    abstractC15796d2.mo8377a();
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01c2  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void m8308a(com.google.firebase.installations.C15813c r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.installations.C15813c.m8308a(com.google.firebase.installations.c, boolean):void");
    }

    /* renamed from: a */
    private void m8307a(AbstractC15829n abstractC15829n) {
        synchronized (this.f56240g) {
            this.f56245l.add(abstractC15829n);
        }
    }

    /* renamed from: a */
    private void m8306a(Exception exc) {
        synchronized (this.f56240g) {
            Iterator<AbstractC15829n> it2 = this.f56245l.iterator();
            while (it2.hasNext()) {
                if (it2.next().mo8273a(exc)) {
                    it2.remove();
                }
            }
        }
    }

    /* renamed from: a */
    private void m8305a(String str) {
        synchronized (this) {
            this.f56243j = str;
        }
    }

    /* renamed from: a */
    public final void m8304a(boolean z) {
        AbstractC15796d m8294k = m8294k();
        AbstractC15796d abstractC15796d = m8294k;
        if (z) {
            abstractC15796d = m8294k.mo8369h().mo8357b((String) null).mo8362a();
        }
        m8311a(abstractC15796d);
        this.f56242i.execute(RunnableC15821g.m8287a(this, z));
    }

    /* renamed from: b */
    private void m8303b(AbstractC15796d abstractC15796d) {
        synchronized (f56232m) {
            C15798b m8353a = C15798b.m8353a(this.f56234a.m8583a(), "generatefid.lock");
            this.f56236c.m8379a(abstractC15796d);
            if (m8353a != null) {
                m8353a.m8354a();
            }
        }
    }

    /* renamed from: e */
    private void m8300e() {
        C12045o.m19159a(m8298g(), (Object) "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        C12045o.m19159a(m8299f(), (Object) "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        C12045o.m19159a(m8297h(), (Object) "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        C12045o.m19153b(C15830o.m8270a(m8298g()), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        C12045o.m19153b(C15830o.m8268b(m8297h()), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    /* renamed from: f */
    private String m8299f() {
        return this.f56234a.m8574c().f56102d;
    }

    /* renamed from: g */
    private String m8298g() {
        return this.f56234a.m8574c().f56100b;
    }

    /* renamed from: h */
    private String m8297h() {
        return this.f56234a.m8574c().f56099a;
    }

    /* renamed from: i */
    private AbstractC14185h<String> m8296i() {
        C14186i c14186i = new C14186i();
        m8307a(new C15825k(c14186i));
        return c14186i.m11473a();
    }

    /* renamed from: j */
    private String m8295j() {
        String str;
        synchronized (this) {
            str = this.f56243j;
        }
        return str;
    }

    /* renamed from: k */
    private AbstractC15796d m8294k() {
        AbstractC15796d abstractC15796d;
        String str;
        synchronized (f56232m) {
            C15798b m8353a = C15798b.m8353a(this.f56234a.m8583a(), "generatefid.lock");
            AbstractC15796d m8380a = this.f56236c.m8380a();
            abstractC15796d = m8380a;
            if (m8380a.m8365l()) {
                if (this.f56234a.m8576b().equals("CHIME_ANDROID_SDK") || this.f56234a.m8571f()) {
                    if (m8380a.mo8375b() == C15794c.EnumC15795a.ATTEMPT_MIGRATION) {
                        String m8384b = this.f56238e.m8384b();
                        str = m8384b;
                        if (TextUtils.isEmpty(m8384b)) {
                            str = C15828m.m8275a();
                        }
                        abstractC15796d = this.f56236c.m8379a(m8380a.mo8369h().mo8359a(str).mo8360a(C15794c.EnumC15795a.UNREGISTERED).mo8362a());
                    }
                }
                str = C15828m.m8275a();
                abstractC15796d = this.f56236c.m8379a(m8380a.mo8369h().mo8359a(str).mo8360a(C15794c.EnumC15795a.UNREGISTERED).mo8362a());
            }
            if (m8353a != null) {
                m8353a.m8354a();
            }
        }
        return abstractC15796d;
    }

    /* renamed from: l */
    public Void m8293l() throws FirebaseInstallationsException {
        int responseCode;
        m8305a((String) null);
        AbstractC15796d m8292m = m8292m();
        if (m8292m.m8368i()) {
            C15805c c15805c = this.f56235b;
            String m8297h = m8297h();
            String mo8377a = m8292m.mo8377a();
            String m8299f = m8299f();
            String mo8373d = m8292m.mo8373d();
            int i = 0;
            URL m8350a = C15805c.m8350a(String.format("projects/%s/installations/%s", m8299f, mo8377a));
            while (i <= 1) {
                HttpURLConnection m8343a = c15805c.m8343a(m8350a, m8297h);
                try {
                    m8343a.setRequestMethod("DELETE");
                    m8343a.addRequestProperty("Authorization", "FIS_v2 ".concat(String.valueOf(mo8373d)));
                    responseCode = m8343a.getResponseCode();
                } catch (IOException e) {
                } catch (Throwable th) {
                    m8343a.disconnect();
                    throw th;
                }
                if (responseCode == 200 || responseCode == 401 || responseCode == 404) {
                    m8343a.disconnect();
                } else {
                    C15805c.m8344a(m8343a, (String) null, m8297h, m8299f);
                    if (responseCode != 429 && (responseCode < 500 || responseCode >= 600)) {
                        C15805c.m8352a();
                        throw new FirebaseInstallationsException("Bad config while trying to delete FID", FirebaseInstallationsException.EnumC15786a.BAD_CONFIG);
                        break;
                    }
                    i++;
                    m8343a.disconnect();
                }
            }
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.EnumC15786a.UNAVAILABLE);
        }
        m8303b(m8292m.m8364m());
        return null;
    }

    /* renamed from: m */
    private AbstractC15796d m8292m() {
        AbstractC15796d m8380a;
        synchronized (f56232m) {
            C15798b m8353a = C15798b.m8353a(this.f56234a.m8583a(), "generatefid.lock");
            m8380a = this.f56236c.m8380a();
            if (m8353a != null) {
                m8353a.m8354a();
            }
        }
        return m8380a;
    }

    @Override // com.google.firebase.installations.AbstractC15822h
    /* renamed from: b */
    public final AbstractC14185h<String> mo8286b() {
        m8300e();
        String m8295j = m8295j();
        if (m8295j != null) {
            return C14188k.m11464a(m8295j);
        }
        AbstractC14185h<String> m8296i = m8296i();
        this.f56241h.execute(RunnableC15818d.m8290a(this));
        return m8296i;
    }

    @Override // com.google.firebase.installations.AbstractC15822h
    /* renamed from: c */
    public final AbstractC14185h<AbstractC15826l> mo8285c() {
        m8300e();
        C14186i c14186i = new C14186i();
        m8307a(new C15824j(this.f56237d, c14186i));
        AbstractC14185h<AbstractC15826l> m11473a = c14186i.m11473a();
        this.f56241h.execute(RunnableC15819e.m8289a(this, false));
        return m11473a;
    }

    @Override // com.google.firebase.installations.AbstractC15822h
    /* renamed from: d */
    public final AbstractC14185h<Void> mo8284d() {
        return C14188k.m11462a(this.f56241h, CallableC15820f.m8288a(this));
    }
}
