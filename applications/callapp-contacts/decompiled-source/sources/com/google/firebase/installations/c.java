package com.google.firebase.installations;

import android.text.TextUtils;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.tasks.h;
import com.google.android.gms.tasks.k;
import com.google.firebase.b;
import com.google.firebase.f.i;
import com.google.firebase.installations.FirebaseInstallationsException;
import com.google.firebase.installations.a.c;
import com.google.firebase.installations.b.d;
import com.google.firebase.installations.b.f;
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
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/c.class */
public final class c implements h {
    private static final Object m = new Object();
    private static final ThreadFactory n = new ThreadFactory() { // from class: com.google.firebase.installations.c.1

        /* renamed from: a  reason: collision with root package name */
        private final AtomicInteger f32422a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(this.f32422a.getAndIncrement())));
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final b f32418a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.firebase.installations.b.c f32419b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.firebase.installations.a.c f32420c;

    /* renamed from: d  reason: collision with root package name */
    private final o f32421d;
    private final com.google.firebase.installations.a.b e;
    private final m f;
    private final Object g;
    private final ExecutorService h;
    private final ExecutorService i;
    private String j;
    private Set<Object> k;
    private final List<n> l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.installations.c$2  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/c$2.class */
    public static final /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f32423a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f32424b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x004a -> B:19:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004e -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0052 -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0056 -> B:21:0x003e). Please submit an issue!!! */
        static {
            int[] iArr = new int[f.b.values().length];
            f32424b = iArr;
            try {
                iArr[f.b.OK.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f32424b[f.b.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f32424b[f.b.AUTH_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[d.b.values().length];
            f32423a = iArr2;
            try {
                iArr2[d.b.OK.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f32423a[d.b.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(b bVar, com.google.firebase.d.b<i> bVar2, com.google.firebase.d.b<com.google.firebase.c.f> bVar3) {
        this(new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), n), bVar, new com.google.firebase.installations.b.c(bVar.a(), bVar2, bVar3), new com.google.firebase.installations.a.c(bVar), o.a(), new com.google.firebase.installations.a.b(bVar), new m());
    }

    c(ExecutorService executorService, b bVar, com.google.firebase.installations.b.c cVar, com.google.firebase.installations.a.c cVar2, o oVar, com.google.firebase.installations.a.b bVar2, m mVar) {
        this.g = new Object();
        this.k = new HashSet();
        this.l = new ArrayList();
        this.f32418a = bVar;
        this.f32419b = cVar;
        this.f32420c = cVar2;
        this.f32421d = oVar;
        this.e = bVar2;
        this.f = mVar;
        this.h = executorService;
        this.i = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), n);
    }

    public static c a() {
        return a(b.d());
    }

    public static c a(b bVar) {
        o.b(bVar != null, "Null is not a valid value of FirebaseApp.");
        return (c) bVar.a(h.class);
    }

    private void a(com.google.firebase.installations.a.d dVar) {
        synchronized (this.g) {
            Iterator<n> it2 = this.l.iterator();
            while (it2.hasNext()) {
                if (it2.next().a(dVar)) {
                    it2.remove();
                }
            }
        }
    }

    private void a(com.google.firebase.installations.a.d dVar, com.google.firebase.installations.a.d dVar2) {
        synchronized (this) {
            if (this.k.size() != 0 && !dVar.a().equals(dVar2.a())) {
                Iterator<Object> it2 = this.k.iterator();
                while (it2.hasNext()) {
                    it2.next();
                    dVar2.a();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01c2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void a(com.google.firebase.installations.c r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.installations.c.a(com.google.firebase.installations.c, boolean):void");
    }

    private void a(n nVar) {
        synchronized (this.g) {
            this.l.add(nVar);
        }
    }

    private void a(Exception exc) {
        synchronized (this.g) {
            Iterator<n> it2 = this.l.iterator();
            while (it2.hasNext()) {
                if (it2.next().a(exc)) {
                    it2.remove();
                }
            }
        }
    }

    private void a(String str) {
        synchronized (this) {
            this.j = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(boolean z) {
        com.google.firebase.installations.a.d k = k();
        com.google.firebase.installations.a.d dVar = k;
        if (z) {
            dVar = k.h().b((String) null).a();
        }
        a(dVar);
        this.i.execute(g.a(this, z));
    }

    private void b(com.google.firebase.installations.a.d dVar) {
        synchronized (m) {
            b a2 = b.a(this.f32418a.a(), "generatefid.lock");
            this.f32420c.a(dVar);
            if (a2 != null) {
                a2.a();
            }
        }
    }

    private void e() {
        o.a(g(), (Object) "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        o.a(f(), (Object) "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        o.a(h(), (Object) "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        o.b(o.a(g()), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        o.b(o.b(h()), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    private String f() {
        return this.f32418a.c().f32317d;
    }

    private String g() {
        return this.f32418a.c().f32315b;
    }

    private String h() {
        return this.f32418a.c().f32314a;
    }

    private h<String> i() {
        com.google.android.gms.tasks.i iVar = new com.google.android.gms.tasks.i();
        a(new k(iVar));
        return iVar.a();
    }

    private String j() {
        String str;
        synchronized (this) {
            str = this.j;
        }
        return str;
    }

    private com.google.firebase.installations.a.d k() {
        com.google.firebase.installations.a.d dVar;
        String str;
        synchronized (m) {
            b a2 = b.a(this.f32418a.a(), "generatefid.lock");
            com.google.firebase.installations.a.d a3 = this.f32420c.a();
            dVar = a3;
            if (a3.l()) {
                if (this.f32418a.b().equals("CHIME_ANDROID_SDK") || this.f32418a.f()) {
                    if (a3.b() == c.a.ATTEMPT_MIGRATION) {
                        String b2 = this.e.b();
                        str = b2;
                        if (TextUtils.isEmpty(b2)) {
                            str = m.a();
                        }
                        dVar = this.f32420c.a(a3.h().a(str).a(c.a.UNREGISTERED).a());
                    }
                }
                str = m.a();
                dVar = this.f32420c.a(a3.h().a(str).a(c.a.UNREGISTERED).a());
            }
            if (a2 != null) {
                a2.a();
            }
        }
        return dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Void l() throws FirebaseInstallationsException {
        int responseCode;
        a((String) null);
        com.google.firebase.installations.a.d m2 = m();
        if (m2.i()) {
            com.google.firebase.installations.b.c cVar = this.f32419b;
            String h = h();
            String a2 = m2.a();
            String f = f();
            String d2 = m2.d();
            int i = 0;
            URL a3 = com.google.firebase.installations.b.c.a(String.format("projects/%s/installations/%s", f, a2));
            while (i <= 1) {
                HttpURLConnection a4 = cVar.a(a3, h);
                try {
                    a4.setRequestMethod("DELETE");
                    a4.addRequestProperty("Authorization", "FIS_v2 ".concat(String.valueOf(d2)));
                    responseCode = a4.getResponseCode();
                } catch (IOException e) {
                } catch (Throwable th) {
                    a4.disconnect();
                    throw th;
                }
                if (responseCode == 200 || responseCode == 401 || responseCode == 404) {
                    a4.disconnect();
                } else {
                    com.google.firebase.installations.b.c.a(a4, (String) null, h, f);
                    if (responseCode != 429 && (responseCode < 500 || responseCode >= 600)) {
                        com.google.firebase.installations.b.c.a();
                        throw new FirebaseInstallationsException("Bad config while trying to delete FID", FirebaseInstallationsException.a.BAD_CONFIG);
                        break;
                    }
                    i++;
                    a4.disconnect();
                }
            }
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.a.UNAVAILABLE);
        }
        b(m2.m());
        return null;
    }

    private com.google.firebase.installations.a.d m() {
        com.google.firebase.installations.a.d a2;
        synchronized (m) {
            b a3 = b.a(this.f32418a.a(), "generatefid.lock");
            a2 = this.f32420c.a();
            if (a3 != null) {
                a3.a();
            }
        }
        return a2;
    }

    @Override // com.google.firebase.installations.h
    public final h<String> b() {
        e();
        String j = j();
        if (j != null) {
            return k.a(j);
        }
        h<String> i = i();
        this.h.execute(d.a(this));
        return i;
    }

    @Override // com.google.firebase.installations.h
    public final h<l> c() {
        e();
        com.google.android.gms.tasks.i iVar = new com.google.android.gms.tasks.i();
        a(new j(this.f32421d, iVar));
        h<l> a2 = iVar.a();
        this.h.execute(e.a(this, false));
        return a2;
    }

    @Override // com.google.firebase.installations.h
    public final h<Void> d() {
        return k.a(this.h, f.a(this));
    }
}
