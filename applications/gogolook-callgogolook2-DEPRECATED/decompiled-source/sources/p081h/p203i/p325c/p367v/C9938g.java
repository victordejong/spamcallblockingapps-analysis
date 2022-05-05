package p081h.p203i.p325c.p367v;

import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9145i;
import p081h.p203i.p204a.p224e.p293r.C9148k;
import p081h.p203i.p325c.C9435c;
import p081h.p203i.p325c.p326a0.AbstractC9393i;
import p081h.p203i.p325c.p363s.AbstractC9861d;
import p081h.p203i.p325c.p366u.AbstractC9929a;
import p081h.p203i.p325c.p367v.C9942i;
import p081h.p203i.p325c.p367v.p368q.AbstractC9958d;
import p081h.p203i.p325c.p367v.p368q.C9955b;
import p081h.p203i.p325c.p367v.p368q.C9956c;
import p081h.p203i.p325c.p367v.p369r.AbstractC9967d;
import p081h.p203i.p325c.p367v.p369r.AbstractC9971f;
import p081h.p203i.p325c.p367v.p369r.C9966c;
/* renamed from: h.i.c.v.g */
/* loaded from: classes2-dex2jar.jar:h/i/c/v/g.class */
public class C9938g implements AbstractC9941h {

    /* renamed from: l */
    public static final Object f22482l = new Object();

    /* renamed from: m */
    public static final ThreadFactory f22483m = new ThreadFactoryC9939a();

    /* renamed from: a */
    public final C9435c f22484a;

    /* renamed from: b */
    public final C9966c f22485b;

    /* renamed from: c */
    public final C9956c f22486c;

    /* renamed from: d */
    public final C9951p f22487d;

    /* renamed from: e */
    public final C9955b f22488e;

    /* renamed from: f */
    public final C9949n f22489f;

    /* renamed from: g */
    public final Object f22490g;

    /* renamed from: h */
    public final ExecutorService f22491h;

    /* renamed from: i */
    public final ExecutorService f22492i;
    @GuardedBy("this")

    /* renamed from: j */
    public String f22493j;
    @GuardedBy("lock")

    /* renamed from: k */
    public final List<AbstractC9950o> f22494k;

    /* renamed from: h.i.c.v.g$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/v/g$a.class */
    public class ThreadFactoryC9939a implements ThreadFactory {

