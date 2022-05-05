package p081h.p203i.p325c.p327b0.p328p;

import androidx.annotation.AnyThread;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p081h.p203i.p204a.p224e.p293r.AbstractC9130b;
import p081h.p203i.p204a.p224e.p293r.AbstractC9134d;
import p081h.p203i.p204a.p224e.p293r.AbstractC9137e;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9148k;
@AnyThread
/* renamed from: h.i.c.b0.p.e */
/* loaded from: classes2-dex2jar.jar:h/i/c/b0/p/e.class */
public class C9416e {
    @GuardedBy("ConfigCacheClient.class")

    /* renamed from: d */
    public static final Map<String, C9416e> f21476d = new HashMap();

    /* renamed from: e */
    public static final Executor f21477e = ExecutorC9415d.m15270a();

    /* renamed from: a */
    public final ExecutorService f21478a;

    /* renamed from: b */
    public final C9432o f21479b;
    @Nullable
    @GuardedBy("this")

    /* renamed from: c */
    public AbstractC9143h<C9419f> f21480c = null;

    /* renamed from: h.i.c.b0.p.e$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/b0/p/e$b.class */
    public static class C9418b<TResult> implements AbstractC9137e<TResult>, AbstractC9134d, AbstractC9130b {

        /* renamed from: a */
        public final CountDownLatch f21481a;

        public C9418b() {
            this.f21481a = new CountDownLatch(1);
        }

        @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9130b
        /* renamed from: a */
        public void mo15258a() {
            this.f21481a.countDown();
        }

        @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9134d
        /* renamed from: a */
        public void mo3757a(@NonNull Exception exc) {
            this.f21481a.countDown();
        }

        @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9137e
        /* renamed from: a */
        public void mo3758a(TResult tresult) {
            this.f21481a.countDown();
        }

        /* renamed from: a */
        public boolean m15257a(long j, TimeUnit timeUnit) throws InterruptedException {
            return this.f21481a.await(j, timeUnit);
        }
    }

    public C9416e(ExecutorService executorService, C9432o oVar) {
        this.f21478a = executorService;
        this.f21479b = oVar;
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC9143h m15265a(C9416e eVar, boolean z, C9419f fVar, Void r6) throws Exception {
        if (z) {
            eVar.m15260b(fVar);
        }
        return C9148k.m15999a(fVar);
    }

    /* renamed from: a */
    public static C9416e m15262a(ExecutorService executorService, C9432o oVar) {
        C9416e eVar;
        synchronized (C9416e.class) {
            try {
                String b = oVar.m15187b();
                if (!f21476d.containsKey(b)) {
                    f21476d.put(b, new C9416e(executorService, oVar));
                }
                eVar = f21476d.get(b);
            } catch (Throwable th) {
                throw th;
            }
        }
        return eVar;
    }

    /* renamed from: a */
    public static <TResult> TResult m15267a(AbstractC9143h<TResult> hVar, long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        C9418b bVar = new C9418b();
        hVar.mo16016a(f21477e, (AbstractC9137e) bVar);
        hVar.mo16017a(f21477e, (AbstractC9134d) bVar);
        hVar.mo16019a(f21477e, (AbstractC9130b) bVar);
        if (!bVar.m15257a(j, timeUnit)) {
            throw new TimeoutException("Task await timed out.");
        } else if (hVar.mo16009e()) {
            return hVar.mo16014b();
        } else {
            throw new ExecutionException(hVar.mo16030a());
        }
    }

    /* renamed from: a */
    public AbstractC9143h<C9419f> m15264a(C9419f fVar) {
        return m15263a(fVar, true);
    }

    /* renamed from: a */
    public AbstractC9143h<C9419f> m15263a(C9419f fVar, boolean z) {
        return C9148k.m15997a(this.f21478a, CallableC9412a.m15273a(this, fVar)).mo16015a(this.f21478a, C9413b.m15272a(this, z, fVar));
    }

    @Nullable
    @VisibleForTesting
    /* renamed from: a */
    public C9419f m15268a(long j) {
        synchronized (this) {
            if (this.f21480c == null || !this.f21480c.mo16009e()) {
                try {
                    return (C9419f) m15267a(m15261b(), j, TimeUnit.SECONDS);
                } catch (InterruptedException | ExecutionException | TimeoutException e) {
                    return null;
                }
            } else {
                return this.f21480c.mo16014b();
            }
        }
    }

    /* renamed from: a */
    public void m15269a() {
        synchronized (this) {
            this.f21480c = C9148k.m15999a((Object) null);
        }
        this.f21479b.m15190a();
    }

    /* renamed from: b */
    public AbstractC9143h<C9419f> m15261b() {
        AbstractC9143h<C9419f> hVar;
        synchronized (this) {
            if (this.f21480c == null || (this.f21480c.mo16010d() && !this.f21480c.mo16009e())) {
                ExecutorService executorService = this.f21478a;
                C9432o oVar = this.f21479b;
                oVar.getClass();
                this.f21480c = C9148k.m15997a(executorService, CallableC9414c.m15271a(oVar));
            }
            hVar = this.f21480c;
        }
        return hVar;
    }

    /* renamed from: b */
    public final void m15260b(C9419f fVar) {
        synchronized (this) {
            this.f21480c = C9148k.m15999a(fVar);
        }
    }

    @Nullable
    /* renamed from: c */
    public C9419f m15259c() {
        return m15268a(5L);
    }
}
