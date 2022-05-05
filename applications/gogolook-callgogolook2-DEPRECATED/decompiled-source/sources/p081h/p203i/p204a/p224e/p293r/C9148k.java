package p081h.p203i.p204a.p224e.p293r;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.r.k */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/r/k.class */
public final class C9148k {

    /* renamed from: h.i.a.e.r.k$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/r/k$a.class */
    public static final class C9149a implements AbstractC9151c {

        /* renamed from: a */
        public final CountDownLatch f20835a;

        public C9149a() {
            this.f20835a = new CountDownLatch(1);
        }

        public /* synthetic */ C9149a(RunnableC9144h0 h0Var) {
            this();
        }

        @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9130b
        /* renamed from: a */
        public final void mo15258a() {
            this.f20835a.countDown();
        }

        @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9134d
        /* renamed from: a */
        public final void mo3757a(@NonNull Exception exc) {
            this.f20835a.countDown();
        }

        @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9137e
        /* renamed from: a */
        public final void mo3758a(Object obj) {
            this.f20835a.countDown();
        }

        /* renamed from: a */
        public final boolean m15992a(long j, TimeUnit timeUnit) throws InterruptedException {
            return this.f20835a.await(j, timeUnit);
        }

        /* renamed from: b */
        public final void m15991b() throws InterruptedException {
            this.f20835a.await();
        }
    }

    /* renamed from: h.i.a.e.r.k$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/r/k$b.class */
    public static final class C9150b implements AbstractC9151c {

        /* renamed from: a */
        public final Object f20836a = new Object();

        /* renamed from: b */
        public final int f20837b;

        /* renamed from: c */
        public final C9135d0<Void> f20838c;
        @GuardedBy("mLock")

        /* renamed from: d */
        public int f20839d;
        @GuardedBy("mLock")

        /* renamed from: e */
        public int f20840e;
        @GuardedBy("mLock")

        /* renamed from: f */
        public int f20841f;
        @GuardedBy("mLock")

        /* renamed from: g */
        public Exception f20842g;
        @GuardedBy("mLock")

        /* renamed from: h */
        public boolean f20843h;

        public C9150b(int i, C9135d0<Void> d0Var) {
            this.f20837b = i;
            this.f20838c = d0Var;
        }

        @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9130b
        /* renamed from: a */
        public final void mo15258a() {
            synchronized (this.f20836a) {
                this.f20841f++;
                this.f20843h = true;
                m15990b();
            }
        }

        @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9134d
        /* renamed from: a */
        public final void mo3757a(@NonNull Exception exc) {
            synchronized (this.f20836a) {
                this.f20840e++;
                this.f20842g = exc;
                m15990b();
            }
        }

        @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9137e
        /* renamed from: a */
        public final void mo3758a(Object obj) {
            synchronized (this.f20836a) {
                this.f20839d++;
                m15990b();
            }
        }

        @GuardedBy("mLock")
        /* renamed from: b */
        public final void m15990b() {
            int i = this.f20839d;
            int i2 = this.f20840e;
            int i3 = this.f20841f;
            int i4 = this.f20837b;
            if (i + i2 + i3 != i4) {
                return;
            }
            if (this.f20842g != null) {
                C9135d0<Void> d0Var = this.f20838c;
                StringBuilder sb = new StringBuilder(54);
                sb.append(i2);
                sb.append(" out of ");
                sb.append(i4);
                sb.append(" underlying tasks failed");
                d0Var.m16045a(new ExecutionException(sb.toString(), this.f20842g));
            } else if (this.f20843h) {
                this.f20838c.m16041f();
            } else {
                this.f20838c.m16044a((C9135d0<Void>) null);
            }
        }
    }

    /* renamed from: h.i.a.e.r.k$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/r/k$c.class */
    public interface AbstractC9151c extends AbstractC9130b, AbstractC9134d, AbstractC9137e<Object> {
    }

    @NonNull
    /* renamed from: a */
    public static <TResult> AbstractC9143h<TResult> m16000a(@NonNull Exception exc) {
        C9135d0 d0Var = new C9135d0();
        d0Var.m16045a(exc);
        return d0Var;
    }

    @NonNull
    /* renamed from: a */
    public static <TResult> AbstractC9143h<TResult> m15999a(TResult tresult) {
        C9135d0 d0Var = new C9135d0();
        d0Var.m16044a((C9135d0) tresult);
        return d0Var;
    }