        /* renamed from: a */
        public final AtomicInteger f22495a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(this.f22495a.getAndIncrement())));
        }
    }

    /* renamed from: h.i.c.v.g$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/v/g$b.class */
    public static /* synthetic */ class C9940b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f22496a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f22497b = new int[AbstractC9971f.EnumC9973b.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x004a -> B:19:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004e -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0052 -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0056 -> B:21:0x003e). Please submit an issue!!! */
        static {
            try {
                f22497b[AbstractC9971f.EnumC9973b.OK.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f22497b[AbstractC9971f.EnumC9973b.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f22497b[AbstractC9971f.EnumC9973b.AUTH_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            f22496a = new int[AbstractC9967d.EnumC9969b.values().length];
            try {
                f22496a[AbstractC9967d.EnumC9969b.OK.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f22496a[AbstractC9967d.EnumC9969b.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public C9938g(C9435c cVar, @NonNull AbstractC9929a<AbstractC9393i> aVar, @NonNull AbstractC9929a<AbstractC9861d> aVar2) {
        this(new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), f22483m), cVar, new C9966c(cVar.m15173b(), aVar, aVar2), new C9956c(cVar), C9951p.m13876d(), new C9955b(cVar), new C9949n());
    }

    public C9938g(ExecutorService executorService, C9435c cVar, C9966c cVar2, C9956c cVar3, C9951p pVar, C9955b bVar, C9949n nVar) {
        this.f22490g = new Object();
        this.f22494k = new ArrayList();
        this.f22484a = cVar;
        this.f22485b = cVar2;
        this.f22486c = cVar3;
        this.f22487d = pVar;
        this.f22488e = bVar;
        this.f22489f = nVar;
        this.f22491h = executorService;
        this.f22492i = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), f22483m);
    }

    @NonNull
    /* renamed from: a */
    public static C9938g m13924a(@NonNull C9435c cVar) {
        C7021t.m21285a(cVar != null, "Null is not a valid value of FirebaseApp.");
        return (C9938g) cVar.m15176a(AbstractC9941h.class);
    }

    @Override // p081h.p203i.p325c.p367v.AbstractC9941h
    @NonNull
    /* renamed from: a */
    public AbstractC9143h<Void> mo13899a() {
        return C9148k.m15997a(this.f22491h, CallableC9936e.m13926a(this));
    }

    @Override // p081h.p203i.p325c.p367v.AbstractC9941h
    @NonNull
    /* renamed from: a */
    public AbstractC9143h<AbstractC9947m> mo13898a(boolean z) {
        m13900k();
        AbstractC9143h<AbstractC9947m> b = m13917b();
        this.f22491h.execute(RunnableC9935d.m13927a(this, z));
        return b;
    }

    /* renamed from: a */
    public final AbstractC9958d m13920a(@NonNull AbstractC9958d dVar) throws C9942i {
        AbstractC9971f b = this.f22485b.m13820b(m13907e(), dVar.mo13857c(), m13901j(), dVar.mo13855e());
        int i = C9940b.f22497b[b.mo13797a().ordinal()];
        if (i == 1) {
            return dVar.m13861a(b.mo13796b(), b.mo13795c(), this.f22487d.m13879b());
        }
        if (i == 2) {
            return dVar.m13862a("BAD CONFIG");
        }
        if (i == 3) {
            m13918a((String) null);
            return dVar.m13845o();
        }
        throw new C9942i("Firebase Installations Service is unavailable. Please try again later.", C9942i.EnumC9943a.UNAVAILABLE);
    }

    /* renamed from: a */
    public final void m13921a(AbstractC9950o oVar) {
        synchronized (this.f22490g) {
            this.f22494k.add(oVar);
        }
    }

    /* renamed from: a */
    public final void m13919a(Exception exc) {
        synchronized (this.f22490g) {
            Iterator<AbstractC9950o> it = this.f22494k.iterator();
            while (it.hasNext()) {
                if (it.next().mo13884a(exc)) {
                    it.remove();
                }
            }
        }
    }

    /* renamed from: a */
    public final void m13918a(String str) {
        synchronized (this) {
            this.f22493j = str;
        }
    }

    /* renamed from: b */
    public final AbstractC9143h<AbstractC9947m> m13917b() {
        C9145i iVar = new C9145i();
        m13921a(new C9945k(this.f22487d, iVar));
        return iVar.m16008a();
    }

    /* renamed from: b */
    public final void m13914b(AbstractC9958d dVar) {
        synchronized (f22482l) {
            C9933b a = C9933b.m13929a(this.f22484a.m15173b(), "generatefid.lock");
            this.f22486c.m13865a(dVar);
            if (a != null) {
                a.m13930a();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0064  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m13913b(boolean r6) {
        /*
            r5 = this;
            r0 = r5
            h.i.c.v.q.d r0 = r0.m13903h()
            r7 = r0
            r0 = r7
            boolean r0 = r0.m13852h()     // Catch: i -> 0x0082
            if (r0 != 0) goto L_0x0032
            r0 = r7
            boolean r0 = r0.m13849k()     // Catch: i -> 0x0082
            if (r0 == 0) goto L_0x0016
            goto L_0x0032
        L_0x0016:
            r0 = r6
            if (r0 != 0) goto L_0x0029
            r0 = r5
            h.i.c.v.p r0 = r0.f22487d     // Catch: i -> 0x0082
            r1 = r7
            boolean r0 = r0.m13882a(r1)     // Catch: i -> 0x0082
            if (r0 == 0) goto L_0x0028
            goto L_0x0029
        L_0x0028:
            return
        L_0x0029:
            r0 = r5
            r1 = r7
            h.i.c.v.q.d r0 = r0.m13920a(r1)     // Catch: i -> 0x0082
            r7 = r0
            goto L_0x0038
        L_0x0032:
            r0 = r5
            r1 = r7
            h.i.c.v.q.d r0 = r0.m13908d(r1)     // Catch: i -> 0x0082
            r7 = r0
        L_0x0038:
            r0 = r5
            r1 = r7
            r0.m13914b(r1)
            r0 = r7
            boolean r0 = r0.m13850j()
            if (r0 == 0) goto L_0x004c
            r0 = r5
            r1 = r7
            java.lang.String r1 = r1.mo13857c()
            r0.m13918a(r1)
        L_0x004c:
            r0 = r7
            boolean r0 = r0.m13852h()
            if (r0 == 0) goto L_0x0064
            r0 = r5
            h.i.c.v.i r1 = new h.i.c.v.i
            r2 = r1
            h.i.c.v.i$a r3 = p081h.p203i.p325c.p367v.C9942i.EnumC9943a.BAD_CONFIG
            r2.<init>(r3)
            r0.m13919a(r1)
            goto L_0x0081
        L_0x0064:
            r0 = r7
            boolean r0 = r0.m13851i()
            if (r0 == 0) goto L_0x007c
            r0 = r5
            java.io.IOException r1 = new java.io.IOException
            r2 = r1
            java.lang.String r3 = "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."
            r2.<init>(r3)
            r0.m13919a(r1)
            goto L_0x0081
        L_0x007c:
            r0 = r5
            r1 = r7
            r0.m13906e(r1)
        L_0x0081:
            return
        L_0x0082:
            r7 = move-exception
            r0 = r5
            r1 = r7
            r0.m13919a(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p325c.p367v.C9938g.m13913b(boolean):void");
    }

    /* renamed from: c */
    public final AbstractC9143h<String> m13912c() {
        C9145i iVar = new C9145i();
        m13921a(new C9946l(iVar));
        return iVar.m16008a();
    }

    /* renamed from: c */
    public final String m13911c(AbstractC9958d dVar) {
        if ((!this.f22484a.m15170c().equals("CHIME_ANDROID_SDK") && !this.f22484a.m15165h()) || !dVar.m13848l()) {
            return this.f22489f.m13888a();
        }
        String a = this.f22488e.m13875a();
        String str = a;
        if (TextUtils.isEmpty(a)) {
            str = this.f22489f.m13888a();
        }
        return str;
    }

    /* renamed from: c */
    public final void m13910c(boolean z) {
        AbstractC9958d i = m13902i();
        AbstractC9958d dVar = i;
        if (z) {
            dVar = i.m13846n();
        }
        m13906e(dVar);
        this.f22492i.execute(RunnableC9937f.m13925a(this, z));
    }

    /* renamed from: d */
    public final AbstractC9958d m13908d(AbstractC9958d dVar) throws C9942i {
        AbstractC9967d a = this.f22485b.m13829a(m13907e(), dVar.mo13857c(), m13901j(), m13905f(), (dVar.mo13857c() == null || dVar.mo13857c().length() != 11) ? null : this.f22488e.m13867d());
        int i = C9940b.f22496a[a.mo13812d().ordinal()];
        if (i == 1) {
            return dVar.m13860a(a.mo13814b(), a.mo13813c(), this.f22487d.m13879b(), a.mo13815a().mo13796b(), a.mo13815a().mo13795c());
        }
        if (i == 2) {
            return dVar.m13862a("BAD CONFIG");
        }
        throw new C9942i("Firebase Installations Service is unavailable. Please try again later.", C9942i.EnumC9943a.UNAVAILABLE);
    }

    /* renamed from: d */
    public final Void m13909d() throws C9942i {
        m13918a((String) null);
        AbstractC9958d h = m13903h();
        if (h.m13850j()) {
            this.f22485b.m13830a(m13907e(), h.mo13857c(), m13901j(), h.mo13855e());
        }
        m13914b(h.m13845o());
        return null;
    }

    @Nullable
    /* renamed from: e */
    public String m13907e() {
        return this.f22484a.m15169d().m15151a();
    }

    /* renamed from: e */
    public final void m13906e(AbstractC9958d dVar) {
        synchronized (this.f22490g) {
            Iterator<AbstractC9950o> it = this.f22494k.iterator();
            while (it.hasNext()) {
                if (it.next().mo13885a(dVar)) {
                    it.remove();
                }
            }
        }
    }

    @VisibleForTesting
    /* renamed from: f */
    public String m13905f() {
        return this.f22484a.m15169d().m15149b();
    }

    /* renamed from: g */
    public final String m13904g() {
        String str;
        synchronized (this) {
            str = this.f22493j;
        }
        return str;
    }

    @Override // p081h.p203i.p325c.p367v.AbstractC9941h
    @NonNull
    public AbstractC9143h<String> getId() {
        m13900k();
        String g = m13904g();
        if (g != null) {
            return C9148k.m15999a(g);
        }
        AbstractC9143h<String> c = m13912c();
        this.f22491h.execute(RunnableC9934c.m13928a(this));
        return c;
    }

    /* renamed from: h */
    public final AbstractC9958d m13903h() {
        AbstractC9958d b;
        synchronized (f22482l) {
            C9933b a = C9933b.m13929a(this.f22484a.m15173b(), "generatefid.lock");
            b = this.f22486c.m13864b();
            if (a != null) {
                a.m13930a();
            }
        }
        return b;
    }

    /* renamed from: i */
    public final AbstractC9958d m13902i() {
        AbstractC9958d dVar;
        synchronized (f22482l) {
            C9933b a = C9933b.m13929a(this.f22484a.m15173b(), "generatefid.lock");
            AbstractC9958d b = this.f22486c.m13864b();
            dVar = b;
            if (b.m13851i()) {
                String c = m13911c(b);
                C9956c cVar = this.f22486c;
                dVar = b.m13858b(c);
                cVar.m13865a(dVar);
            }
            if (a != null) {
                a.m13930a();
            }
        }
        return dVar;
    }

    @Nullable
    /* renamed from: j */
    public String m13901j() {
        return this.f22484a.m15169d().m15147d();
    }

    /* renamed from: k */
    public final void m13900k() {
        C7021t.m21287a(m13905f(), (Object) "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        C7021t.m21287a(m13901j(), (Object) "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        C7021t.m21287a(m13907e(), (Object) "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        C7021t.m21285a(C9951p.m13878b(m13905f()), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        C7021t.m21285a(C9951p.m13880a(m13907e()), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }
}
