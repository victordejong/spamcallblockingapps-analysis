package com.google.firebase.remoteconfig.internal;

import android.util.Log;
import com.google.android.gms.tasks.AbstractC2389b;
import com.google.android.gms.tasks.AbstractC2392d;
import com.google.android.gms.tasks.AbstractC2394e;
import com.google.android.gms.tasks.AbstractC2397g;
import com.google.android.gms.tasks.C2401j;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: com.google.firebase.remoteconfig.internal.e */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/internal/e.class */
public class C2514e {

    /* renamed from: d */
    private static final Map<String, C2514e> f10794d = new HashMap();

    /* renamed from: e */
    private static final Executor f10795e = ExecutorC2513d.m3276b();

    /* renamed from: a */
    private final ExecutorService f10796a;

    /* renamed from: b */
    private final o f10797b;

    /* renamed from: c */
    private AbstractC2397g<C2517f> f10798c = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.firebase.remoteconfig.internal.e$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/internal/e$b.class */
    public static class C2516b<TResult> implements AbstractC2394e<TResult>, AbstractC2392d, AbstractC2389b {

        /* renamed from: a */
        private final CountDownLatch f10799a;

        private C2516b() {
            this.f10799a = new CountDownLatch(1);
        }

        @Override // com.google.android.gms.tasks.AbstractC2394e
        /* renamed from: a */
        public void mo3264a(TResult tresult) {
            this.f10799a.countDown();
        }

        @Override // com.google.android.gms.tasks.AbstractC2392d
        /* renamed from: b */
        public void mo3263b(Exception exc) {
            this.f10799a.countDown();
        }

        @Override // com.google.android.gms.tasks.AbstractC2389b
        /* renamed from: c */
        public void mo3262c() {
            this.f10799a.countDown();
        }

        /* renamed from: d */
        public boolean m3261d(long j, TimeUnit timeUnit) {
            return this.f10799a.await(j, timeUnit);
        }
    }

    private C2514e(ExecutorService executorService, o oVar) {
        this.f10796a = executorService;
        this.f10797b = oVar;
    }

    /* renamed from: a */
    private static <TResult> TResult m3275a(AbstractC2397g<TResult> gVar, long j, TimeUnit timeUnit) {
        C2516b bVar = new C2516b();
        Executor executor = f10795e;
        gVar.m3782e(executor, bVar);
        gVar.m3783d(executor, bVar);
        gVar.m3786a(executor, bVar);
        if (!bVar.m3261d(j, timeUnit)) {
            throw new TimeoutException("Task await timed out.");
        } else if (gVar.m3772o()) {
            return gVar.m3776k();
        } else {
            throw new ExecutionException(gVar.m3777j());
        }
    }

    /* renamed from: f */
    public static C2514e m3270f(ExecutorService executorService, o oVar) {
        C2514e eVar;
        synchronized (C2514e.class) {
            try {
                String b = oVar.b();
                Map<String, C2514e> map = f10794d;
                if (!map.containsKey(b)) {
                    map.put(b, new C2514e(executorService, oVar));
                }
                eVar = map.get(b);
            } catch (Throwable th) {
                throw th;
            }
        }
        return eVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static /* synthetic */ AbstractC2397g m3268h(C2514e eVar, boolean z, C2517f fVar, Void r6) {
        if (z) {
            eVar.m3265k(fVar);
        }
        return C2401j.m3760e(fVar);
    }

    /* renamed from: k */
    private void m3265k(C2517f fVar) {
        synchronized (this) {
            this.f10798c = C2401j.m3760e(fVar);
        }
    }

    /* renamed from: b */
    public void m3274b() {
        synchronized (this) {
            this.f10798c = C2401j.m3760e(null);
        }
        this.f10797b.a();
    }

    /* renamed from: c */
    public AbstractC2397g<C2517f> m3273c() {
        AbstractC2397g<C2517f> gVar;
        synchronized (this) {
            AbstractC2397g<C2517f> gVar2 = this.f10798c;
            if (gVar2 == null || (gVar2.m3773n() && !this.f10798c.m3772o())) {
                ExecutorService executorService = this.f10796a;
                o oVar = this.f10797b;
                oVar.getClass();
                this.f10798c = C2401j.m3762c(executorService, CallableC2512c.m3277a(oVar));
            }
            gVar = this.f10798c;
        }
        return gVar;
    }

    /* renamed from: d */
    public C2517f m3272d() {
        return m3271e(5L);
    }

    /* renamed from: e */
    C2517f m3271e(long j) {
        synchronized (this) {
            AbstractC2397g<C2517f> gVar = this.f10798c;
            if (gVar == null || !gVar.m3772o()) {
                try {
                    return (C2517f) m3275a(m3273c(), j, TimeUnit.SECONDS);
                } catch (InterruptedException | ExecutionException | TimeoutException e) {
                    Log.d("FirebaseRemoteConfig", "Reading from storage file failed.", e);
                    return null;
                }
            } else {
                return this.f10798c.m3776k();
            }
        }
    }

    /* renamed from: i */
    public AbstractC2397g<C2517f> m3267i(C2517f fVar) {
        return m3266j(fVar, true);
    }

    /* renamed from: j */
    public AbstractC2397g<C2517f> m3266j(C2517f fVar, boolean z) {
        return C2401j.m3762c(this.f10796a, CallableC2510a.m3279a(this, fVar)).m3770q(this.f10796a, C2511b.m3278b(this, z, fVar));
    }
}