    @NonNull
    /* renamed from: a */
    public static AbstractC9143h<Void> m15998a(@Nullable Collection<? extends AbstractC9143h<?>> collection) {
        if (collection == null || collection.isEmpty()) {
            return m15999a((Object) null);
        }
        Iterator<? extends AbstractC9143h<?>> it = collection.iterator();
        while (it.hasNext()) {
            if (((AbstractC9143h) it.next()) == null) {
                throw new NullPointerException("null tasks are not accepted");
            }
        }
        C9135d0 d0Var = new C9135d0();
        C9150b bVar = new C9150b(collection.size(), d0Var);
        Iterator<? extends AbstractC9143h<?>> it2 = collection.iterator();
        while (it2.hasNext()) {
            m16001a((AbstractC9143h) it2.next(), bVar);
        }
        return d0Var;
    }

    @NonNull
    /* renamed from: a */
    public static <TResult> AbstractC9143h<TResult> m15997a(@NonNull Executor executor, @NonNull Callable<TResult> callable) {
        C7021t.m21289a(executor, "Executor must not be null");
        C7021t.m21289a(callable, "Callback must not be null");
        C9135d0 d0Var = new C9135d0();
        executor.execute(new RunnableC9144h0(d0Var, callable));
        return d0Var;
    }

    @NonNull
    /* renamed from: a */
    public static AbstractC9143h<Void> m15996a(@Nullable AbstractC9143h<?>... hVarArr) {
        return (hVarArr == null || hVarArr.length == 0) ? m15999a((Object) null) : m15998a((Collection<? extends AbstractC9143h<?>>) Arrays.asList(hVarArr));
    }

    /* renamed from: a */
    public static <TResult> TResult m16003a(@NonNull AbstractC9143h<TResult> hVar) throws ExecutionException, InterruptedException {
        C7021t.m21294a();
        C7021t.m21289a(hVar, "Task must not be null");
        if (hVar.mo16010d()) {
            return (TResult) m15995b(hVar);
        }
        C9149a aVar = new C9149a(null);
        m16001a((AbstractC9143h<?>) hVar, (AbstractC9151c) aVar);
        aVar.m15991b();
        return (TResult) m15995b(hVar);
    }

    /* renamed from: a */
    public static <TResult> TResult m16002a(@NonNull AbstractC9143h<TResult> hVar, long j, @NonNull TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        C7021t.m21294a();
        C7021t.m21289a(hVar, "Task must not be null");
        C7021t.m21289a(timeUnit, "TimeUnit must not be null");
        if (hVar.mo16010d()) {
            return (TResult) m15995b(hVar);
        }
        C9149a aVar = new C9149a(null);
        m16001a((AbstractC9143h<?>) hVar, (AbstractC9151c) aVar);
        if (aVar.m15992a(j, timeUnit)) {
            return (TResult) m15995b(hVar);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    /* renamed from: a */
    public static void m16001a(AbstractC9143h<?> hVar, AbstractC9151c cVar) {
        hVar.mo16016a(C9146j.f20833b, (AbstractC9137e<? super Object>) cVar);
        hVar.mo16017a(C9146j.f20833b, (AbstractC9134d) cVar);
        hVar.mo16019a(C9146j.f20833b, (AbstractC9130b) cVar);
    }

    @NonNull
    /* renamed from: b */
    public static AbstractC9143h<List<AbstractC9143h<?>>> m15994b(@Nullable Collection<? extends AbstractC9143h<?>> collection) {
        return (collection == null || collection.isEmpty()) ? m15999a(Collections.emptyList()) : m15998a(collection).mo16013b(new C9152l(collection));
    }

    @NonNull
    /* renamed from: b */
    public static AbstractC9143h<List<AbstractC9143h<?>>> m15993b(@Nullable AbstractC9143h<?>... hVarArr) {
        return (hVarArr == null || hVarArr.length == 0) ? m15999a(Collections.emptyList()) : m15994b(Arrays.asList(hVarArr));
    }

    /* renamed from: b */
    public static <TResult> TResult m15995b(@NonNull AbstractC9143h<TResult> hVar) throws ExecutionException {
        if (hVar.mo16009e()) {
            return hVar.mo16014b();
        }
        if (hVar.mo16011c()) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(hVar.mo16030a());
    }
}
